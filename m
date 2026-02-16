Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304CF2DECDF
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771218294; cv=none; b=uAUF/3hS3VxrJ1NicHu514hsH+9d7bUbqSMdNeudaXjgH5TYt9CSkL4LR+eCHeiPHdbgfOF1hqkaKRH4v4PTclMHMdotpA/lbs3cphaV0/wyhynhjSl9ffmkLBiiJfW+2iiiklIRnN76nzYtdNSFkKICp1uRyZtYLwmMNDAPicU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771218294; c=relaxed/simple;
	bh=NNC3qOUcJnkSXVL5dEVEcIqVSpsjCyPFM7zdDhZqORk=;
	h=To:Subject:From:Message-Id:Date; b=fYX0DprynmVsQv/vQ5G3R55dSTc7291OHAVc6x99chrAiizAIxW7c5LTYCQtoIrnTOS6VNI3w1plrqW6ugFsYWmfjJRTWb8hv98ZlP5VAxD2V5kpnbDtBrR2b3ruH2F/RaHm07ehtlVlXDqE6gjn7QQyDKG2sNZM0LUlo+2Uadk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9jlnjf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9jlnjf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5C2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771218293;
	bh=NNC3qOUcJnkSXVL5dEVEcIqVSpsjCyPFM7zdDhZqORk=;
	h=To:Subject:From:Date:From;
	b=C9jlnjf/JM3LtS8WEKY1h9kJLqbjgiP5n0avOIjfb0iTZaFLiRhwo//Dm1CKyBQZ5
	 QETd51zoYTHkE/CTmNmST2tWWsaGbFVLDqP8Wm6UOV4Zo8ZSxAhDgNUL5S/ZY7tU5Y
	 78Ba20f0XzC1vH6HH4iWQby8x7rSqfjEiw0Sz53ksi0RJXW8JuyUAb6UeKClL6MV2P
	 oTIiOhjz/kGr5vbpueNZt716dIr57FBOaCjzOiCuE+adKA8oHxMjUT3gu2KckGF/2+
	 jmJz+IwMJ2s7mttoTKsoWtvTWmjXXyho3U+6ZxdQxnhiwExHvR6eko7VNCxbty7NxE
	 +GxbP2OH3+pcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58A0E63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121829363.2486.646883800486317839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4969946f764f0402060e2755b661b20a3f0f77c8e13f08027fd7496a2e1d9924
Date: Mon, 16 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771218293
