Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBE01F94C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751076594; cv=none; b=qS+aG5l4Y6b4GTXymD6SoDusxOwSChGGA7rdbE/MheeqXiVMlscernc/wLSIrfuTSJ5pkkoVTFxVlutmC8W8L/9NGC3g613FupvNXdOdFm7FIZN7ywGFjATrujSxtmJkFELv2cVSuTtJBrfUkKb0ANKMtf1EbDHKCypr/RHIe8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751076594; c=relaxed/simple;
	bh=vYY7R22pjwxs8OQqi1FOKbprUcLKtIaDjPdbGAZj01M=;
	h=To:Subject:From:Message-Id:Date; b=tvT/8lVpSkh30kHZ5MxTwEL0Kf563lmCSGQqAfj0nwJykua3nOO3OA+BVO1uj2fra1IbWX4SrN1BuJyBWDJEtl+wyHlVegI09S1QT7MTaWpEHje1YYX2aGEKlDCkfnviSRED70krShtnxh/M1yj3TD8JpJlKJWohocBMgaX/i1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=id953g/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="id953g/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B4C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751076593;
	bh=vYY7R22pjwxs8OQqi1FOKbprUcLKtIaDjPdbGAZj01M=;
	h=To:Subject:From:Date:From;
	b=id953g/cYNteRuGgD7RU3KdF6eDPyoE+crXtsH/mto86DhlWEApZUyPE+Ewp7nX/b
	 myImtfKGAGeEmuINEv2DDMxFa60LMk1tdYeN2oDvz05uXpgPn6hUaDYk7pMV0q7BBC
	 RwEFp2L3Gn0y/0FnK2fOnoyzm1RyIFvIaVFnpcq+h+YCSiEWfADI5Vf0RNQJvEefZm
	 iSMmZJ/MN6zuDTtDxLTuYkcm8oPFztB0omUTCpHg+l6wPptdTS7C0D+2iYGaQzLvd3
	 J6ZE6lcpudvJORfMLZJduvEmmenGt6RwmBgIkR+ErQFbfx/1v7uYEbvGcYgcywL4AG
	 j9ofcpvWoYSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C3C7EE2A
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107659358.14507.8888856135237557761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f61264e48a295dc70c16dba27897c0aa63f3b55c3fce222ef4f70cde980f1c6
Date: Sat, 28 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751076593
