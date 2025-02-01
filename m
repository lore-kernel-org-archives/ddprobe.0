Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A29191
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738368354; cv=none; b=esQvj9laxizHaPsROQL4T/WHqa3Q1oiMpputs5kynrLz6LfivTfRqErfrBNi1fi6jP6EquiC5qH+W9afvZMEtdVYtjHpPZC0wFOmf9vfdAun6WVrzse3aN8YBNqYQP+/IhexXQVxWUdQpbPux2qOorGh9Z76LiPrRtpjf9RWMrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738368354; c=relaxed/simple;
	bh=10AGKMN0/pDHYqUWyM96JkCZRuOPTl9t1NtljMDtdw8=;
	h=To:Subject:From:Message-Id:Date; b=rY3UGVDxiXnidLnzLmN/oTNkn4Z+gmdIor07d3R+9eadL5BNdIy4m0CqUVJN+Ipek5Nz5DUl3ENEhPnr/i3hxT/ZNp3aYgfw5l/HDIcdVtxdfFDgAUehV8snfmrZ5lgGYDyqwNsKK1AnBy5ouUC+uHIJQ1xMJXFZwzkvLMRZ1sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtdP2D0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtdP2D0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1596C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738368353;
	bh=10AGKMN0/pDHYqUWyM96JkCZRuOPTl9t1NtljMDtdw8=;
	h=To:Subject:From:Date:From;
	b=BtdP2D0TWWzL+SLb2EjqTxvNTRUQVvjf33ukj0rAWFPWOYmO7gbf9G94Bs0ilywzL
	 YEZsnVzSllAxdPpl8FXS2rQudyhcMKjePhqEkt1XB7H0CqQ9BU2sA1/V4acaLGJ2is
	 hmxGIzeIqzXIoOU+VthbR5ax4eBSemOZtZmMpZS9alTuI42hEMzrWEGnWbAywqcY9L
	 EqCd5QDmNMS7W3Zxjpoq9BIHiERAYmh5Zu9qxpCWWRZJmMoUsgMkQf0zIGAaDIq/oo
	 gsJd5xo7gsIOF1uoriZUAyCXAcDeoFNosOC018ictTTIJr1xEExID3spP5Az9LUkjf
	 i3Y8LQi7Nam6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B662C0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173836835362.14174.12180539191331843149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d985739511d28a038413a91f5c5dc77508b50b0ef6475622ba5a027121454fd
Date: Sat, 01 Feb 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738368353
