Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB5181AA8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781828794; cv=none; b=MRbuPd1ezbemggKa66/qBaeG2fqkEvDoDrHSlDUVEtljuWcQyXpseTjoA8UfjC4oUVUbPoaglZSKYeStmhMxFtSzWUDmXvnJGRkN78YdUy/DissHsqUTMq4hU8iGfjChR5xvlNGWahYXQSbjov7iIolKLcIoNvDcbVQyceaW1AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781828794; c=relaxed/simple;
	bh=B+9b4i1Pb8GI1IEIoY1WFrDBhkKXgWUsZ6HLURnSdko=;
	h=To:Subject:From:Message-Id:Date; b=oDN4c7GGXs9H2QOMSkfUG9C91c1+V1QvJSDV129mG6bjA/MJYFjSSxmAm2eK679JCT+3TNhsx9YvfbxvQ243oVpcMkWd0rsqtwE7/Ex2m/gGZzU+8ZZFyEUKleKMyo0/rSJ6RIweByAvJjNtAz3DzXt6gCwUsBu5dl55j88NqxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBrzvh11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBrzvh11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3430C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781828793;
	bh=B+9b4i1Pb8GI1IEIoY1WFrDBhkKXgWUsZ6HLURnSdko=;
	h=To:Subject:From:Date:From;
	b=jBrzvh11qT8Mavc+oXidm16G0vvIwqmUnM5CCy0n2Ci0cWmz9nsIh6ayUWxcaoGga
	 OH5TY8cPGia1eXl+PKVtg0gMlMOqThb6UJGjtRjj3HQkrGHtxpj3MnITTmd6MuLzbX
	 e+keOz3ZVU2r++wQVdvDOtNWyuU6aXH2eUgdyln3r4ZNHfZtrPNAxiXZQJ+4b2PgLl
	 zTyuEekOES1ZBHN4xGRz8Wwr9OS41YO4LudrtxBeUrrHTssV9w5TEItZEhGINC2MJh
	 uRU5QCH+IQpunfGU9zy55XMuTymUFveGLER5NSdaENr2ef5owcpjhMBbqmsCnbSkiM
	 +MQNsPNOkOhPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFF3CD98F0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182879373.6681.16886713663474873001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6da2cb75d4c98b56ba7f791efea7dc1ce49340f58b898cd90f521267824bf77
Date: Fri, 19 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781828793
