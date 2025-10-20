Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DF12DC355
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760950794; cv=none; b=V+55adK6zhFKtEiBycsQOdDzGn1avnxXpGjj4Y/FWIKurtat7DwuTNKkW4nsjA/qRIrHQc5Tzy7fGkv7QDzKxRT4R8SCtt6ncTnwN1z7hM3Wj3KwFWiEc8CU39tvbLidFLZS/j5WHWZCdR6Y2aI4gmaMn71HkiXZAakn5XhoiSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760950794; c=relaxed/simple;
	bh=fpqIdwmJ5q36eGchySKL/p3Kgbjiozv1UNDeHHuFQcc=;
	h=To:Subject:From:Message-Id:Date; b=mtbLHLq+sEhCI729Aoc7jJE7BaGwR2WrowsDmWNYMtjvaUUMeiJLlP8YTrdol+JLQlmaSPadXIKmQuSwK/HlwNVN+x99I15+FdQqXGmUwzttTXLtfw7pXqglJGnNRwExuNYofk8nRxlamxTLXyp6/RmcDn+cIIMEgOqxjBHRqSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmjhJ9Au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmjhJ9Au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB32C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760950793;
	bh=fpqIdwmJ5q36eGchySKL/p3Kgbjiozv1UNDeHHuFQcc=;
	h=To:Subject:From:Date:From;
	b=UmjhJ9AuWrJBHnqLcCyDkqwj3v222Z3Ukoa/qoAUyGNVJ22h8knOvL7k3pl9v39ij
	 tfYr/ydWcxMhiwIp3GqTq9/BVgeiooaF2cu6zToccySYFyJJt8VHOg7pFISBdb56dj
	 S3c8pd1bzz6toZZBug5ZvF2Owiu00K1pOSYSGn4696hIOYjGYIp/TxxWEpKAa9KtfJ
	 GUCUPPJAtoXkWTH12Uk/zKYlhXtHsK/4KyoAJ+5sDZ39bdEAKXoHTmDOpXANozrX4Z
	 X53SQ7HGAybCN01EYoOSKuZHcdJIdsaW/Tv3qkEB6C94GycS0PxCSsfGHQrv65F/tT
	 x6xe9IxOgU7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A6CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095079357.15276.2863643579166137299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49297fce706c774be807695c377e2f4568175d16bbad2ee9de0748229cdb506a
Date: Mon, 20 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760950793
