Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9946E3164A9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784168914; cv=none; b=QqvIEdp+op6CFC9WlrhS0j48X7XTS3PTiTJ3T5FpCbA0bBeOzqkljoLjVfaia/3YXergSbYlV/xfPYCnS/3gF/AwU9h6DVgLOleXv1Lz9BD9/AXl6wjaT07sdbof7jt/E/fF48wALFcSqzKgPBpYe0vZSE5E56U0U2VXX6COxgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784168914; c=relaxed/simple;
	bh=8Os/49E27TDO+t1HzuU5c4XOvy3Mjk+U1fDoBe5FdHI=;
	h=To:Subject:From:Message-Id:Date; b=lIICxesJNnvgz/z6zhvRWEj9NqLCKecmxjjhZZAa1xO9toVU254J6pBHL49jYr3Bq+VVyxwf83CGNkV7hxHX/DNyvPNhSeBvxsDsAs7CjAKqwKOlDWWCFWecFJn/05EB7ZMqnQLxxfhyGl1aK24YRRZMe9O4CAkv8aLotnUTff4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiCZNIFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiCZNIFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC2FC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784168913;
	bh=8Os/49E27TDO+t1HzuU5c4XOvy3Mjk+U1fDoBe5FdHI=;
	h=To:Subject:From:Date:From;
	b=qiCZNIFGvvMmXSym0aCHALPkDmUKwoeVSwIu/tn7k/WjlUc6HH7Gz+xsyTYpwahaL
	 STb8UCS+HisixRIJsUzqrLfQK3NPQMQum6DqFhyVuwrdveDBNeyGiBFuoqIbvKQHVE
	 RcC1jW3kQh8HGqMaiywk7H4d52bPpUjIDcdkUeRKMqJptMEx8+GBv3y3VRPpzkO4dt
	 e+Eh6pMKFCCROpAIxsNhH+JmUfnqUalMgz8jsPh04OHVb6SvWrpFB7l9AZRoZjR/X/
	 5+9Qzd8f4kuOIgjVISkm6NfS66hiqaMxAc/kFxzJu8iu1bXM+/RwP9WaeH4ia9pldZ
	 vgizI49dKdoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A998BC44507
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416891368.30572.12506704098715757177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085ed271b303392f8e083286bedcc6830b21cc9ea44379cd79318bb5017b7d8d
Date: Thu, 16 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784168913
