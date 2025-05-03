Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E1583CC7
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746284994; cv=none; b=AkD2Wh7EAx9izAdW94rXOH4WoHKIxgR6JHGutv66S4ttMPGZlFJZy2mcfkf2duvBMoy/ZiLN/Y3AeXrg0xkQtyL0NPMiMCNkQ8OocsIn7V0Z2BfZodlLnf6b+TSlnHiBiU4Rl3/eQ0YX2RU2McjPsDcKbVBTmbgecxyQOuvC5As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746284994; c=relaxed/simple;
	bh=HkFuW6dfNtbi+Wg9h/OkYW9GviqJnRNQbsXWm51tNqE=;
	h=To:Subject:From:Message-Id:Date; b=UmqZIeFrzZH/KjFIIkDEhEOLmR1GBLzpApCCWDbJka2SeEKwfmINWG2CdIXKCfJ/jpD7z/qOhhxj3buGAcs1Ih3QME6SlsEsSvkYX9MHmv+6KiGyY/NucBuzekbKz+jFF72i3HTpSx+5DPQcGFxVnpr1sMYFQke5ukIjJn6yXuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RteXVX5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RteXVX5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A8EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746284993;
	bh=HkFuW6dfNtbi+Wg9h/OkYW9GviqJnRNQbsXWm51tNqE=;
	h=To:Subject:From:Date:From;
	b=RteXVX5+fqrPtBB5vqL04BcaJmKk4BUpnY7x0cR3ZNwn8ru+LpPgggo1FrbybTZN7
	 FkHC1X43iR74IeMG9N/skBA2pN5lL+HMZJ0MQoT5NTS2NEm8lkVMPNd/vlMkYvrTph
	 F6xFX10ey2zHZS+xF55F9J0xkSi+gvYq2eK7cWdtmrNQlOdvW+jnwT9caLeGEO/0eY
	 B2pJCMcVOjBoYbQ1fS+ncP/YAlo8yCPjUSQdRUq7fsZoOLsLoYRMaGQ6qeSWLzjh0Z
	 eqGSRZaJjFCaOWrnD9tkVUBHf+43wChHUMdrYwzpTPeimf3ghKBVYyVueLn7DiJYyS
	 8RFhDSv3RYZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF7C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628499359.22343.13292201515541903072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acc2cb0f306b4d596d6e795dedc7201ad292acdd37b5298bb66b04bec818d9c
Date: Sat, 03 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746284993
