Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9BB38C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718350703; cv=none; b=tXusSRaE84lOlA4jIBRuwMttjCEZSwwJRzJaMyMJm1aqmE45BhvC28MaCXfs/5W7hL4rATZvX+2q5RpVUEhXmcW/JoSB3DVuaYo/QPu6GRj8sRRATVOZCXKSYmCqHjOBYiSQLiwx2MW6cTolTu2juI3DJnnsHzy7nRT5Mp3L92M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718350703; c=relaxed/simple;
	bh=IzyeySQgO+7PSJQIv2YPP9/PYKOLgBAC9qA/jprSPA4=;
	h=To:Subject:From:Message-Id:Date; b=f3MeuKYxk3u1GMi2F5gAfuYVtni9By42+7Dy2Daf2Hr6BmExMlfLBZ5bfV6leL72GdWyUZjrxpWj/I6sLqGeWMdIm4KT2RDmadfoN4KWhiLqMOsIi5faSUsfbrC9Vhd8wbQ7pHJETydZNxI+/RSJ63QPg/8THjCIyYE0KiZTP2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PruZn0Bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PruZn0Bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4438C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718350702;
	bh=IzyeySQgO+7PSJQIv2YPP9/PYKOLgBAC9qA/jprSPA4=;
	h=To:Subject:From:Date:From;
	b=PruZn0BjqTdqHOl+bHsKME3jQUMLSDTRBByDug6suZ3ItYyqrl4PygaISytf3pxa2
	 75kl+MvxS8pIKK/cUIpqe3izS/cScLDMaVNzbeeuZKZVvHiKV227YxpJuTqPeJ3I2n
	 uJveaZjXHS48yloKo0ecYyUIrxHiMdnyDPoIIRW43+R0d+qQmPHZrSPhUY6SRmmBgx
	 5CD/NL7twpOnxe2OFWAAMcH8+TTMDmnpQ3oUfGlidcQNYln9l3/eYdbASDrMLcscdx
	 B2aTYrgG+YxQiNZQ+zoILeKWZAE6fYsooPY6ynp9+x1mLko/rlHml2hVwyOTU3BuD0
	 2yTjmnqVSPEQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF02AC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835070277.9556.2385616520927338762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a877edfd10f24cc4bf312852bc2379634de36a22bfac01fc6be5b1a30696ef3
Date: Fri, 14 Jun 2024 07:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718350702
