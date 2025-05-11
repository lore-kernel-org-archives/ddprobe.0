Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8211885B8
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746983395; cv=none; b=gYGT/FY6hezXi0vPVrz7zwVlH6tJPccXKPq/e94JySXSaO6WwThvCZp6NX4r/4kz2ExOeIlbCzH1MmazmJCCtw8ihP8HSM2tiRlCEMSKxwft5LFiyUvo2FDxG6aKomBx6o3JW4q6wr674vb2qyasLC0S4828s5Tc/9YpnQ3XtGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746983395; c=relaxed/simple;
	bh=/1D702UkGTWkVHK2XC+vKCOkHi1Xh8whoMyaLwRbHqY=;
	h=To:Subject:From:Message-Id:Date; b=AVxWIIgSXhf/o3JJziSYlxuX6j0W8K72w0uEee+5Kg1+94dEWkvjZDzYb3Sw3B/GNo5JvmKOew4tVMtEsdEN8SGjDH7QH4XbIOO6vVAMJTZFOnufLqH8z0mSTewpemtB+N/XGPWqBlhkVzAa+fLZBBWW+eHAcXKsFAnVtDffXgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swb2D2Ui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swb2D2Ui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F6C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746983393;
	bh=/1D702UkGTWkVHK2XC+vKCOkHi1Xh8whoMyaLwRbHqY=;
	h=To:Subject:From:Date:From;
	b=swb2D2UiSSQHi1+15O1hzZUONUwdHscU5H55X+JtCnsgCN68R1ml4ZzfVBtwdVArN
	 rGvqLuCVmjWewqtPGMfHy47HrvFY4wxtHkCEmILhNQtrUZUiezaalKWAfG8VP5L3+G
	 UB7AY11RSrvf0jyx1rxAy1Qojc9rdzNjpWDUqh34dGqmYiNXjINof8l21LoHCneItc
	 uBCoanlTDeZEWd6cG07BQEwkJMVQn5T6UCj3n3qamH2BH0jdnwmYahPKf521eK2d0c
	 GZb5+QYm0vbFRYlttdKTJQlL5SkBnqsXXdxbNArPt1IzJBFGYLwhjf8Gw+uRHKDvm6
	 aoR4NycFaGJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C8C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698339357.11753.14780219722565131176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c39b0f79de4efdc84a1010f49dd211259434726571b1196fc6abc65e33620d3
Date: Sun, 11 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746983393
