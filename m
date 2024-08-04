Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2260CEDB
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722732954; cv=none; b=GP1UtSfQBdei1hbUJveTnHERM727u22dNecGKD+aoAjBqWdD0VO9sWlT4lRI5G88Oltnu0e90DhUM3ZRXjti4jdqyIoNgk9axmehMt1yZOjsWj7poXn8ohOskrop0KRZyF4V27ZtpAvmVjbsyP5WyT/IBdiwcekwNPlMn9sGqfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722732954; c=relaxed/simple;
	bh=NYddii2binThr0o/rQLnNH+ECoT/oQP+rZifW2TAWgk=;
	h=To:Subject:From:Message-Id:Date; b=Yd1/zq8WweDDs5W0oXSZev3Aa2n6jjiDRzkkxvSJPgR1jASvS9rdq/7fko9lln0r7skP/Lf8/K2dXmpXp74gS7FcD9D9+bLLl8LY4EsvOQgAGxpxeyOPdQTXAW6LaJZYzmfj4adi+y9q2r7aqvK8mQyqtwORgJFOWfZMT5Vw48Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQmL+c9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQmL+c9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D52C116B1
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722732953;
	bh=NYddii2binThr0o/rQLnNH+ECoT/oQP+rZifW2TAWgk=;
	h=To:Subject:From:Date:From;
	b=gQmL+c9V3QbvSkKdnF65XTLNK46fFw9gYb/3gLtMXPaKomCqxcQNQk9+xiYfKXLZT
	 XtSolCZp622y+cHy/C4zChhHPxk4aOzubPR7INhHDUz5Ov07GdQFXKIjluGj9mTmHV
	 diHdisoaWWWuWeG2ooufCMVTbwlhFOYEpfWT7S/c+lEEk5wC/d9S1LyoVcaLrnegoK
	 B5M5QaT0J/r4jzCTbgh1ylx4kKivzNgnvX5evYnFNN55Eguy23fybtrEtaUhGqdA08
	 weVxsfgik9a03HoGvbH9ehe3jExxEQtFJPYdXxmcftGsdOcER2XPet0tzzViaJLVVy
	 zaOmzIBSBIR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BC7C3DA4A
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172273295359.3538.5472090859892778260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbe65685d51558302649241a28e9f29c1cba83913ba731b2966b1c81711c88e
Date: Sun, 04 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722732953
