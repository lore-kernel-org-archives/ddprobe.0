Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3315D7462
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734993954; cv=none; b=HUSh2MNAZLF09XJXm5a1+Apjrg/KVVFFzagMgI2xxDJJxMVQFx4jzGbNpZkxz850hnGZPuGYVKixjgM/q+lAcUp5yUA5OTtlGruhUpPoDcExcI99RROoc+wWO6MTIaKBmZOxZiV2m/B16YQYEDAFkapGVoQDdNipWBd82R/yG/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734993954; c=relaxed/simple;
	bh=WAQse3e27zLZMFZew0VEp1/EyVtsDMjxMdYtW9Z/lgU=;
	h=To:Subject:From:Message-Id:Date; b=SC8hRan56tiHa08MLIT1u77I8yXrOvGCtFe0YDed4ApagUQcYSkOXrWLOHR18WSm0j/zzYsI/Zllx2JmyxVBYmE2RLZWdqgN82LBPmWABIWKL+mv5FA+Oa6SgGmyWaT3qqDjrS20sna5JkD3aSZG/i6ZIvJtfQn65PXB5pwsPeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3s0mgvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3s0mgvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4F8C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734993953;
	bh=WAQse3e27zLZMFZew0VEp1/EyVtsDMjxMdYtW9Z/lgU=;
	h=To:Subject:From:Date:From;
	b=r3s0mgvBLg7HakEtkEsAeQ+rrqNnpPLFDr4YOpejIwUsAQnxQ1WReJt9vD/WRHdq0
	 Qn4d0bAg60akp2jSxSlLOzm5yszZscjJTyw9Noo3nlZcgPM9iGuaftzX1tqRppmFQm
	 IzXOsDUVtkZWbbv0wehaUaVqvqbSa86wCOsoQHqBeN5Eqr7p/2diC0jHKrwaBKGNJq
	 nHvAIZ/l1obHurJ/YQ9L2odbiRRLhEwZMopbXPXWQbZS9PIxfyQaHQDRwEl/WNcuTf
	 wF6tzeAXFfaz+8Z5uZPCp9dxmY850G3SbTUiEnupdiNk4VAS6OtcVPBFLq54luE7Tc
	 nECP9m0Mc+FQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C94E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499395361.25221.4668281217121892596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78939d03074adeda608a303ceda37a7c0bcca75b1f2872b387b079e9aa9e71e
Date: Mon, 23 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734993953
