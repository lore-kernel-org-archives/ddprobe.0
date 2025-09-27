Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377991547F2
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758936594; cv=none; b=WsDLF5AEUq/5WonBt2iyA5Xgf49oHkVtt5Eyb1B01VHUClhQnyGpH2/JEzy93qkASVWHEMdfZPdLpSorPRkwUI3NnD6nUGNSyKVDfkIpv+h9jwzDIrq4LGkK01QggW+CXVXMfAesMyh6vL3o0Rb5iOKKGIUg6RtV7NlNzAoxHWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758936594; c=relaxed/simple;
	bh=4sgNApP+bqToOchpz6nZ7QTnb465CjCyEGwqiA/ePmY=;
	h=To:Subject:From:Message-Id:Date; b=bFUSZxSQXfoBtMaPORpMpV++iD4TJuplty/rMmXmt8EWlpVNsuccOb/4eEhjvkWTHL/yYLqOuu8wV+ulft68i75UZddoqzsUkzxBE8bpsaWofV56joAikPG3vCtFLSlI3a01rdNNDGmd7b0cgz90rwNrZcmQQAU7rkjxXlIEBeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwaCLdfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwaCLdfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD995C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758936593;
	bh=4sgNApP+bqToOchpz6nZ7QTnb465CjCyEGwqiA/ePmY=;
	h=To:Subject:From:Date:From;
	b=TwaCLdfhGhHEI1C8yO2MuW/QeObWd8yDVDyV1Ca0tBygiwDAu9XwI+WquWeD5ql4y
	 8dAzNJ2vpNIjxnVjJN31r93P11KZP1qCvW5g6AiVkPH4WZNAt89Hvqt6DwqNDft07+
	 wXQxT+H0Qkhlp6FHXNBJiqFxuP4Zgef2xUnGVa5MXpCrhMWhEUQqO6W1IsNwNErPfr
	 8SSCUyGqtehSbYK82HcNHKGTDPlbxGUziZqIYoX1gb+hEn5HrjXpVdVhH7naqI61My
	 8DhpWYoGWjHVvPACA87W1nAVhty1U9JE6cCqTOnOpxJTZaVmQIruDec2cn/y/IRk8I
	 v/G5iYf7QiekA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0A5CAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893659362.12677.6291965231053561263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1350cee2d44df8eb1971bc8bb044a85d40bcdd9c7c89816a090229be1d159fb4
Date: Sat, 27 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758936593
