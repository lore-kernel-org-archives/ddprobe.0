Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C22D301033
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764718974; cv=none; b=kom+6VLSOWjaQ2n8v1hwaspj2xZokWpRkG2RLWmg58T471ER9f8ar9p5KtTxDePsjgSAwO5aIqJ/rE/HErJLdbxLbxdEyV0Uz9J+1R80DlZ1HDllJskxMetw/T3OA2uPhSv8B4HVP3R7uPivQLjf13HC//dsb5y9OOw0XP2aYNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764718974; c=relaxed/simple;
	bh=vZfWwtnuz/Bjb5+dNbYydYzkeSEr9Xav7fpO5sArXpQ=;
	h=To:Subject:From:Message-Id:Date; b=YztFTAI+8O8Q21hLgubVc44cfdrgj6FUxm7qnuV+2wZFy3+3yf9Q2XEAKgHjBm4o3fhIryqd+COMrz9Aj/6EWGNwvTL39a3wCi7JLPUirScPbJvuvOOVmq1HhVCDKADKTlpe9YsvO8Ajhczc7F4yZS4CSPGDbqWulsmpOLtwSiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+Nbh0aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+Nbh0aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1998C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764718973;
	bh=vZfWwtnuz/Bjb5+dNbYydYzkeSEr9Xav7fpO5sArXpQ=;
	h=To:Subject:From:Date:From;
	b=F+Nbh0aNeNenr6okujhSv6OOnVj+Uk0vj4WzmmbMo9TebZI7eClraZbIEGfkJLyn2
	 EkFUW2xlzXhOxroMZjO/fRIMKyldpGBZp/UpfUZGZErjgWNZJrU0um98yegW1OUAfX
	 EfSkI+BDD/iu2fQAjYHH9KuOTp/xOm1kp1cWz5fFjW+Z7II83P81MTV5e5jLfR+wp6
	 d/YSDtD7RNoKid+pp3ZqsX58w9BPK1xFOrqGBm8VVOKr5T2O+LdN88kAr16Nzfb/l9
	 3IKj8OAkz6JlNL9L7u0vRWVjeCKZ8xkH8EBamGYYIxOhS3Qq2s08JADgk0/HZnbB1k
	 hUcZ3yMyzyC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143DD12688
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471897358.9791.13326121919274715837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d1a62c7e4723e6362b5eaf67c27ce19592ae81a9966d07a4eac08b9660fb23
Date: Tue, 02 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764718973
