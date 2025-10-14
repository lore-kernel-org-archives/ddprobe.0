Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE1E34BA51
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760450394; cv=none; b=bvq3StG61G/YBhyMjnp8VcEMZTmcelCnuzgAQ8Rgk2yynWAppr1SsbREPZp9icS0Jwdqv+TDrwwfaXxayBhv3a0MBG0rUcgikrLK3dV+7g/dv6iIoVTZNfCAkzbR7xMXtSV7qUoHyG8lhOt5xJirOisNFuoENx9EBnYN8aegleg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760450394; c=relaxed/simple;
	bh=dhQ6A85wJr78I6xCxgdY7v/ZJahWLbirtzNcJ+tBIGE=;
	h=To:Subject:From:Message-Id:Date; b=iWxjkTcdB5m1UuIYa3lFKjpddiWbg3acBHB6jXccjzWd+KlnWrt6IVGyYQaP4at2Y4lAPf17GXso1knx1T+N5rA0ZqHx//bKyTLUgtGZQHnR9rujSH0lm33U0k1J+VVAooBWYZ3KSxftzXevG16iEzNBiZ5rKuLAnKQdqMIlu70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNAEgZZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNAEgZZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33F3C113D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760450393;
	bh=dhQ6A85wJr78I6xCxgdY7v/ZJahWLbirtzNcJ+tBIGE=;
	h=To:Subject:From:Date:From;
	b=pNAEgZZIjhUMC8QwZ+ep2gU4n0mHNnGXICcnMlhDLjilpIpQWrsUw9JvMw9/qSMAF
	 q5gsZVIN9/+NGcx5IetkbhKkw4OVwIxGtf3zRwFplc/E3MXFvynMdkS8eiQxVt1g2t
	 TbDYimPaPbPtd5u8s28lj0nrPTceDlGgHBsxk+l/x4CP6c6V2tc1x+7dXmuSU5SLmm
	 4zSKEVmm74sGw3ygfG6P4tQuNhSHGbTFt6yuKuNmxbck1+5KvpJX6qjjWVs7lW653y
	 Vs/jZrKC12EbcoLllZ7NTps109RBc6TlmZILECtSUx9uRa86dBYla/TZ54ShYWeNWo
	 5qMc+JcJj8DwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC3CCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045039358.2002.12037537728145605087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5838b0e15898c07bc7ce488054797fda1b6d1efd01895c96d911d0836a124340
Date: Tue, 14 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760450393
