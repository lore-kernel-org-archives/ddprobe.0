Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0942832ED3D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757599194; cv=none; b=iKKSuPj/kZGJvI5FJUszXU5UbD4a8V75b560ZKS1pnh/G5wiCFLYW9F7bkJwCUXiqjW2U8dVh2rq2eJzzcEw/DY9kfDL7sKxKgO8EMf7zbca7LzCNH4zBIlrfN3fncl/aMF/p+r1DzYXZJLt0y/UBdkKxdWrxqgspyhH0EZuQyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757599194; c=relaxed/simple;
	bh=XpwRIPYe/mMgED+t4m/zzl8u5X9diCYJvpm3dCgisBs=;
	h=To:Subject:From:Message-Id:Date; b=q5iVIpUwWVA5XiCzrEFG9SC5kgQUAcdiopLNTnPqgp+GCrlISqVADzRXe005uLwKYCX3fllHwD3//FC1iDpoq2jLcHfRL+Z1jAwNb3u2nUeSkcvwYaaSjpNgRBWJvipco3kxQP8eiw1A5iaaYKshRaoX8TjRXhpPgVRoElf8KHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPNrAoor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPNrAoor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E04BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757599193;
	bh=XpwRIPYe/mMgED+t4m/zzl8u5X9diCYJvpm3dCgisBs=;
	h=To:Subject:From:Date:From;
	b=IPNrAooruOCTilX95j3vjZbxUqtgaYbUo4WWykT06XzT4NCKVvx5ZAKUT9qLqxYVo
	 1Y1vRjZ2eXYo3L3nQv5RmSqqnKA58Zmlt8Q9XbnLnUacUWh6iIdcNAwkhAgplobsr+
	 BHBzW3hSJUCs8+ixlxN4r6IlFLu2FIgU/F93QFI67iEi71+AhmCYHZ9/tK/nADpLkc
	 5GiYfCq+su0ae+Ak65unDMm5XOeqZj+6gTv+liK8Owm9J7TzwVrw7jb6fcUkrwNuEj
	 7QxKIqB91Xjn47+6sU2pz2jrUD7D4xdJJ3P40UNbiISsBqIJS8GRpwYgDyJM+FJWCy
	 x1uwl/NfzrE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F05CCAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759919357.18743.9779653843361584346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4c892b80cc65dfe9f2fea8955efa533755ab004090e45c7d0c81527df2c722
Date: Thu, 11 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757599193
