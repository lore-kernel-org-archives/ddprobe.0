Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C2013D28F
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738997754; cv=none; b=WGMv2f/jJjM1heJWo4qAmZ14POJPbXnop+Ba0bFyK2myuB0YQXFqzVCp2IVXt4+p+2wY693rmV02PJYwQNrkDOwXKMuIteWhXoS1VXGq+Dbp2uCWn92K/sC9EVAm2LU1W40pLFU/bf4P7E8dJLgm+sJRUDVbaN1vy1gBRx50jjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738997754; c=relaxed/simple;
	bh=6iG5ZmYS1woeI/HcNyN+/tda3tiZQ2klouKiqLR9iIU=;
	h=To:Subject:From:Message-Id:Date; b=KxcvcAWFqBSA5iZ6Zc2B1NK9g6Ak4f5OBqyeMSICWblzPi4Q7OQxvwLwkPAX5jmEmkiV5FeS/UHjaduETWLx8QW0p6WvReQO74LewTss8P1SCc/EccAJ3lv4nUX2EStYYbqZQTVfNJ9lmvJX1Wb34R8Ax5GaMjRhPT8diyWUhvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9pH57Bc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9pH57Bc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D327DC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738997753;
	bh=6iG5ZmYS1woeI/HcNyN+/tda3tiZQ2klouKiqLR9iIU=;
	h=To:Subject:From:Date:From;
	b=G9pH57Bcw0xM4ky2IJnsW67vXkrM90Jy1AHfbYY5YRmPUnBi4CVKnd/0N8O+UpAqo
	 dDt/VI4OVVv8pllBFauC8Tc8fzcvk6KaV4Oe0XIxig1AiyrpG3H9WFzIKpinovl7g8
	 9/8EEhAlATet4Pi+ac65bDaVsXf3L4Rj9bRzh6nbhb1Q2ScEbINhjVhbZ15LhQI4j8
	 Yr+mXpm8yZVcqystcGzSEnFZPnRodrm5mCEzHwM8PRHJ08m3Ep9oDuCypfEfi8u+wa
	 JcEXewSzdBVRJlTtdG/2uy6Sr0BxGUpMhRgnD9DmCz0yonvbpdf9hhRmn9n6/qkQ+Q
	 kSIwjB0ONiEog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9335C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173899775366.2294.7562824677346580488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd2bd11d33742ea9419bdb4ba9ccdf47102f6b26756fc4c527dbb5d427b75f4
Date: Sat, 08 Feb 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738997753
