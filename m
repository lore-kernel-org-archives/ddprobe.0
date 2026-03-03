Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27010374720
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772502894; cv=none; b=Ql/9S9g0xCfVUpREd8otoIVk4t7pe6UPho3BW/4LN62jHLiNgkiThrtI4f9rnrp63CVxnyToSusmi0ZeutS3i/Ku3LBdTE7opMXgO+PUYxTMMgJczM9OmNGzF+S/qz42Bh2dvIeAZR+9ff1WGujQ+XVdk14xwCHaPdRmbk7zW/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772502894; c=relaxed/simple;
	bh=VZAHOa0XGaXbFIVWqESNS/m1XoNUOStDmZ4TcfzL2ho=;
	h=To:Subject:From:Message-Id:Date; b=H7Yi+ri5W8uDjVIM5wDPxh8KL8p4TCJMfhetb/cJoYDF3LQbGIDzojPoUSGhXaHbJVKVqQGH0/vvrQzZqmLuM60uIXXQuNNpupFWCI0VmqD646P6jYbWbV/+Orbht0woMHz9OsvZCPd4GzojP8M6pE9lp4fOHk6zijBMu7zrEF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/sWwbhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/sWwbhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2904C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772502893;
	bh=VZAHOa0XGaXbFIVWqESNS/m1XoNUOStDmZ4TcfzL2ho=;
	h=To:Subject:From:Date:From;
	b=p/sWwbhligJp8cZ8suWNyVLzmuZdK+BMkcNOdo9N1m9/bgr1uftk3YM4XsL66ZT2d
	 /Nj8pIENaiAJCt5XW92W2n9DBcSeEKAHWlbWWDUUabaDQkM8wcV9eF3rmKtkdr4BXz
	 4djpd8K4fOBp1hsDNcchr6BM37oI+SFC1Qlrf7j4B60y0HTdCU3dikwUNtO2qiMoJT
	 wKE7dlwQlMxRj+alB1hvjGg5sogI1JYx9qPExB5QS1GjIwFOcEIHmHw4kqaVAbR2L8
	 oaPdbM0k9H124Pdhd9I0N4pjMynTqzpgCvebvpYxp0ABHXIxQ71Qjx9fnEO92Em1dv
	 jJirNQ0zslsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E90BEB3648
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250289362.14104.9375865601981211970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd3e09adf0b80484d0907897a03151a5156a39afe865780884e7174e4a26538
Date: Tue, 03 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772502893
