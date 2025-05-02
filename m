Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA6D2F2F
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746159594; cv=none; b=O2/hRTA3pX30Dk1WPIPR6LAccOUpEYTLuzYB3KYZt2++A3Ma2V8ri6ooBXB3YQDQ4zRD2KGADVkNxHy2s24b4g/x92KQPDUSaT8od6no6qVIyfLu28MGycL4QSGLNiR53W9K0UOq5aFDJsjNQunYRFWVsYPGUweA1V685XGBAuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746159594; c=relaxed/simple;
	bh=5FRRX0aAgcBJgBmTrAOj0jBLz9Q/kDjVZur2nIzzwvw=;
	h=To:Subject:From:Message-Id:Date; b=thFAgSmW5m1ZaEx4UOfCzfSMIHrzs0gln3uukqHWY7OSl6n+kZ4j50xaANJn1xsjBa1EFLc3P2V4lvQsOdvYX3IhnxhTuqNLZa58AjwDxu+zvm9r1xNsKam1OBReem3kJomGmHfeF4PBRc0GlGbOa/z/m1plH7D9U18LH4euC6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttOviQZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttOviQZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FB3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746159593;
	bh=5FRRX0aAgcBJgBmTrAOj0jBLz9Q/kDjVZur2nIzzwvw=;
	h=To:Subject:From:Date:From;
	b=ttOviQZnhAnvnKndiXUAbPZcCj1/kBDLh3S9hkIBtIH2a26ihUpdYlaSG7SdwUaPj
	 e7YV2Dg0ZwKI8hr6CKs8aPO+eO4slChc6l6dThFOeOOeILex/SDoMxwe2GTrXHQNJ2
	 5cxTWvmXb7J+r00K0sJNb47xO2hkEqLHLQoy/kCOaa0e7QEAcbP8kKzdfaBzz90Z6W
	 S6BZpk/pMHcdGR4kV/GqAqaH9ckhNwsxVBHHVdQVV0B71CcbFiiIUW6BP/fnkeGa2I
	 uEc22aWSak/gm1axj28aSCcX5Q9JrGjnzzUpvq6w8i9Sz8bgeGa5toqnaimcCdyb6J
	 jG7hDVK839VGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A290BC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615959365.27582.8826704900899271554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4af7a64e9a5aab21cbd1e71dc4b97397419608bc5141d87dd8ffdcd2eb61cf0
Date: Fri, 02 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746159593
