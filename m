Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264C7225A5B
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762175994; cv=none; b=jDqMqMOYedw9UPLSwVihcHlyvt0wCmEKKg9sEIVVN+Mv6LNwwFrrUA3le13uhgY2ST/8M9GufNotJOYhrUTxPAfgFTCecC1wCCsPfFX9l2Xj2C/xQenAVSYztem6onlnV9wIa16hhdJBaHqzWFROf0/ltnIXt+uKgTxcXKOfaiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762175994; c=relaxed/simple;
	bh=/aVqTx13ircGB8HoOZGTowHUmJUyZm5DiJhaT9FcfxI=;
	h=To:Subject:From:Message-Id:Date; b=VN+v6vCo8ogNMFi54c4gHEaDdjW2bqceJEGBCdStFCZrULjKl3V5KYunQw/jfkmTAGZu9/zIfXWQ4FG4FHsvr4r3fHTGnAtM9EmF0RWUv11xQ/CHOYfe7xRUwbD09McuKm1Ma6KA+X03nlRHCBQybP0Bvf3XwmowIK7TR5Y9SzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFx7BsWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFx7BsWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EA8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762175993;
	bh=/aVqTx13ircGB8HoOZGTowHUmJUyZm5DiJhaT9FcfxI=;
	h=To:Subject:From:Date:From;
	b=tFx7BsWGAG0ycE2kALcTCsALA5WtVnSN0YqfYilSTEEPxzdl/7Sgyc1MIZZFadr21
	 62+y/DWDx6SOfyapnlswXfxWFndWX37sxZgiHVeEu1mm7GHjiTxAxHPU2eomy9ptii
	 JqTtQzW52n1ODvo1hT4R/AuD+WnGKQ0LnUrU1lrvPRhOWCASy2Xijokht1CjDqgzAo
	 pq6Yw6lEM1y5Y+A5DaLLe/cbS6NcSmjRCmQtnZdvvHkLxtJNkBXHK48RVW0+76rdBl
	 v9NT6kId6OJCVg0yk/2DNHQ6zh1gkjT4tIimaI465xi7nZFOH3ps6ql16IoMU3K2jc
	 DzmgYoVR2M0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9ACCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217599358.18040.17553353053072373163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209da0e42df8bef138780b345b32d8a03c31f25f5d8cfe256a5beadaa00b0acc
Date: Mon, 03 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762175993
