Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A57535DA64
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788583234; cv=none; b=lkJa+/DQ53U6ezlULT7dKm1OVsX8tag6BKUQQf/4JMdZYk7RtbBGv4AFyYlYCdgKoQz7yuE11xZZnuaLszlg2W6KZ7kaGdW9iuacICIb1V8lgUBUhHFxQU8k4kfgGnl34Qyl5QXft7I/HYzYDo9z0Xk4Re5okyZR36pHKnCrIXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788583234; c=relaxed/simple;
	bh=+uxnZKd0DmMBRyU0teOxWtPKPU51l/r212D5BdEhWLY=;
	h=To:Subject:From:Message-Id:Date; b=fH3uidjhFJ+1iAKOvH9vK+dL2tSdgpQC3VyLyGWCvN1VnXIO98hHZP2NHMItMxyO0BymiccxY1Ayvmepyjz0YGliO1r+X3DqqbNs9fobk09Hl2JLKOT97BHRyUNJQ9B7lQ6/7vTvrVmkzqtLljFUbM0jGp23Iucd3SOPBnGuxVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zyyvnpz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zyyvnpz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C85C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788583233;
	bh=+uxnZKd0DmMBRyU0teOxWtPKPU51l/r212D5BdEhWLY=;
	h=To:Subject:From:Date:From;
	b=Zyyvnpz4bs1wD66tfbfek01MKFdbie0XNOIsFqm/tumOMqPDMuhy/iGRWgruNCp7P
	 HzMCRUpyrG5/AhITxi5aiFGBGtL6s4NzXaY9hm2fUOTYwu/a1Utvwr8DtjKnBswvy7
	 Na4NUAbprHusf+g7yFxr15L8OKEdOESFuPq/DhhOuXf7KhpJZ+PoLuc3KE7wBVLtrn
	 YMm1fjMoh+209hueEeix4PuRqZJWeISRLTPxpsbw1SfzVbTPk0gbjFGNfiYC/4xndS
	 SethP06cMffdYKe1kmrpPiVB19T8RIApwc+10i2yzIyNuvqqVCENzYYlhPvk3IkiLJ
	 yaaiFTWYwsXXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1EAC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858323372.27859.12359416140559683742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9917ca43d3fc0167051e24d8910ac5f667c4fd087b0c61ae82408d53bffe5b
Date: Sat, 05 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788583233
