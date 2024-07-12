Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865AEFC12
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720759043; cv=none; b=TI9f43sQdnMWxqMILoR+/t7/QgouAZ0+OzskzNcEIbFY8v7+11OnwtjIsOBgI/PnAR1bLYH7xxyquE+MFuN0rxDmYQKIB7n+GEnjkwi05AeV3ao1s0QQ48cnaFTfiqb3emVEhfHE8XnR+nRJyliLDap1FmjjNOvI94Hh1UhBUho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720759043; c=relaxed/simple;
	bh=OUzwrk7arYXWmyJAdeWHjujmdqlxDQOhXIgqSOEZlEo=;
	h=To:Subject:From:Message-Id:Date; b=OsBsx30jD00DpZEEY3h+uTYOdwTVApelp1HSfrEEtuCSayhKrEgHCWjJifQ+NO3CseZQLQUIeYeZSQ/iHJTgkKQ5mWn9BqWVLJXsRl/zbYGpNa50bmiZWB3VPLeCybc7X74/CG2MxF47raQsCCP+y+PnyxCVROvT/fevWD1D5AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX4ifm7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX4ifm7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02B04C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720759043;
	bh=OUzwrk7arYXWmyJAdeWHjujmdqlxDQOhXIgqSOEZlEo=;
	h=To:Subject:From:Date:From;
	b=MX4ifm7il9hKYQ46sEX0Yszmv2gc+ItUrKA05IsK34iTWme7zRLdZjZfGT9Feep0T
	 81oPsIENybpP5zG7vikhNdyBykwOh0YSDkE3uZeqFuQQYsUb4s8TYxcBOZHOdWo8Ud
	 yAdunxKuAVaCFr+uAG3hxGc5VAj8H4/cppF7nINhzYUhUkjSrfSJUmW3PE4CJq5OAq
	 uoZBpQwc7vPkSU8p8ITdhDimnom5NxBRtE+4Btx/tQphK8Q+FuZj4GlHYex4YphxrR
	 BmA/SL5knuNgyTZSGMqMVlTEzFoi0x48wmyey5CLS02RKpeeyH1y485Wr4/EZFbZQB
	 o0JV3Oh4d2JHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68AEC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075904285.18675.10781046086116100683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d300e181613d12fb465fe13589bc35acfc63be21dc99923fe5999699a2577956
Date: Fri, 12 Jul 2024 04:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720759042
