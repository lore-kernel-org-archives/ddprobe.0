Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C104733DEF9
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773336293; cv=none; b=YElU93Z/6wcDNFevNRYft06RVDpdBLTjjfXxFnIDjPWJAyR0++CCh4PmwkyQ3+gC+RT/94pQGi0L4JWfMJQHTFUKArucACRhy0/qILt61aES/NIokaCV5MhpEL5DiaZ68B3rGAhkZHfmujaBw7gcpiwgPafKFL1EMpEc9ww5RkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773336293; c=relaxed/simple;
	bh=DymfHcQ3qfJDw4jcNcLgyK3G4qLXBDiG+WnBvrNRgqg=;
	h=To:Subject:From:Message-Id:Date; b=qmSSJZulCzyVHCNpUzRIKyAigHTCRqb1sZ7PQC8lcjgSEb3gtPuyPdaGFrJwh2XAJpliEaPDPlsu2YVv88tnkbRYtHc5hYbjOo8UMQsUTUD1325DyRAVyGNYn1WCX+0uO6QnjR2ftXBqrVGu8f4aLDcTcjVEBL4oUIVbN8oVBkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSO6p9AK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSO6p9AK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A256FC2BC86
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773336293;
	bh=DymfHcQ3qfJDw4jcNcLgyK3G4qLXBDiG+WnBvrNRgqg=;
	h=To:Subject:From:Date:From;
	b=JSO6p9AKD1aOEnEjTB41w3PS8Z1uB2JqwC2nskhR1yj5GwXFStoZx9LRWO3p1E+c1
	 ftCBszXgdu+1EfyhhlF5Ejtm+XKM6xJEDmAGIPqWBnHxXYquMAcrQKiG4w1pzXxivs
	 rcU31B7uSNeB+Pg+nRspG346N0zNLNGw5I7/Bugq85jQlOoDNWzbNchJQcZLkj8yIZ
	 a4jsvS3lFUcjfwrnrpngYIyTgprgMvZet7Df4i+Hn7mg+FAmQFLgZjNe7pC+1Wx4j4
	 6RXzvsb197vCDxmJDkDi8hkBbVuZ6VeJ6ArqR6hKcAhr4+8puYu3qFmDTfCQsAtB3h
	 gjhI11x2vVslQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163B106ACD2
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333629358.17098.16796219392639023764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbfb6a467c12ca82e1890a982b66be7ae3ced6c8ff79095f9e6194400a69967
Date: Thu, 12 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773336293
