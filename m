Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2544518DB0D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771373694; cv=none; b=ENb+zpaz+fFIud02XSq/pldvd6Gsv81PW8qUELF5PkIZRJiTAPmY0TEmYuAEAAjm5iWdqcbpRFvi32yiJQIQudj4wQ6SMXlJedRfDZoRbf95GyRnBgOlXzPf6wa1mv9gbKOrApO7pnVH+WFTjCYH5DYyN9f78t3u8Ez/+JsY4qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771373694; c=relaxed/simple;
	bh=yRyxJ7ePyPdqfY1bv1Vl8in+B6ixnSR0Hmdp39PdGiQ=;
	h=To:Subject:From:Message-Id:Date; b=cfD6JZ8fNvtuJ7ENDXPUNqvc6HZehrSmL8bPQESrpMQKfkouR2rKDuS+ETDIe2nJW53Uip9UdzirFU4KNYjQ2ZxHsJqw9qu7EdMYF3LlDEA8T/TRBo8SJ6+/ApR1QOIxmy1pMCmWhS3mO+RZIhakRv//NKZMhgWMbVRCAnH3Jjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPJ9cReP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPJ9cReP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C65C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771373693;
	bh=yRyxJ7ePyPdqfY1bv1Vl8in+B6ixnSR0Hmdp39PdGiQ=;
	h=To:Subject:From:Date:From;
	b=GPJ9cRePrje4pT4uMKsq7Te0Ep8hDZBzUW+jJ6fS88kK+9PdS//oe8OddZ0lHctqT
	 qgXJbyhLmxzOwhVukUKbpbdgRE7JVEeA12DSWNdW5peqZbuK5uPXGp5p8BhcsaTphf
	 c1rceRbrIlWjfm7+bBYN2XcvKxZclv0ptnkBgUDNBAl3bA5OeG4gaJ3cpQpduKrtWo
	 nVI9/fmu0iogwAy5mdLhONO6yuYkaR5AB/t986SFCieEL4FTMGIA6FETt02SlRlZtn
	 qBN4gmN2bWLE/gQJX7jVhNwuh5ewf1Z5ynthNuUlXVITEWJPADRFobl+KCiRr0ngik
	 Nl752IWbpL4mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F74E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137369359.15115.5875217909103384007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da785d9bae5b69a3c20cc51465abf7d548348e067c5c043d7b5d9df523e30400
Date: Wed, 18 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771373693
