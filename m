Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5220F2581
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737422754; cv=none; b=KB2kj1RbjH9LNlXdqjUD6XLZq4YR8n3fIN9l/SjMuprKtUS5xrNAJlCPemX3rIaKxXp+j3wKdU7tO4FBLphGtE0ADRVehqLutAyTEMBqSywyHOsYuCtqwoiaMp8QLphFHq9OpzN3OWoVX+yuTN3U6FPgXczMLGwLqnYagnu9JrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737422754; c=relaxed/simple;
	bh=sJfc0yUVZ1x2FNH1TNo98pDmP/tsuSk9k7Ko5yEQvK4=;
	h=To:Subject:From:Message-Id:Date; b=Hr5GeYx0YyARlMcFhUt7rNIO6bew5E0daPdfPs4zFYCTZY8QnR0a0E25Es9OouO6S2zWhVtgd/E1WL/GzwlpPNn7mngQTPzKbb7oG22LmDXbFTmOuDkQDowEG+5jto0gFFF/HBFn/3BXYT9UIHEl7JKmFltS1PVb3jVwsHSHucI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEEkgoZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEEkgoZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB275C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737422753;
	bh=sJfc0yUVZ1x2FNH1TNo98pDmP/tsuSk9k7Ko5yEQvK4=;
	h=To:Subject:From:Date:From;
	b=DEEkgoZ/MmNCHth8RqJQypmHiOccnUwAzsGja3cdXgv8aFB5BXIkcyG8BEhNFMxg9
	 sG+4AcHHgQTHoXaA7nKnHzw5CQU0zjIQpvM4bALZBWQTGvphC9YFAgyLXW1h3ea+3h
	 Jd6fTOrnXUUz/MZVGsbxd00fNWIB338eNNJ4GIc/M0IgnUjsNmh3+rW7FW67hYHJ0s
	 CdpdbGGbaP04RLkvyVoHHKEE00Lcm0LVOKs62bQ5JRgeG+GIcgdIQ4gIW70nl8CRjw
	 Hk4X9cxuumlmP08c76R3E5IIdul6/VL4VyCP8rL/JFPdFonHddwdkLWhdFAvTAyzqn
	 jBKFzRRtqKKCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92258C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742275358.3673.1365897178871708105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28adc96bba7ba4608e0e20664a5c1e5eee479bde0c250d92851bdfcf6b66ae0f
Date: Tue, 21 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737422753
