Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4123E2F3B
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743229194; cv=none; b=UWFsyWgUXVhhBKTpLzgCA7SPYjgdfqwY9PZ+eh1cd34I2qTQQQHQxjJQLQQdpp9jRpo6cVF6p+5o9vUXdD7cLPuS86X+8EPRIkbY+BzPORlITjMie4qCQtxEYcTsh6uIK3A5F6ehTA7X5wNmralayaPCYKH1CaX5FFJvp/V5g48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743229194; c=relaxed/simple;
	bh=ODAfx3YwxxmJ5PKQfkEeB7UIgbqOsAXxODvE4/fzhUQ=;
	h=To:Subject:From:Message-Id:Date; b=XNand1nMrIg0UVg3so88WJ8ZN89rXZRdKlxXJHY3KGLUW7Q5HTVRFLDRgwWHhOIl4ZSGjPFJC+faoOL4y8OYet4/YmwxdmsBpDcAtSNUCMTsOvZFkDsZDIHJCuuxLqpUq8AvBd2emut5LTk0G+8vu1V6rxMWovLK8ghKKAPPAX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLYUrvyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLYUrvyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9133C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743229193;
	bh=ODAfx3YwxxmJ5PKQfkEeB7UIgbqOsAXxODvE4/fzhUQ=;
	h=To:Subject:From:Date:From;
	b=sLYUrvygjlsh0IhGzG6K7/YTNIgDFQ2g7crDv7cyrnp6RxbzLWJScJihPzO05Yj1u
	 jzG3nyQLpScBoaQBXq/8THAA1klHXfCYgYD/Yulswb8uZvN900KdU6imi6dJ0LyHMV
	 29zXw7Ow6kP+RaqwifHFmskk36HtDBCrNSdl+pnHOlzqFogJ8MoXWc8qrNNROSNdVi
	 ldOVc7BSQBmLRpsQl/N9xa1EDr0MTpn/75w9/JVuny5UFfXAZFxJZUYNVwdtV7BkRr
	 85nvC3nsB3KvaP0PYHZDvf6jzEcQbwGkWDXBww14qxtqrsMJnyz8/2l8RwTGbZpMbI
	 Bc8i38eNayuvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9729AC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322919358.8731.5149413746961774246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ccee7a8bb13337a3fd8962ba30fa3acfbe208e6338acd84411ba9b28fc0562
Date: Sat, 29 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743229193
