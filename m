Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40142765DD
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758171593; cv=none; b=G8JwDFF+cIWjetxTJyXONL82z52ggbNdEDLWMv1a1dWoRBWqOy2Y2SKTWcA7MQ7jl31fUDOd6gGOHfxpwGdMO7PEnP5bNFikmpJh9toK2f/wrmxVZACarOtMChfiMhOMwAEZo1IZkI899ffqMs+YSV8VTFtQYcGV11gaOMx/zak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758171593; c=relaxed/simple;
	bh=q9gl8GoC9txpfC9rjRBwlAI6D2O+9e4+zQ0/NbV9GOY=;
	h=To:Subject:From:Message-Id:Date; b=Yvr/R17Uh0a3oIxXEbHMexYWvVi2F8m9n461eYOfnyDRiq/deh9gETUpEEW11LDUGmFlzaQWBW5oHMEfuTEnzoTZErbnrfBC4Pt6pKvV43dF1xayiJqA3RsI05v0p1nYNKjGz/+8x1gV5DfvqHzqLV9H3aRGKv7RdPxeid//Mlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJEsb1Wh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJEsb1Wh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA3BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758171593;
	bh=q9gl8GoC9txpfC9rjRBwlAI6D2O+9e4+zQ0/NbV9GOY=;
	h=To:Subject:From:Date:From;
	b=AJEsb1Wha2+Vav0l4NJLbJeFR3U7+15oK8mytfo50wxwD4WBUK8aZUrJwjt5DlE+3
	 ODCXfvRpQoxWInw+b+SF+CPf2b2skF0v5V/K3alc3FbRhI2pnASEarylljrWOAcuh7
	 CAE8A4nO2goW/jxUFYKI+QnSgrw/kuPyC0zr5plhvX0fiuiu70H9Z0viFy5N8JPot0
	 zD+DpOYuwAUZFBNBu3LHLd4GRoilEwQ9YjzKVem1UWjQYEkb+Bp0/XrHPvw/NwbKjl
	 iC9i9kVNqr3ff6ded3cQo5fI7UWWsdECcO9rF09l9vj8/BfvkdsH0U/TVld31xfFQV
	 Z5v6T4jQNEsmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42BCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817159357.1643.17335551105372127910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5332b4baa6097f89b63c6ff4299023ccc55b36e84cd9d989ff1b54bf78941c
Date: Thu, 18 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758171593
