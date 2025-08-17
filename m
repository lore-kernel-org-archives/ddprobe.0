Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA4422F01
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755427194; cv=none; b=i+IXm2TxPyQ5y099srrhalx4FAzzFE6nMsuP8/x7U34GmPnJhw1ziKtJ0uFU/1jI1jhy3MMZwD05KLDLJlvmbHqo1vccg4CQ0u2pvfMRgb5Ej38NnsUC/U4NPOZXLhFxJV48nFGX5mIiBHIaJcMxjDpOq42S24xhDDmF2arzusg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755427194; c=relaxed/simple;
	bh=38b1OZaweyX6PybfZVZ4GnfFTs5gPd70wFq9NJVflaU=;
	h=To:Subject:From:Message-Id:Date; b=GY/4V7wugIws7xBwhfvittM3PSlGRhZNkdPadwNwbvkYl9CpVvKqt2k3IJtBVco7l3+GKWVV3OZ32s8gkf3N1wEkf4sxJTFr3SZuXSjttNOES/WRfHs4thrgYvrRnkg5JVq7xQgCjOXN/05LLWEXGVdtsbSi2wvGrNl2QJyf0HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOs4Ayb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOs4Ayb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB67C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755427193;
	bh=38b1OZaweyX6PybfZVZ4GnfFTs5gPd70wFq9NJVflaU=;
	h=To:Subject:From:Date:From;
	b=HOs4Ayb45MESbvDreEaGTIHm1SnZ7nmbwtqS9hRaP/99oZhnBO2ShP87g996w0mV1
	 K4EFmzwpfvUypb4+NV7F4yePzUori+D08r1U883bGWDuvQMtAAVr0w4HS6IbIQhViV
	 R1QqB46T5NScPACRNlc69WWsqBTqg1+v8swgMwAKuW8dXfNtHc33EHb8Ii8GKmEe6c
	 a2UDKEITjzczi1B9RKu6uoXvDabPDvKnK3g88RtBnModo25kjhCEW7JNUN5ZpZuQxo
	 hBZPwNlI/OB69ZGtjCQRV9/uquHLCf2V0/FAKjHZO909GOjvZ+7gWBS5NQd7uWqX+y
	 5SSeV8aVH1atA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9DCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542719357.20237.4785001618808557959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493b935a26ef869127358c6e13f4e03ca1ccc967e1d3ea481d407d0cd4ad46e4
Date: Sun, 17 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755427193
