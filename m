Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAF81448D5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778551834; cv=none; b=pkjZbB/F5KF0jXlIA9gjMtm4coT5eg2WjYT+wPQUOnzLizbksZpyXKZCOJZ+e1ctzb3Q21w4espjcYrd7htJsU2G7gC0m/VmkRrT8sqojEYaJf+IK3xeH9k+hGdmx3mhhMxgtOf17timAZ6DjFopx8ohMuSS6Ftm9k9RvZgcKBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778551834; c=relaxed/simple;
	bh=mEpb/Oa1q24JnSnEWtvzGin7efOE69N7U137D4szyk8=;
	h=To:Subject:From:Message-Id:Date; b=noIl6MlhxXnnWxKRCitbr+A3KhHTbW1RS81I/rZEEjw3GfUiuQuWo/EBZXicLIKzv4UJ0XtiT07FuDg9yfcraK6pZeeRQ4bu1Ald5xXZrbx9ei+Ubhe8YKxbyKvqtQxYnSnsb4Qt11p/ZO/Um+Z6gziuAIRdWRA2m64xGmRTKlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyTUxkVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyTUxkVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEB6C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778551833;
	bh=mEpb/Oa1q24JnSnEWtvzGin7efOE69N7U137D4szyk8=;
	h=To:Subject:From:Date:From;
	b=OyTUxkVx29emTqIZFXIWQgq0ToY6NemanEm+lHdHYNETTlQqgxjPZPNO+yGk1fieh
	 dAqmLdYM0IkQIfDrG8nakYjci9cfLaprANriFyPgA0YbH35G+5pE2Jt3fL6LtFll0A
	 M0/Nflv+ThcpE/ecvELezzZcEIFKBS/plvdXkD3n7be1Pe5Qih+4FxbFTsELxHN7ix
	 bE19qZ4YMhe1ioYo1nPwLUe85Js+oDyVMwVfQJLXvbvvsD2m17CliWS3zkY3iOGamV
	 fItZqvsG0ff2wpmTe6VwwQ4A+2r+hjZKpNZV+kCdoYG0SsK1QgnYjYXbef0GijXvnP
	 L1/YRyTUV8yyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC6CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855183369.24218.14075084204730120129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a45db122d49f8fd83df279df852b9e1ea4b78e287f9a835bfe81a1b98920d0b
Date: Tue, 12 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778551833
