Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2978F18CC13
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776835054; cv=none; b=KQng2cSNAMY6Pkewt5f+k91iirlMbtAJlg2A6TseaUEYMDC0xURRr57H0HgBoC2tzgQKkedL8EOuxHi1MM48HL3ZxqTx9WgT+9Izay5kzktjN6C6l16zkuoUl5SGBt9vs0LaunCHFNY8UjBZkBSWRbeNgOa9T6hDmaa0Ne+WELY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776835054; c=relaxed/simple;
	bh=JCs5LBoVXF0C3xeInJyZvAw4jAABg78wo0TsBKM1DeY=;
	h=To:Subject:From:Message-Id:Date; b=IXP7dl92R/v9PyQZzxCbfc0KCQKUMyuqhbQWkVMtJIcki+s+8PijLRouM6h9r/bx/5LpjxcD2U72uH9iRuU37CtUsFgvQy+yNIavAQF6Yo2Z21cQECeCqEIUPJGQJ0zDvSAjnBkz6NfDutJX6LRHQXhhDKAlRwY0eGuZMJ1XrzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRIyaQZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRIyaQZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9A2C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776835053;
	bh=JCs5LBoVXF0C3xeInJyZvAw4jAABg78wo0TsBKM1DeY=;
	h=To:Subject:From:Date:From;
	b=oRIyaQZVfQuhwUNKVMau+qh8Sl80p9yRLYU3Br2G+XhgvBt6NyYTsGyVLFAWDxixc
	 jZw1Q8k97LFuNPcBPHPsvi8N+g2KcUSYozsQB7psvi/mTP05SQ6emoVdz3GkzVdmNM
	 BOLHlg7nNRtR39/mRUuKiYIlykezBZCgo2ogz7+q3lylv8hBej7VAdcIMjSaW89yUP
	 Z+T+oX0vxHlpYfhCN6ZsxgOQLGxm/mjEG+Mfi0phSQJqC+5RTSUEDrvh919Hb5R6Wi
	 eRBwpM8HhrxIV8NMjcTjq88i6jWbb+6WPYw2rDG6ZWMlKrQZXeqQbqaTKBxop2gV5Z
	 XFTCQs1Xdk2pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91C1F94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683505368.6361.7621865851035020014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51088f840ccb06f75a3aea243cd7e21cb299f82edde3990f659de689d0592c3a
Date: Wed, 22 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776835053
