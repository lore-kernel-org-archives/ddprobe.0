Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F601DFF0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762582194; cv=none; b=QjE/M6V+qxVY39B06qj7P4uDTjg5gMssbgbtZflyLTsavg4+9bkwRitHANeaupd6Q1MTEtdsARG9K36NcPPSPecSnECiX6ujl/qzBs9TdweYq0psNj+PRWo3e35VYZZtbzBkfCQalNW4zX6Dlf4LKF2PVxQ8sywHPAnJ7JdwRTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762582194; c=relaxed/simple;
	bh=EMkDUj+bIJ+l5RBkIYQosIw60qmO9Gs8P/mTavs3/QY=;
	h=To:Subject:From:Message-Id:Date; b=jA3+wPYv4Wzo6K33YHiHNf4mxwRRuYyTDLnWJZfXUIxk+SjaKjA2IaS8ImLKYa81gtIeQZ4bMSA2m9Fq4JUR+2dSdNdnNEhQ5Kf3ydeQoX6WlD5OTFpv6l1gALW326vP3JhgWUTgdVI1J6RnOq5YFjrjoEmQPTVcME8YrPLBoGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4tk2+hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4tk2+hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2254C116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762582193;
	bh=EMkDUj+bIJ+l5RBkIYQosIw60qmO9Gs8P/mTavs3/QY=;
	h=To:Subject:From:Date:From;
	b=b4tk2+hxKTbnxpRpAUfDEKoDNx38mDEsw/0hvaowqBp2Sl8ps2EjmSSPvHbjm0aJT
	 ISFMDlpgFBmztXcSicF/TaB54h1zg6KDPOQHiVTsxxe41jnEK9yQajVLExzfEAoB8r
	 3Y/nTu0apErRcoZ0AqmdAT7ssyx/q/9FSnks0qF8hy+cwmyNNV0WeUQeEwERmPKZ4v
	 M02HHkxvAC5EHFfi50Q3SJrEgyi1HNYJh7zd5VeSF9PNsBRo8OpWRaL0S9505qS7Hw
	 B+RQx6A8oKHrik790gLsyd9OTZ3tpSPVhKqFyr+U4DNdBi+C5VLNB4elHFlgInYpMT
	 DaK2jd/Ijky8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0134CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258219364.14174.116230291564330312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab86124813aef1f127eaf1ca1f6c4e1bc1a84655e3b912ef23ae72cc96edb50
Date: Sat, 08 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762582193
