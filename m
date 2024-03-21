Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A6D53E1E
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711015097; cv=none; b=ajKZw5HS3f05CuhqqATKm7pn9YmeJEt3Pbzh0JWv03cVTSe0kOJ1C6QImdhXIbi2v+LAae11d3aamwEovTRz9NlTQK9HWA7+CbRtjd6xsjWDgwPhoCztG03n1eiwFlHRznOwzW1d6zVR25uYKHFhBSkrRzxJFgtpDjUFT5cFVWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711015097; c=relaxed/simple;
	bh=5DKDKirSFNcaIwMC01V6hnNkm7VH1Upj+uXWlVQO/Wg=;
	h=To:Subject:From:Message-Id:Date; b=ccXrVKdnmBQbA2ZnFAXHOv78UYpEfN/te1w37t1kjMc7uNVfETO3+0aOrYbT3jZNmGjyGsRVXSEMK7teHjF0TbVaHHlhcvZ27g/ixkTk/z5L2gOJ1tpJkcRQFATRclEqo27fvz9MJvxZnJ69aKK6YZvmWDwT2KAUr+cwP2KqJ2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH5y66Zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH5y66Zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76107C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711015096;
	bh=5DKDKirSFNcaIwMC01V6hnNkm7VH1Upj+uXWlVQO/Wg=;
	h=To:Subject:From:Date:From;
	b=mH5y66ZwDbOMJBYpAMAuMgwq9Lw7evCaNa59Dcmd/i4eNunCaLPYzsoTR6Nw3pPoP
	 WYwjw8GxVRMQ7dABo6cGhdjxZ3PW0znC3FyEvPzCW8TnaSYL47lJGkSXo9pPWoU1F5
	 eVEHzTlIczNS/F24VYeoirkx01LS2nyOVxViKpvzS/2zn0xRvIHbRjfnMgMjsCM0pG
	 9D7ecD0yfNzC/z9Ndb9hO6u3tQnTPIDwzGpY/b8E6X6r70mgJAkQuUeK2g1iXbCTQj
	 AUo6A7jRjD8N3OjfOgocwgri9TvTpzvWKIRY5xn57Hb1AisiwMiCcNZ+evgJwL7+BN
	 ELoD+/+CDmn9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A92C54E68
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171101509641.16931.746238433954914501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1dafd617dc2a10fbd121a0a0b22ffa61fa0e4a643724f0c53d32ca4cd168ef5
Date: Thu, 21 Mar 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711015096
