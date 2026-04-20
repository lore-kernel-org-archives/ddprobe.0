Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD9838C40C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776677254; cv=none; b=Vk6q5JyYx2WLBWXyEJRcixA5LyzSVn56rk/INRuZjnYO3ht+1C9U5/yqcD75tGei00z/3gOGQXi1JdgLonU9NXFTrKaAA00oxY5QZcHjj4RjMYQhZNaOBMMD2ddhH7dzC2+maFcdDbuUoNm9tVSOAbjCb6u21ruHGzp6QrgG/00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776677254; c=relaxed/simple;
	bh=z6sex6d/OunwCmAv5JFZcoHElaYFpPBIxQ3qWTAAh5E=;
	h=To:Subject:From:Message-Id:Date; b=ef2vNM1EFc6MYZWhh0EndvWPcgKfNL4qAgCEJMWK+QFJ50df/4wVIVAgJQPvKVX1Fo8ng5mvy0ps6vfIrjY2jT1bfhp+wuVqVMcuzPPaTe18sPCyZf4kDQqeF9vuqkQW1qscHEh56PFjtnO+yzxdhVibNJ7bKSFMDELpLDfQcvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sg0VH6Jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sg0VH6Jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB137C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776677253;
	bh=z6sex6d/OunwCmAv5JFZcoHElaYFpPBIxQ3qWTAAh5E=;
	h=To:Subject:From:Date:From;
	b=Sg0VH6Jg8MWr1CHT/Tk1g05fiF9pByUB/EHxuB6ayx/7X25co+PJJqSW/A11xvNkr
	 XojqY61JPyTrtFndUip3XEQ5FWN4+0km4eHfO1OFDQD35+/U/H6/a4rY8HpPAZwnfO
	 LvYOaRdLLBMD1F9WuwE5YDpFHA7ItIut27dlLymI2X9BLpu1CaK1eugiRZGBl9zvmz
	 h6LH1ch5Gmt1bGsC0oEa2S1G+upX9M8FW+irkH+YW+HA5chvHjRZJk3eAaCzDoCJA8
	 QQZs2uC7pJqGGysevldBthJBxDhqJsrU9L43LSHj6MYmX3O71Qnxj3OL9kAvT5Pry4
	 NcQzVrNP03BMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27CF557F2
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667725368.15711.4722670722415900784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddcf232013d15a58152ece51f3840cde3b1aaf09c7554c528ba80e0acca1605
Date: Mon, 20 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776677253
