Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536051367
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735438554; cv=none; b=oES6bjYeQlP98pG703Nfwgw566Vow2LrmQ9UjKBi9cMQk8xvCkmBkaQ3ncxSal3OyZdug7s80hrUShGgKbZgSItuk38coRv4at+jXMqOI8Um4aC/ezuYW6AjPdjMUywSfcKWO4RmsYgvAjC6x6SnMS8IxNvpm183QLcWlLxqpvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735438554; c=relaxed/simple;
	bh=DPvjVaJCFDFfOZARBaHuhbf1rLSFPietzzsY0AuUc/M=;
	h=To:Subject:From:Message-Id:Date; b=O+B+MUjKGTVWCu15FIDmhbdt8Ar7nTYuMk07eoMSHTP1jaXBkyC/H/hI5zJ0ccjx7G+dkaQbqP5CF82PTw/6rw/AWdqMDVrptlkEsDtVOI3EQNJVVRVZzH8g7Uc2hU6mtNiCem/vNs9WKrOM06Vh+1InSmFm24rMq8oIYqxJmpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW8ekLK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jW8ekLK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ACEC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735438553;
	bh=DPvjVaJCFDFfOZARBaHuhbf1rLSFPietzzsY0AuUc/M=;
	h=To:Subject:From:Date:From;
	b=jW8ekLK76GjjvztzuJXHzlyvFYgE+554y2SKBhYad3BfSLWBkBj9EjjoDxhBJQcpU
	 1+Fur4JBDKYkaBQWDYoa98NUSf6hdyE42zvxQROQLTgYapK7G4+0x2NjQO162a2/Gs
	 nfcoKT4H5CSaHUimqMaubjrsCAZVGqKteKoX0emjiAOSbjFlhXGI/hPMn20CSsfh+t
	 F9Smg8oIW34rQrTCuByIphTjQ3FkpLq9uDwVT1j0Ua/tZthpeQMCw5ieFUQY3g3wmg
	 yYM2T9z+yL4SkVAbm7bb8hDiuoKKpwoCwuxKuZiVMg6Tn8DfLGUPx3vpQFfjkFp1Ph
	 x6uyG4CGQKyqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96871E77188
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173543855359.23281.3764371251780311969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3626d616492e3a4a4860bc46868ed112e96909d971a7769c35e625c0522e06
Date: Sun, 29 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735438553
