Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E55F1A9F82
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766329434; cv=none; b=kdJ6hxtusLoCj+QAh9SyfOR/9LLO7Vpsm440Sg2ov3o55/F74ZJsCDmhPDhZr2Dc2EYZIguXuCCOwdgIHlajM3pHQEJQycWYzbrUYh4EHzlmBnLCxztVQSmOxSAV1wsozM/kDi/KIoQDMIJdRh/llPk3QOkE2Bs7tHaUFtUsnus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766329434; c=relaxed/simple;
	bh=vLGyXOUBtHEiXy/KT28JDY9goe0+wsuJCrzBqFa95Zo=;
	h=To:Subject:From:Message-Id:Date; b=tf/RJe9eItSmeHYN9FPGSOyPc2LQ7xPGUYhIb9+1ogIuUUngmwNmkElA90bCMk6hA3GocCLwpOt4FjKgZLpgCf5W+fp2xg+aPR5VguEOKpX/DVe/8SQjWgld8fkc/dj0UMeCn1Kzuucxsa1yIQrJidDwmk/yAUj6/IptyiSfH5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQUHWpHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQUHWpHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E5C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766329433;
	bh=vLGyXOUBtHEiXy/KT28JDY9goe0+wsuJCrzBqFa95Zo=;
	h=To:Subject:From:Date:From;
	b=QQUHWpHeMzyz+aH1aH0f/UPKdTGNKIleGzLUnbBgfbyi4n3rzWJ/nQediQsa3hIC9
	 Rh7P5n9sv/YpzYu3YfA/FoIIoKcvAAK+1BT7izrCAwfEtxtqZrkVJ5YSg2bBTenZH2
	 kry65jcNrq7gG63C4ExcAhvMeTvWa73e/oeSrnK0pb51nRRvuDN655uuwQXEIokgyw
	 Fv9UT2GeNh4qzL/EDrkf7Xsp/JTY/Zp3wVZ7/n2P+bzlJmHb0OvvQD8RQVY4pus2so
	 zP7IU8pVDgH5rmXX3crLibtEDnQMrZgfB5QnmhKrOyJEO/rtGHxfxqFRTUQ869AXVW
	 mtAnQO16oSQ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C47E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632943358.10378.8454137056815786319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a291d3591e25ce14fb058dd3b6a81a515a781b14f6753ff6631c59a4869c684
Date: Sun, 21 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766329433
