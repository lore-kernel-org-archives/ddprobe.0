Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F0637CD33
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791672034; cv=none; b=oln63ck4tDcuIu1Kp7oTDFbRTIE+HCs3n8kPeLfEww2DKZIIEwmu8kwwKgEAGc6pYIiODFelmj59DUPidbALAJ1ZAqQo6KZ73KzHB81WBDqJVj6qXgbGjLz23aBGz+UxHBtzPbbJsxQ1Fmq6qQEN9e4SW/cHgZ0hzJA1EB8ImaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791672034; c=relaxed/simple;
	bh=u8VlIu8v4lNV2wmyxUZLJ9STZ/0/CAEpThlPYIQ83kQ=;
	h=To:Subject:From:Message-Id:Date; b=X9Uyq8IBfMrlim7ZMNMWkenIP/5evvcqkxxNtawGEyEciLZhDNPDGdNLdUqZVenbo/XNjJghDPaDv2Vxroa0mfwEfZnBcs/1HyVS/ULYu1f9YA6Ehpnl2MNqwMQJJtqu1nHZny6KV+OJY3OVAUOoJbJrgWHigt7uQcUoMyMikTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTAMbb1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTAMbb1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C35C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791672033;
	bh=u8VlIu8v4lNV2wmyxUZLJ9STZ/0/CAEpThlPYIQ83kQ=;
	h=To:Subject:From:Date:From;
	b=PTAMbb1RuI5jknHvUFEA2qpc5h0Z3onsrSnQhjX2N/zCYJA7Jd/mqdBGgE2hKqcFA
	 vxPIw07x9fwUtmubt+hedybemFKC8EEGmDgs93VrWjTc5hfqrS1rUh4dmkJLm+SYTw
	 9yYtLGzl/S5HtyxyVW1kcmIHeoYH1G2pPPYSWWtkmUKdt0g78BH/IuJTVh6ejNFphA
	 KfRgujZSgoyUmylqulEGCEWwDYevRMfThNR7XadjETffdO6ii0etJzZdNBHbenmK1s
	 S+iQd9RH3HTm/9O8h98UDPclsdLZ1NVuJ3bW54l5+lDCZ3QnH6CFfgPp+6jKX9pUca
	 ihRkYnw/xGmqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF101CA9EC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167203368.6195.10277007024042736815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6df933205ec6e185e056ce741ac94b0198b80080238fbd163b747c4d61d884
Date: Sat, 10 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791672033
