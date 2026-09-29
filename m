Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476543C585E
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790695834; cv=none; b=LPeSogpAlMQcuZRS7njaDWlrehb+saM3KwoNKm0+BvHU/gsTDun/D1V3DHzzOQVQNGsgjbcKPLQCvePHdpX6jTAOMfdy9ieFE4Js6MXHvCtRZ/F1CWjN/CQ2cg4op1GM1QGl8r6Y95pejKj1nDDYGDl0dSrK1OBctIb1zu/aY7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790695834; c=relaxed/simple;
	bh=pl+dZ9BRobT7Ny6Grh3TbMKP987xgkYEKOzOBUVKm+c=;
	h=To:Subject:From:Message-Id:Date; b=TcHovMPvGnvs0m9SIC9EOFYykLraYwr1iwsNzWRzqf7JWPgyN5GgB6jjMZsnwZS9olA3o+OykWMDyHlHeqqEh+MpvGqBqvQKC+VfQxMEohDc17Os1SBXaCZg7v8Ru80rDRgrea0s+Vdi/NUZ1FFoYaeV4F0GD6G3b9JxR9j79+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjOkScTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjOkScTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2B6C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790695833;
	bh=pl+dZ9BRobT7Ny6Grh3TbMKP987xgkYEKOzOBUVKm+c=;
	h=To:Subject:From:Date:From;
	b=hjOkScTl3egVKdNKwBTLJDHm6uOMi7ZwNZS7bnz4u7/d0l4c9ANweDbAHUkxEevru
	 wKOcUboCsJIOvXWDJueg41PboDL8yD0T6xvC78HJjDGbiCb8mkLmgbx4ouTuPGq4DM
	 P631KBbgzG/YIVAy3XNnMPLibAV6pNy2VWDXkW+WlQz4Xm7+IU8zDyhvLxOvjPXDkZ
	 5axK4ujeDmgujXtMVqcdo9d0WByYAtazdfweuzeT6L8VmfuvoV7/zkxpham9P1Zytm
	 /H+Poa9FoV9bzMK4DZJw3Uz6HjC4UrajXbdArwmc6lHapTK9AClMLRMe2akrXWNLKa
	 OMjm/wUtDM40g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A63C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069583368.26524.14170756231115915366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f875cf57c3159a1cd7ad5b7938eca56a200750a20b70e618bf1e31bdc1347c76
Date: Tue, 29 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790695833
