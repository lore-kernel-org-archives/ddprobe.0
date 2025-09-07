Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6C31DF246
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757277594; cv=none; b=Wpt+ToH7De752eVBNXFaMzSlLh9QilH+vn6NV3ltiGcLq6RXP01RmINJ1vqGo4xEO9wonMKixJ3XZ+8L9LPKnM/jweYnwW81a98ZpZqtSj7waLtn074EVMwoF7k8TV2LAYjv5JeKzEQvwzo2Q/mvZunkgW5+BKT1VQhriisQ7h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757277594; c=relaxed/simple;
	bh=0B6/wa4M41t+MT3edMz6ZVbSvjGNVqecb0iZOUIQp7Q=;
	h=To:Subject:From:Message-Id:Date; b=QZZBEAlIKdhQRItJcNmig7pQj7e0mEl02DWhZvYlgmRReF73+sRetT9jJKX1L9hkW/TdNEl8Eu78a9b84zPA1yI1fK3tVyfxEHD9wTNU8pmluOCce0JbTwm6gwPn1cc/21cgkYu+FIzKpgL7IxVShiYr/b0Yi4QitxO9e+PwGaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9maUzka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9maUzka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9E3C4CEF9
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757277593;
	bh=0B6/wa4M41t+MT3edMz6ZVbSvjGNVqecb0iZOUIQp7Q=;
	h=To:Subject:From:Date:From;
	b=B9maUzka2zYis+++VWe8Ph3xE9Z38xWW9LFJEYNaFXFet3/UchOntI/wsG7oZxCzJ
	 4jlam5JZuWfqznPm87YMR3cz8dJnz4JKKecqgbc7wbP8s1MOLnfbASPlbB+20a0Z/E
	 W01y49xola/0FeAQZaivc6WxZT+dUAiFgKeQdTbtNeCOBIYqaPY32E+V2E7xi5PGbR
	 UbyoDcHvWXNSdiCZlHJWzN/8WMhtE+yuZ/K8uJb4PDGjKrWp4tH+MCUim9m5DvaL6B
	 3j3TeyuQsGqA996nsC2r6BzcQEL7PbV8DBKaDQcg0aP/8Z34vEaKZJf1AFE0qsD3b0
	 wyyziada0UNOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0DCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727759357.27486.11523130180725257145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9a9c8fffcd1373b7e23f5926e6acc66139d6a0beaa588c0c6b09e5ae28d9b3
Date: Sun, 07 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757277593
