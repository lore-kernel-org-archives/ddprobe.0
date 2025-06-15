Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A677282EE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750018794; cv=none; b=Xd3awNneCfTee0ZNEB+mGKqB85K33hGoRV3iY+2PuUbRvI/uJuxMZeFCeVswK26P0ngHOZNgUQE9Wbk2+ilVAyemvnNc4s9/OF+hhmTf30MXvMTYVhLou/qbhHdRkRqu5vLDx463XfKekTWoMMX5cLSoJocY8j0umF0QhH077HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750018794; c=relaxed/simple;
	bh=nUukb5lZJh4f6Eo3td1DQLshTw3L7m2h/ThIG3QAB34=;
	h=To:Subject:From:Message-Id:Date; b=n+hdmKrizfLYUygDYMAatmLwMyfpZrDORTrJxXx0TCsr/4OIyli4Ke6gT0a4Wb/RbJ3UfxUnNhsJJMCG0GGmefQ3hKG00Ci5z6o/owYlMIF3oYAZ9eGf2qg1/lmWu0eG8bwC0pdCjwR/L5iCioyQto4jAMNbFMxSG8Z1iwaG90M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyXGyijW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyXGyijW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7686C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750018793;
	bh=nUukb5lZJh4f6Eo3td1DQLshTw3L7m2h/ThIG3QAB34=;
	h=To:Subject:From:Date:From;
	b=YyXGyijWaxvcuEGOc7RL2g0gYBh5fLt5W4m6mHTVoCt/5UP5hSHmVHzzwx5XqtUn7
	 NWKz2GDX3gDwHHUBcrZ5vAG8ZsAhMk1jUdYyUuF9L6HgFm+ji1vNpTyhcy3XS8OBuT
	 +vC+vBl9lsCY8mKbBbfdAjLCslr3aX+v7EQEsPOFA3errFl3Mpra44hdR4/jiykHCB
	 q0eqaKGY7lrpMBpAi8adAymuG8l+M3iRLc8bHgKB53PujFE0wUHMzKfmr3K1t2JSow
	 JvSnLuK23Hw84rWPyBabNGsUOLDUZ6/xvE9nBruyvv91RHMDgPMpNvhQhw7PXkn9Ib
	 zrupqUgnVWokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5270C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001879363.30437.8360082027609692164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe53c2ad328219089153fbe3519aad3922b0a38937339dfddec56a8915bb8ad
Date: Sun, 15 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750018793
