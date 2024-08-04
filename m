Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1740C22086
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722813354; cv=none; b=Gd21GQDpOk7Rb7/n+kvcrIQGMmpd4bqN1MNA+AOAa9QsFTOTe9sU46TBnWMAnLr9sa6U+s1any/NFBAbrvWI+UtlBn2O5ondmhvTMM521u2jWISZ1nXLXANlOv1v53uOPNfHCMOJ13LrKQuALg3ULr4W01NHgB4P72THZ88/9rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722813354; c=relaxed/simple;
	bh=t1Azb6q5OTAoKNQ/91DzWjYSjSaM5tnoks3rjGYdC84=;
	h=To:Subject:From:Message-Id:Date; b=a2tNlDmsB5mTsjy8J/SEgMZ+fPC22NBIqpuQelWoTO4RPcgNdhxEEBVRwpqrPGEBOf+BxVRyRBDu+F3RMtBPQ+73p+kgc0lsf3tgAZDuECymbriHDUDZzauw/NAPY/qhSl7eFzRZ0AiSj0bVsdOL9hMw1HBZWIygIJPZHMiq340=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUocbCDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUocbCDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33C2C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722813353;
	bh=t1Azb6q5OTAoKNQ/91DzWjYSjSaM5tnoks3rjGYdC84=;
	h=To:Subject:From:Date:From;
	b=eUocbCDqfSg4ORVNvc2I0SzN+k0MljtdP6BM7Nnnd9Appxixel7kohUVqTnu4vkxk
	 mgQHZMnHk/QDD/+rwgCJuauBzjGvXe24gs7mNighWaWaA4PjvPcJ4urV+d6U8730sC
	 G+YB18DaNNFk2YE38AIzKtYs+lQwdIBWyNM9BGuSJr6tqFBFdAEvwhskPF2udOg6uz
	 l7aA0Kzx7RgJAJZaWjQ+FLWPgRzTDNQbFSr/QoxmWZD6Kf6Bht/AzJEh13jKp3UmOE
	 3WUwGfnVOxp7pjlcrfAzMTjYrZCod1wuy/yBxh+2xORbFLuTBw7E/8L7PVsow8e+Gj
	 7uyg0u/XBDQfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A46DC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281335361.11752.9691646116400498587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83187e31ae8f867099da84f0b360824ad8699539d63c4fd24dd9bfd493e5325f
Date: Sun, 04 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722813353
