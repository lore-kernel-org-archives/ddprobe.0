Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E9F13632B
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741319934; cv=none; b=dlTs1L3Og+uyMcqqjo20A90JGYVE4SKkqgbvxM5/sBgjh3FN5mXlLTEgd1isKBs1FTwHmn5U10vXHbTss+Ca9SPC+VG6eBrqJkYsqOb76MAiZDUh8I2vMJWM8T7fSZ8RDRChNvtG8zTDEJGRYoHzSclq+cTxQzgp7aRgmcHGuqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741319934; c=relaxed/simple;
	bh=grk4u6jxuciwiwaQNBHig3MVOAO0Fcr3Mt+i/4usm/A=;
	h=To:Subject:From:Message-Id:Date; b=d/GVvYZ+DP1TeqJijZg3SaYe9G3LCYIi9GMRzAN0qmv9VDDrPSMZFIZjka4/wz3LKuEDet8cfaVIY8SiURh8ae+jl18FFBLAfudOmNDo77nrwENKrE4+w3KTHoq7/HBue60n8qXOG/BRwDP4p2LTtCcsJcH39XZlRVz2pibujTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBAjvot4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBAjvot4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FBDC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741319933;
	bh=grk4u6jxuciwiwaQNBHig3MVOAO0Fcr3Mt+i/4usm/A=;
	h=To:Subject:From:Date:From;
	b=bBAjvot4BBVy9yDB6F9bG9EFgRTDaOLuTmZvLn9c+B6/vg1dKHEQJ2dyn4vHahnrh
	 C0DuAnMhxiAgztIuyTiTMCOv+TEItdglmsQiRwx0pv+a/cl0VAMDEZ2rSI5C7oAgHw
	 gkNdKlelz2vF8Bnvi9wanWqV2aWkrcIEkADxJlQiy1KZbtHgZhSFtmKmWOfykQEkO0
	 OwOWnVDvOM8yXzchUlwOwhKVq8PZiBQvT8dKaMVqiSGrBAAiQig/H6LClhoYj4mxDV
	 luYgaSGqACbeH48fd4Z/lUDaVhtbrz9uBv604zY03rJ7DyN6GxoIwbwYky9UxrxKKb
	 TkQ+GCo3i7+bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE1C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174131993360.13979.12994487445046637708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad81a0db1b910d3d05e784eea5d8413b98312517e19e8ebd64bb90727e746ca9
Date: Fri, 07 Mar 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741319933
