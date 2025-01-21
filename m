Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E1D1F152B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737460554; cv=none; b=OMQE7b+8E/Xkhy3FwSNX9x9y7LMj1jcgJvSKF7D8UuHdHQ5lebYcOdAcb9z6NNnSoES+Cf7eMP+Y5MD/fLDnZZcVKfpHihJ3B7AkCvo05sxjglCnQtfRWewmOjWJYXaS60nMFkszm7v/Vo3T3Y7sulb2zUvlsFVu2ZaTEHDN/5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737460554; c=relaxed/simple;
	bh=PfCaIsW4695aF0uNGWY0MolkbuHsV3W1SYx+t1CXyDE=;
	h=To:Subject:From:Message-Id:Date; b=cWBn/ZZLi8sKcA2zT3jECgKG7RccQ0yxcKKBj0kj5A7PMmuMXfXduSDhmTe+nd45MVvvlcVS+qZI1oDiEr3H4aDWhAZdPkqlxZ9hLIEQ4BKptIekI434bmZHxb/+nZDSquTamjI/Dt6qWZSSPTLW3C0hKEjvQUCC2TMb1Vc5QKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwEIXrdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwEIXrdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453BC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737460553;
	bh=PfCaIsW4695aF0uNGWY0MolkbuHsV3W1SYx+t1CXyDE=;
	h=To:Subject:From:Date:From;
	b=QwEIXrdPJKgDFK84+Rg34IFlE1jS/T0zUVZiR7L+iP46KqUqDB2pv/z4rEuYbZvVk
	 SyQ0US1KqP6Wtj3nxhoabEgbIEpYeemI9GV98We59QMAxVxRkdYCf0iUAI6e2ynLw5
	 sNgrhA10h5UcNNj9+4wIxJLFSD9jQo4p1NCPlu7w+lkPKBtN0nHXnLKBxF8jnZgoUF
	 lwJERnZzM30WCQXhiyNq+hXVvj+vwdE5dDLaV8yV7+wyGvzZHDRRrbH8ebK1+WjGZW
	 Sjn11TsdFmXN/NclWgK1VcKfQROiULgiJ468CuD9xPD+uQYIpKu4SkxwknFRBrzWKP
	 Flk++iExMWRow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B3DC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746055358.13660.14388022198193691032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054f0f706118905af7f97e6e41c1c405c126b907cd534cf87cd9728c09f9083a
Date: Tue, 21 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737460553
