Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2287E319860
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764600774; cv=none; b=YS2m80aGhwTSZZ1Lgrkn8YFwG2oFJ46KBokWGdD2V4oLeTJg//PDBwkYtGE0kZQuZGHHqfgzBdyvP7BrbREuUHNFFP20oFKny0tbab9HiWGr8w3kcrPhKnR+azNNx3+yz6k0xP/OPmb3A+hFOCtATVnk421k3u75KmHJw2Y/9DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764600774; c=relaxed/simple;
	bh=qhaP+A63OzA6JGUCcYmlVCFA/KNnTiZDVmklvy1BymM=;
	h=To:Subject:From:Message-Id:Date; b=W3yRUcSGcrpCjuQWbZtMHryDOvwOvFsrarRpAFtaKMzFyle3sbrZ2/6vVk6pGIgczls5DednRgRBy4NzOD5NsYWAboK/Bffzgu4lUrUiTWcr4UfBrEWcBOtim13XfsOkxsc4/HFpGfGV70YdI77eU7tfu6lTbtBSbolQtP3lv9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJepUWeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJepUWeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5690C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764600773;
	bh=qhaP+A63OzA6JGUCcYmlVCFA/KNnTiZDVmklvy1BymM=;
	h=To:Subject:From:Date:From;
	b=ZJepUWeDC/LFjcLlfRrEnya1sdzIwQmDk/+eKg6FRGGBRDpYY18AE7iESb6WUx2ao
	 hnn6bbiy3tLFH9HXLw9ARG57LQb6v6WNIMLiV0bm0up/lKNC/CPn4ogW4QR4TNuCsk
	 tHcy42SUgWbnd9akhU0tww4qltHVCzmpM6QhhSQHfSLdJm6dqa8DSZH57lsOpqTLhQ
	 +zql+G/rY3gEAbdX66924/KfPGPwzAVHZWtc4bD10o/CxLTRMUYHTvDCK5u00GEWfU
	 M9LOmPreeob9k/YbVsWoIv4QXGHV1gulzhug6lmktLeaS36EtaLFED89ecLnibyrLn
	 6gjUhDo4ykC5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABCD116F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460077359.634.6129085094896531079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc866f3379bd4fc4e5ecfd4895b2c992ca226806648e794735d55c81fe8b4d17
Date: Mon, 01 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764600773
