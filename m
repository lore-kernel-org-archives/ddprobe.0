Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1711514A4F9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768682634; cv=none; b=Mg7CBtEXRdXo+p/MoDA+uPrFpXsOYPj4fHjvSFTykxC7jDbq8Z1hHW08kHX08r2Yu1zK1M19gzTrEfRE3jWVRh95i4WumYlum0PAeHT3KLDoC5hj6f0sV6KhIa3lpt6tSbmXrk0I9pvoJdrYRXJchd1O+nI3ndP78CrxJo6+wK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768682634; c=relaxed/simple;
	bh=zKZCthRvDHPLusTuGthqrNfyz+ZH45JN7Gil2JVqur4=;
	h=To:Subject:From:Message-Id:Date; b=kX2sp+CV3M+raVAS9TE1iJO6l/q1Lq+hL6xlTSz1wAG0YU7nycgGFLtFLVaslpVzFOWd1ru0QF3Td9d/4vi3OM3djWEvealubWUXR/w9RP0GLCgYSNBucs5SGSTC3ihTLiS51Ig97amkYHw1JYAonQr+iU1gfp1VSorUpXYYTqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBJsZFIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBJsZFIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A540DC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768682633;
	bh=zKZCthRvDHPLusTuGthqrNfyz+ZH45JN7Gil2JVqur4=;
	h=To:Subject:From:Date:From;
	b=jBJsZFIjqwVAV5nOZ7Ulwjt3gzQLcKsEZdBUzBo/IeaJIeudfT8Eq71AFawIHfAfe
	 jQpCZH1yDyDLJO/U0gqLdeqoNzcQCjMrqgX+kEOsVj4PZVQDIW7X/7fbZluNJcgXgd
	 +LmnaaRGMCko/owhBGc0Vc8A+v7khUkUZfABDfpBxqmcoyIsC/kuFZs5B1rvpzZHSJ
	 AAs+M1lbanxLzlDQW7MnfPND3HH1WCoWElFJcT6Az/Gk/9eR+wJR7bEFH1veSLtifl
	 B32DtQOgcbJnt2Gq0otqbs1A1iNxH0riWCt53+paVNMRaJmoN68IQhUMJDgkJR58Ln
	 ewzz/zYGPbu9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94978C98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868263357.29167.17530054278163850383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fb28cf4b30a11ea0d767ba93392f09a4cff1d9f221af40eadbe10816b8bcc1
Date: Sat, 17 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768682633
