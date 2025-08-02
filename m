Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2675A1F099C
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754134794; cv=none; b=K1vdB9H/EemkSJQ91HLVsFQvyzZgrPtW+8ZKRe6UTJHT/OZZYQ6D2/6VdIBRJx6B+6zQSRI+86Pz7vAdwFxwlgJuGrkQ/lgENgFnT+U/z1TwOTbj1/JIrknOatS0Wrt3kqAaE5c/ifjLSV+DmAYHC1qmib/iu9/ib0c+OD+cmfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754134794; c=relaxed/simple;
	bh=4i0KeXMAOfmhuV9m4m1OaEzi5JnAeW81TudUSpr9ZD8=;
	h=To:Subject:From:Message-Id:Date; b=cumPBAofNCDfosPFzWxZr7j/4LFf0oRjbo+GWK5+U7T0KQ5toylDPErOqze6fniAvEqfKuoFhLQ1pSrC7jtZOCh8o2lW4RPvO18P4OfwLmVW+8ttYaB0yua+4BXa4xwddeoY0RW8Cc1g3p6neW0p2HAfbTfMeHVOBVQ+Ll401Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ijgjq4aX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ijgjq4aX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A590AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754134793;
	bh=4i0KeXMAOfmhuV9m4m1OaEzi5JnAeW81TudUSpr9ZD8=;
	h=To:Subject:From:Date:From;
	b=Ijgjq4aXQo839Ag3p1P72ablU8qgoOFVTm8G17nYrG6rn7UBuYe7fwVfG1ymIhpkn
	 jP52OWoNYG2e6mr9U/5VO7kQrpopdVoF0oHXHIa94KnxxlTm03EpF5rlXgZF5KPMhb
	 ARsuhDsdV/PfWUN8reYmjh7g3P1KGQe5X0ggB9PxzDuqBf8FVMUIFLaQx10AKa+kUW
	 CeDqCvNIvn0nFCT94YrJi9A/zTSA0kKLZFby/dy/Cecw6g9YCA9iO2mYLQxyryyGbo
	 PN3gODeDvNMqV23BWrf19i2sibbG/KCyv2cufaByoTMir176UlhAImCDdGwgywUaas
	 umd0fuY/tV/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC3C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413479357.20664.10619356403241944746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853ed063b897aa57d0129c2eb77c51253d02ef2f304473c8646ec5d08424198b
Date: Sat, 02 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754134793
