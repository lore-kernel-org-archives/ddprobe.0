Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3684C6E
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752797994; cv=none; b=LouyZ7ir4CbSQ30SAP9R1RmlnKq5VGF7rIzditjk1c5lDBzfQZCIwU+wsPsgpl+3vK0ayp9QUsl9/aoAbnaPmgHfh8SB6wHURVEhKftuRTH7atZboafoNBSHEQlhWZScGFzKCSnXwzHXnJNjGRVBO6XBUp1c3wTCYAevf7jR388=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752797994; c=relaxed/simple;
	bh=ccho5w1+KjkYVzCAaKuPMITpKunAQxsfN4drP49hgNA=;
	h=To:Subject:From:Message-Id:Date; b=I6d5gvYyNdr0KZQUOJrlheaACI1Aig/bBZyBkyZfe7kGByP3TVl4anrDfGP6P3yB4/eEfPDM9b8cih652YrXrP4xKSfRuYpkSyswazRmXPG97KGITiGo9606We0E1aKWLw1upVDk0xKX5fOCmesZWQkf44IwK+mOCTiqNalV1BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBs06APU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBs06APU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752797993;
	bh=ccho5w1+KjkYVzCAaKuPMITpKunAQxsfN4drP49hgNA=;
	h=To:Subject:From:Date:From;
	b=CBs06APUPQK1NDP+60m96E2pUIRoL/jVDTBEI55mNuTpW9GKGidW4/JGv52iPORc3
	 oeRt3k/5SbyQ0XxhyLd90VjKecq+qtecmfocOH1e6Pyaw+Afzfu2aDXYkrkmwdwG2d
	 TnbxpAxoZBfG6dQtbStPD9TqJF4ztz6ji/9EAbqH6R6ryNC7qdqI8uViChqXrfVlha
	 m9oQmba8ZppZVO7qEunuQqd7tCjKMUGn7nWM1p3bS0//H79uamhcCHFflz9lNeZ58F
	 4IDZB6POHEBRjVLsSwOcGmLa83xovs7sbp74U98sx+SeS7jeSo6qFKRgVzzMW0WxwR
	 wSEpTEL+UhmlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169AC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279799358.30636.10318362289088205570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c642c16d13045f328a4567e32003d083710afd621ff663e653bc79cf9115af7
Date: Fri, 18 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752797993
