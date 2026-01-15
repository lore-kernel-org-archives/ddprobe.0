Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0646332BF4B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768484634; cv=none; b=uOgOA4fea/yVLPtLIo5IFNHZ/SOZwwCLzI2UIU7ZHEN6/noGvddgZDPMb7GEzSc4Ra+XOi/x/UZjtGiYT8604bdzk9voEnLmiAiREAJWUDS2xF7vtbuEnZTSf6lVvu+PtTLhO+kO4cg0YAjAL5OsmGc7O2NLpjb/cpXHNP5gYQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768484634; c=relaxed/simple;
	bh=pcA8qU1/OvCSh0tXq0iLEXZXMZgg249CKT9m9QITceQ=;
	h=To:Subject:From:Message-Id:Date; b=hxSB753wjsowupxp3LFJdXpsGgN8ff9cCH47aIgXDMOrCXFKGnqJrsSM4tyRH8dFWtW0NAbZD2osaU1jju+l69fv2rvLtFd6KZ7prmGdWXXEADXd7lS6jOFLR1GfqcKGXwmxSioITjqovSBSxrz4CZSjNa13jCCilfy9o08MYbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFudO7y9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFudO7y9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00D4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768484633;
	bh=pcA8qU1/OvCSh0tXq0iLEXZXMZgg249CKT9m9QITceQ=;
	h=To:Subject:From:Date:From;
	b=jFudO7y96PDmyioDItkjoaLiulKhTFaHZ9UdbcC4dks8a3+FeHRWZxdg+6eDVbtoG
	 RN6LDe9V5eokSw1HYQ0IFzPujZ3Fyn1PgrQoFzIINdr7I3VjcHvrbslmhgihPvpPnT
	 r2wQ7vNHbaQOdrqhAJy7Qvd7O1asWvqSb/1lPjKEAFHVHKjzMG2n4DAys6yBPglHZh
	 tcSe4ryikGDSUUhC2bGFXQbTcZGsDDAJ0sqO9jAcSy0+lq52r6AVoklRd9nqcTSVnx
	 ZCHjI9z3FjYRZ5khbPzRa6O2BxQlhUnUtV9c7WbOOyXYx9rMSRifjZ+Z/5b5+lHMIF
	 c8Q0szsYSqBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE00D44C46
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848463357.30652.17255458109069297851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189d5640bad399609a29affd718c0e6a5bd271675ccf539be8e6941e0e504b33
Date: Thu, 15 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768484633
