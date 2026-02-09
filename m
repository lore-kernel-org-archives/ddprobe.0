Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35963376483
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770646434; cv=none; b=ZW8Hpw6XReHLKEMczOXv8jBr2Yx3Ij/Sg+gFTxbauOh4hFXIpFv8mP7Yf2Dx/ar27U5QqIUA3z0+ilkgB4d9t86UFNSwzB1I7BcfINyH9iscCyY5aA8Oxey+j73SNhGFS32qUMxPjs1LGsbzavnddGPZDyrgwzYiMqSPR2idE24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770646434; c=relaxed/simple;
	bh=yN1q990z81/cjVftmfzPWFsyth4gAnZ2acJxnkF8bXw=;
	h=To:Subject:From:Message-Id:Date; b=HwZifUqdLU2t8FDiLZBqgzE2Eu7Tm0hU6uC5ItrZHt5yGmtj3q5TQAbZQa1UIkSqNH7jXDPN4MrhuPvNdLf/c4UsProMLIsksw3vLvpxQyT4pjvytvZdXisRq4gVTfeefL7PfZ24scHOgVIrEGxkdah7yP3Kd+TAgYWdCnPBWGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yv7BI374; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yv7BI374"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF626C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770646433;
	bh=yN1q990z81/cjVftmfzPWFsyth4gAnZ2acJxnkF8bXw=;
	h=To:Subject:From:Date:From;
	b=Yv7BI374AQwMTdDcQfMypkFKCQlQx5OcFH+1hFhAWovaxmfkt0TLcqMe8x/6pX0Me
	 NLV1WSQTAkMIU8/DOaCK5XW4LRZ0qLl5gqryHDOARWY02lrWXXQkamF54jjrQjqaiD
	 IcHcgfE/jTVTWqnvu1fNcZiFquAXG3fgBaiL6zakwfYaZ+KZDMSdawneGFj0hvLSU2
	 KsCmUZwZwxPVIldAoZhm+skiYoaNkUSk+YH59VClbSAMXAdmNdMeNwMiv1YXngOKpS
	 blGU0BwsUhQLw2VFPB4yXnP0j9FUHCU/UZqFlxc7jqGUZEqJSeJL2qmA9U7enb9VWg
	 RuC7C0yGcXNWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B10E81BCB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064643364.1410.13115819153791275363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183df86912317608f0dbfd5934d0bbcfa6c5052f3927da3e3768f5bb95f12ab6
Date: Mon, 09 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770646433
