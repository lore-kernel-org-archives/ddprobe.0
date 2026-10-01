Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51351390CB2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790866234; cv=none; b=sPLK2qlgQRzrYaFQUMFg1g83UfwuGMEXss3XBwaqMJG8zU8iJq0At/EYakkql6synu/mMwcgGizsLLRncMbvz4Q3YJENN4BCabNUI89n+MejBlbD/0dCMkg0ixZEgDt95EVBn8nZ8z0p+sqfFNPW3KiIV6Z3aqi66f/da9mU6Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790866234; c=relaxed/simple;
	bh=RhFwa6zoQJLw6Kf2dQrTJB9WnyJCjjoVkyGWkS71h6Y=;
	h=To:Subject:From:Message-Id:Date; b=pzaE3KOx69li+kDBMQt/NmlAHOt8TEMWO83WR/dicMT2egg3HXHFSpWJbfUqI9MavKzH9ypu8HvCJMcMdPIsFWf8nkahEnnCxP91tJxkCiSSkOJ4sjT5m4V29ssRrhkIvfYzNSNg3ioOeLqY30kvQtbP428Odj3vEEjGQoaJ81E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4K9PBmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4K9PBmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D24C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790866233;
	bh=RhFwa6zoQJLw6Kf2dQrTJB9WnyJCjjoVkyGWkS71h6Y=;
	h=To:Subject:From:Date:From;
	b=k4K9PBmQmHZwi2lYCTELtyujp4oTgu1SjxS+tyA1KcspGFJNEA0FUcCZbEoGmoUWr
	 hrIIJafeLQtmOZm1yhCqEPDf6sDa8LFbY2VcXnbuNvMdXePwBBfH7C3hDTMek47+rd
	 dfgN8v2HEzvnXpgMZnXMcR5E17NesJGakIrww673QI55dLONP97gPh75ZhZEiF2vjV
	 vONfN9dUrQvzNIhS5I0kkPGcoa0sMaoV+1HJt8OP8YwE2snwO3NNNs0rjqhIMNaYx7
	 yxS+3vSEWv47isJ4MwrXvA1f2v+tEs8Hiq/DOTQPTK241bidpDhk/ulXc/oS+NtZGi
	 ixsLa7UGF7k5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4AFCA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086623370.15965.3688156030331804811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2862e5607afdb9ffa220cbb311fc737e77ffde9e7e78c895f5e81485d040a3
Date: Thu, 01 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790866233
