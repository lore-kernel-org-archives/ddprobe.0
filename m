Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F4C192D8A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765458174; cv=none; b=M3K6TTyGoLydA6zuOF/14aW9wUUMysz94Nq30L22owTCINPWWdaOe2dBgEDlE5H0x2QJ/O0DYXI5FHSP8tKP72dEpgTqN7/6wF5Eha+mSBpMuUFsjW3WYpXRQx7bSTtIRkvWHrORJg8BxJXDIiB6AOa+9cDDoTCEz8Hj26BbBOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765458174; c=relaxed/simple;
	bh=uAXwuC/aGq8vVEOYFuA2dW3Idon9WTM8EJv4m1WdKuE=;
	h=To:Subject:From:Message-Id:Date; b=iS3LmNHGHe9kzfg4OZpltMJ9QPBnplFtyxiD4pGQZDHTu6TXD0DMklzaIz7Oa6HUhZpiieYxsZTrHydgB6LvsbFDWLDEdJ2rqeCeS5mZRaDJClzpD5McOSnAdauL54PkbqcIDaTGppSGZeceQwpzxcT9RFVqr9R/9dl3x++CisE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRNQzGQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRNQzGQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7993C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765458173;
	bh=uAXwuC/aGq8vVEOYFuA2dW3Idon9WTM8EJv4m1WdKuE=;
	h=To:Subject:From:Date:From;
	b=jRNQzGQiDQUreS+rZ8YGdZVEIIpiCMt6lz00ELhcIbaXlrFmBcsCmP4uPMNGjhQ7M
	 f8qb+onyuNBUOJfiszeCCiYH3mIRAdk2LzODbIgUl5QxlMFR39Iumg2qc2DPOI7eyT
	 8vLdhxMpYVGCTekTqJmH7asOj0UR8aP+lX65p8HEmi2Wh7dmGDOCsTIX5jV4aSgVfa
	 m1HUJe/zuuHYjQncA7nPTm5kP8fMefuR2BO3ypsyHhf0XclHObxyh/NeAjntK1zxH6
	 ktzrzXGIz/Ie0TZkS8gqJPT+msX2AgCzyB8lypuv6rQFylTrJwPCyn9xv87rQ9yrQp
	 fV4MlMr33/8yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A4D41C32
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545817359.2914.8652656574332315214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0598025432e56e2cea0643e486252b5a4ac41e4f0f77b00795b498fa197f92c
Date: Thu, 11 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765458173
