Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D36634CF9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754885994; cv=none; b=u6RQFL1GalrKc/qLFdLbZ9y6DUj7BdI0+GAOHiCpD8ncMRMntsnYbUsg7ytyB0sMJnB6kErRSa8el3JWtqbSesQTZ4q4snoL8v75EYaYIGKoPYl1xB0YoMc6BC4nJqx1snCMcAg3gI4h8D5iBiv2rg6UFFgpGZrtFInaNhye7Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754885994; c=relaxed/simple;
	bh=oq1VRsIwfi4xn348fBOEMBIyVSquQjqELC7qdOXKXSc=;
	h=To:Subject:From:Message-Id:Date; b=GlAzzAffa7V82mgLyqYpDI1ZXnLJmwHALLkYLREXSGaUZS6T04MoP9YogFP4jVfMwh05/u9t4rjve0wC+fTrSlFWmjRw8F7Mt1MDvJHnmIemAWvenYHj7imC5ISIN+6Du6S+ictVLRPMV4zFjxSeJ2b4arx8sm1odGZcN/sPKCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouidJ7vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouidJ7vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F18C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754885993;
	bh=oq1VRsIwfi4xn348fBOEMBIyVSquQjqELC7qdOXKXSc=;
	h=To:Subject:From:Date:From;
	b=ouidJ7vdVHIxu0YuqKHdaJVEESd6gYVn57vbj510K1VkHdWuU4IOZ7OloKTKXIDjB
	 3QHpwKfEkyKOJGG/LZrzaNwGIgp5YHvxkM55B2HVBwA5PTAAS5+PaBd6N42Ej0fJjf
	 Mm7oIqYxQDCL3hkoGBZWxx1LzXWwyponFcQGwhnr98X0ZKMtuzBKWovTYIkU1RXU/S
	 y4N+qgU9y3Of/w8jsKqxhU3w6v7s5YP6J8+He/AaDz63wmxRAOkSsCtrUMBPlwKtgt
	 8vNJqm81HqXJKXq98bulZLb0nT3D2Q8id4ur0yZPx88AYkFUf7Cuhu83CCx+5gcwMc
	 jx9PTDhstNHyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109AC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488599358.32107.8078157225890528156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284b12933e88063d9c2a6d78942283f12cd3ce77dd2af85ac485982c3847a155
Date: Mon, 11 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754885993
