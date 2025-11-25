Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB271FDE01
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764033175; cv=none; b=Nr6lnkZjTiAi9lgobHux9qW4Nxi8NeKTbI8e6ou697FRBfHQ5TE+Sxn0BMIiowKURqWve8nGnb3oxmPE2BwfKxOk2CzZj9c3AV/AnWngo4GbN85y2YH2J2RzPB7qASvhGJrHiTMDIno9ITItcB0/k0RYI48LBZ3jAs3SDVYRo8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764033175; c=relaxed/simple;
	bh=8OF1QCs4WwI8bjatFWeqDi+SyPHYP5ERHkGypeE+nbQ=;
	h=To:Subject:From:Message-Id:Date; b=erJ1+eYYfajpo4xBohc3Dcoj2Dxl2xTUN5YXnk+d9ySM53gcUeBUgw3jQYylSrSV0dXVzMKu4dyv1OmE0EvXVDoslTkMWDjS2IKscALHsnedR+lyv5cka19RvBMAxRCkS2yeBtiCt5OE/4u5HetgoAn/zS6yf31s1Vezl4kE7wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlJwMvSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlJwMvSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6B9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764033173;
	bh=8OF1QCs4WwI8bjatFWeqDi+SyPHYP5ERHkGypeE+nbQ=;
	h=To:Subject:From:Date:From;
	b=LlJwMvSoNl3o+Qq3yJil2rQPAfA5h58lmawygZYxYP/yUijSPJsJ6hioPyAcctKN0
	 5JigkQUDCqroCtkJCpLeVIVVc6989UOjbcgtqv4HjRQ+2zdbs+7Jj4Tq170+wT/KcL
	 vZ+nSswmFRwH77mDG/9pJkK/5xqfNdLdAwWpzODftqXIaBL0V1HY3OigSseafpmxP3
	 8JqKvbzKv/jMMjfrroQTbJwBnOOjdo1pby/Ww9iMP4X0FICe4M8Z+0BP0Jf/I5ahND
	 jfEfOGrIJamnH04hWEWMSO7xh6G+KjEG7kJfhh/rxgn5qzMOb/1yjGyiwMr0mVU1Xp
	 R+vuRftzCZgCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A591CFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403317360.19850.2367975514641454548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f890ed0444bb322de0e5427b7cb259feaf5a0333ef2cfcf7dd8757ef7d64fb79
Date: Tue, 25 Nov 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764033173
