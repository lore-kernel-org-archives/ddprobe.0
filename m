Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F60022089
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715163743; cv=none; b=mYjVJ1lH0Mvd9i+pBf2xJI2TK9VsjZEoMI8YHq8EDKMpC4mrFoFmdoww+8PYTrQYWY3/UtXORaZAUuEAK8fZ8mgn54ZVJ/OMSimTeOIAf/JfumjRwGplp2J6yMRlKZjO3wHDNbA/t06AoA0FS8AMxfWE7TlYqYc1Va6dW2l861M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715163743; c=relaxed/simple;
	bh=OD9Ist5zBN0PYjaVcmvOgKJ2AJ3Lz/nenfxm10eg4n0=;
	h=To:Subject:From:Message-Id:Date; b=SECm4MsOEWCs1SimALpJsuRZzUtrjessi/gTsSShc3GHsq+sp4d8m20DyyTf+VLY8KVZ8mRUTUXHApotE9tsg9lo8PCGhJ6wH+CbrKf0dHdLq56P/SzJZOHIoXMP3EdmT18EW1+YYh8jcshL+JvlANHbhJCbdRPCQ9p1q8IqS88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj6/v0k5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj6/v0k5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3F5C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715163742;
	bh=OD9Ist5zBN0PYjaVcmvOgKJ2AJ3Lz/nenfxm10eg4n0=;
	h=To:Subject:From:Date:From;
	b=Xj6/v0k5Tm054s9VQylG3HM5ho+6cqxqsfZj9kwz8Mc0eKrBs86oXIn3yCtDilFqd
	 6zEo9yAoHIT+aOXfbg3O4UpHdCQVbyWR98o3YsUgoptGdOQvtv/Wp9mBdkktOVa9Ph
	 EjOMm4kYhwjPQlgEzJqpA0g8Rg0qyqZOIwBI5i6Vb2as0S6ZqnPdBrlXhQ+WlxPPGg
	 X4IxcJbtPKDxTC0I99Q5Ba/rhZ6jtK+z5VaoSiRGhB4Bjd7DhweUKhBK1EZyemwnUu
	 4Fk7Eqp1KhNCcusKrkQXlbX+gkfrxUyFpX67JNAVhstJ/HF9FnJHYlo6qcUsGlwTG3
	 aRQmU4uMGlF8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7484C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171516374280.22787.13412626864323098392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673f0e65bf18d6d4489a95692899d69e845c0ebba87f0670e322838c7b5eecdc
Date: Wed, 08 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715163742
