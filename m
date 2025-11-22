Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035AF17B43F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763845314; cv=none; b=klUYfguQRY7uZ9qmiBCED9ENpkhCvmWBgFG/0PtraWwmoVmJB/2omhhD5uoS9WHQR+BzsIdbFW7++fCERzVK9N1XUN/Tn6/iJmkkUhD6b+iJn3Cuk/8b1lFrOzb5ExoJ6x9FnlN/w4gMGz6GJgiE6l/UyTutJBMSM5x8csohAgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763845314; c=relaxed/simple;
	bh=GEPFiAGiq4aPkCvFkYVfUVBouqsvutCIjqDF+pgHw8A=;
	h=To:Subject:From:Message-Id:Date; b=qIbXwRGaHirWE2z1zI14N4aN2N7nBMX4OxThX2eESn6aJOu3r2lkKOy/ZBRHhNiTsSYsFlwKtov5ywJW5SYnA/qTKNYM+U0nyb4Vh2I+CPbybp7a2j3gYXpUJ1rUjG8iOXMbgws9jqejSjKmUJy6GkeywmqLh+rpz6xqtsQgCQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upcCPW9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upcCPW9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763845313;
	bh=GEPFiAGiq4aPkCvFkYVfUVBouqsvutCIjqDF+pgHw8A=;
	h=To:Subject:From:Date:From;
	b=upcCPW9Yf/GqgZohCp3Z7F6po6COGXde5PLHUmmsXIwYvbIpP3SpR5bQBZGbF28eN
	 Ljsw9Nb2zLInNaO17d9JcG8w0UKnHMQzoTP3KKL50yEVDSOcA0g5DqfV30tKaeln0C
	 8suZ/HpEBZAZGOjhFJI3QcEGDtHHoF63WRQqjT08rBKmIF+LM5oHO/Ju4tf+XpW1y0
	 iZEvD2O3fzUfTcNgWIple39JDGo++29ErasmjzC4jo9wkNXEFPGcUYzm46EAYvIrWc
	 MBe8ee7WeMUNdG/dpLisKYXnoOC4JXgh8Y6lwp5PZ+v+it7EtaTzvoGeXW9iRB1bUD
	 fX9WdwU9fpKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164FCFD2F3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384531358.15419.146481146336339587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba38e5a3275324fae9db9be245f3e907e9f03585f52a4d94e197a2c7f141e33
Date: Sat, 22 Nov 2025 21:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763845313
