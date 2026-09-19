Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0FA2E0B5C
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789784434; cv=none; b=Ko8dJKEitOf1jXcbe9niFbct46J088p8eTiodZ6OQYgrwYlU5WRlhLZZUJFH5G88rP+GCSu4MxB/MgH4QaZgXvXpVNGzBIN7jEPznJRrlFtIqaoA7NlAEkVkdJWOdtz+h6heckW3/8YJfYMkzC7BEEdBJSFzeQMCl3nCI7Kpl6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789784434; c=relaxed/simple;
	bh=DXLZgE5j73iOTkzLkqidDX1isXYshCLNSj6KtBu8yDU=;
	h=To:Subject:From:Message-Id:Date; b=gVHz9qZXwY9gDcB8tTOkZCjURclSmTwuhd02EUtW+C36dRoBaB1yIGwyrEkO0pAyc8eSZ8DU4Z6gODBuMcjcUxXrJShigLeZXvrLQH2x+mfqDa88lOf84rWXr4dXu2OXgSyotqgjZS39rgL/Zcik27ftaFfzN2rb3YnjeE4Mh2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJ6tADZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ6tADZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5335C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789784433;
	bh=DXLZgE5j73iOTkzLkqidDX1isXYshCLNSj6KtBu8yDU=;
	h=To:Subject:From:Date:From;
	b=AJ6tADZvTXHy2mOZAsXOdUXngIyCQ9DnUxmOcbtR7kCqODgCWk9DakVMWgizNKfO6
	 KOqACgoN5C4LuQU+Cp2FNT3xQst2JWwyFBddayMSLs5E2/XmkK7LoERXQyslhDyqRz
	 Gh5frMES8CXzcXKFPFbVOKbtIBOwPbpKD3I4Sq/v87f3l6Nh+XUojq/scErEIONE1o
	 01ImnVtd0ymXHPd4IlpEwuF3wE2xLArmFjSKjRIzgUqGSDSAxmPMe2P08OrzNz2yD4
	 +LSq6wkqy0jfrDWi3OzPtSTlLL3YViu7zEKOjurtbfnovBlfeuSuNVxnW0WHapxO7g
	 UOJRLHPsf8p0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1817C982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978443369.9165.1209630669644601685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71100451b9dc336f5ae3b54ac0137969336a63ea53388f5150156c50017d5b4d
Date: Sat, 19 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789784433
