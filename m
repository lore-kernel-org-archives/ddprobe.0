Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308E1340A76
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776889054; cv=none; b=ufjzgKmVuGVJOclwBTEvE+sH+By18c+NmTyu9BZaBawTHH4lCMirPzTjIwZqcKi+MW4u/FfmiyDx2qNE44cgibv+tLkckbrTOjd55vC0amYBMfyXI6pDP1cz62CRUI4Kof+v7AxlM+UMMNwNiHjtnmq0wur3Tl4qAgwBIYUn+HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776889054; c=relaxed/simple;
	bh=UpeDwknwRCZlZnCXb0uGmNW2/SCUn5R4I2mrcraqjoI=;
	h=To:Subject:From:Message-Id:Date; b=FLfaB3VammMKALv59fSBcbz1vfrV4WzNKFMOaTCulQsvj5wg7MCnVj+bBpYxgMNt6yiJfz1PmNoKs4grLpirsz5OTagkia9ekS9XXqENzFr6FUp4KMD4dkyVUp2Umrx18m1jrjZQHv7QrGLYQfdc1DHva7LgyQm1GcPRrny19SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL5E0T7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HL5E0T7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE245C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776889053;
	bh=UpeDwknwRCZlZnCXb0uGmNW2/SCUn5R4I2mrcraqjoI=;
	h=To:Subject:From:Date:From;
	b=HL5E0T7FsztQO4wgbNRbG7AEYfcsdo+V3pDa5KnWDcolelhmxokeAz8ncwAuWFp/r
	 9LPZ5VZPOEAzwbEG+8RFiKLWxM6N72zYui2Z1ve/duMzkTQoI9m5ELUXsHQwLdrAVX
	 6uV84lGBufQVukea5LYG86ztBEA7HrXwBwnqegPgayUJdDRmQfQLpM3rG2mYUnYfs4
	 +yrKuf02/DMQQV7ByTqzkFs9wlpM0eblHM1YOChQZbRFwbFenNwmAsw7+AY8+CPNl6
	 KERAi7cFCjHYg4tjPzCkPguCGIREVzZ8bJZvXv4avH33bhPJDqNpmisbmTRQe+jyI/
	 w4NFV1BaxP+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAD6FA1FEE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688905368.23128.11348705756213883121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b02dc0f2bfa0841ec1e9f838a0c865759b27e9db8418e66476445e2b0a0f658
Date: Wed, 22 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776889053
