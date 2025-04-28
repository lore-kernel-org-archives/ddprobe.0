Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353A518F2FC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745860194; cv=none; b=I27NaAC89KiH8q1jiYiG7V68j8eM57WYuq8XMmxgvOwy5cJgkoMps7QonL0RW6hfF/5etZyyNXWMGrnsh1NEjH8atG6LXmLqU2efs6lOCFWiANVVILdGGoezgBZGSNvwF8IBcLoqYRMGZuleUKAqmLBuxdgfypn+ywUqIyMVkoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745860194; c=relaxed/simple;
	bh=iewfyUOb1w48V7C2BI3HgyGnU8y0ZiqsCg9qUKaneW0=;
	h=To:Subject:From:Message-Id:Date; b=Wobe5YQ0yktYbS05dCBcMc9tBBckEO2xJJICTgQBBbp+LfYtbEC2//QBWu/ya3lwm2v6gIkUWH+Sto+Mbf1BHoDeSC5EX+VUJqyNOWa5CGjpGDzTwpW478Og2GjmrHOOZ4v11Qsc9hNI6np8S8YULmvrOBex3qXC/EQo5Tm+BPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVsMqNSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVsMqNSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA72C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745860193;
	bh=iewfyUOb1w48V7C2BI3HgyGnU8y0ZiqsCg9qUKaneW0=;
	h=To:Subject:From:Date:From;
	b=oVsMqNSpKEF3wbdeYbC4wbNysPT3tipoMGXovbd87xaVxGNDpKHhDoCvov5KOmGKO
	 HAV5Ht/TMmZJlM1Z5ycsi0ddZFCLQpqzRB1JH+YP+KGWF1yjvv5YchmeN1q9JynAjB
	 9q1RtzAL5/1DneMEZTabX1ZFOyiOBBf3EAJ2axOQXjdkYfVoJimbZRUD7iZaEctbAi
	 I/LgQe+Lmb4pcPrMN9MGHJ9wk7ShRfvBG346U/ksPqmm0EJRaqzj/OwmuZOATmRl6k
	 1ll0GsuKzxlweLTxTIiYRKX8YtTcGJNpBQRgqAsSTtE3RWKqkZWlVQN1I3m9i6HKBk
	 wAvpStDxFGE7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA21C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586019357.31354.4759123939747169703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd9c6bc5acc9ec3ef135214095bd42b7b1eb67a9233c341b0679d8e0b09d834
Date: Mon, 28 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745860193
