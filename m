Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2903C2F30
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726889754; cv=none; b=QZJQOoN0WANXUGONORQDmGNMd0jU06m3tiF4NAJv7f/aiEVd0o7iJucEMweaz6uUHlwV2F5kXXzByY6mDP8RPCMXPV0jHHJxbMJwSqe7EsLML+BztzxEmaOB+lD2aEKBnjU8ealKyagwCRa7FGKkoVUttPnVdMh4hSIOyo7iUq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726889754; c=relaxed/simple;
	bh=wC91V1dIsPL+TnfVHS6Xf6ADUPJfWWNQJIUw9B8ohd8=;
	h=To:Subject:From:Message-Id:Date; b=MtqqKf4rpwy8IXDS8EOwJXl3DswlGCHfMLIpiXLuYOimL1WcpZaKjDpPwTrS3HNlodu00iIBHwuO96fzUWn7UuZFCNr26y5HY1Q/3oKm2NJREO8xTL+Dt4F2AH7QVCfhW0qwVLT6S5WM2pGb2UNTOWSc8Qb5k5/0ezM0r86uzVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK/OAtGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK/OAtGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A892BC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726889753;
	bh=wC91V1dIsPL+TnfVHS6Xf6ADUPJfWWNQJIUw9B8ohd8=;
	h=To:Subject:From:Date:From;
	b=CK/OAtGehsIBeaBMmRGeN/mlU+Ev6nmtXpIqUnNR1Ef5P0bK47JJZlw6IPrzRRNE8
	 6w1SkbmSUBWhUbWsaUUDDrkQDw8uUgWtZWMnImjS6A+3InQRTWOJ3JyZpxU5qMrMdw
	 ke40U7MZPjwiBEzDAzqZsfEslvvwhl3cnJ60yKdkGzH9hQPQKQH96UBwGJK2GcFEOr
	 eR5gF23UUqP1F1eukZgSu1L8byVNOcYCd2PUJR2DUk93RaqxllwChNPO+XC0YZTL/f
	 K2GqtScyeDkwaBw9KQCUyNp5GGshe0baOygg96c8mdImjNjBRJKXzbOetIUC9vODEb
	 o/1qUMIDO0OSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE0CF9C6E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688975359.29018.3967368089717585016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd12d3cd44325c1b21a3f62da9da5089680458433341c330bdf25e43c0f08ff4
Date: Sat, 21 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726889753
