Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E103321DC
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774203894; cv=none; b=LFWbdd44rnlcbX5FTe6CML1KcoH9Soua593zW2MLeqs7Yvd1GrwLX2T6z6jTFXs/lhNUQx+n0Nlf6wLTKsNBjBPVwf+H0DNfJNwDXiALr3yF/VFdqPMyzNZoDZXdBO5RBqLCehORSb4mj7CMXFu4oGy+sez+FT9jYnzU2mlFFi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774203894; c=relaxed/simple;
	bh=uyfFrztyZBJ6WBypF0+bUiQIIsfDTLW8dZf1eJqhtYk=;
	h=To:Subject:From:Message-Id:Date; b=PRsuuD5yYsvQ4CYRkWkezLi5e+c67Fwta8XsvmtZMtnjVPWKILeYzsx/X9ULQyeQHhC8l+TBntQuoXh/uZa9ZzpQi4qTwY9EVfg6GezFcCHZTjIoA5eSEf2FXvzmSng8CbRzw8wLCaYBzxPtUL9NcDlpnwe2F0PPY4g6ANUkUM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pN4QRUOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pN4QRUOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA23DC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774203893;
	bh=uyfFrztyZBJ6WBypF0+bUiQIIsfDTLW8dZf1eJqhtYk=;
	h=To:Subject:From:Date:From;
	b=pN4QRUOKYonU8StJF5LvpoZ3UMDEmCXax3W3gsUISQ+8H3TbkzzJFSgZPanOj/d+t
	 zgpbNHGrz8M8DZCcNmQNo735bltlBu8gpcBOEvOEOr39O/PvvyYyL6JNd/R9v8o1Ck
	 GPbC6+0HVxc8jqcnpTsEB65vEo9ddH3wjGizF7OZm3mYlEtbz3amwiwEuxAjZaiXMf
	 Wbjldv4INEtBba1Zb4S962nY3tvFHS0IcXsGWvFwRXZCZF9DVDaOpB0gVaOtzGKVEM
	 zQAn7RveQRssGHQN7Ap6c+Wq3NcYEfcZLed4vOOAOGIf5pgCCzBn4FOJTeZPoISixE
	 ZhGpCSZRvJhZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93671FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420389358.28848.1272319892888806286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53598babc3fed2a6a7f3d0be00779c223ac2aa788cc93b7bcacce4b3c7f256a
Date: Sun, 22 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774203893
