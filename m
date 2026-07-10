Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0B3374A09
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783708114; cv=none; b=PAhaIvH24YfNV9xpsaThCVMyPvKzzb4/D/6zIrrNjqC8XlmQJqN/TuPlK2Ch8YZLLs1MjkFUNQNWoUwMHdXpTWO7nD2QzTSTnZNwNGvTjKPvzh5edwbjHKXcVoB/+URAnjxQRAx/aAR/AEyrBPfqdwwq8A+CNmXmE3IinUfQkX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783708114; c=relaxed/simple;
	bh=tGxkOKwjLMzoJ/LffBvzJJmnQ250gWTXhvZ4QL6y0v4=;
	h=To:Subject:From:Message-Id:Date; b=Dr8Dyi8+mms6ptgDkCcySSywxrrFTzHdeCaB/DoIBm3lLN83ITMM6csZJDenmzAKQ4nW4alMOyVb2sz1U0QqNBbpoLaRFsjqSkg3SXN5Un4FEOkun411cNyjNgrJyVn24rAbvr5tsw2n/JFUUW9zpNOVuiqNCcyHxgOZhusjmE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PN9pf0mv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PN9pf0mv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1901C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783708113;
	bh=tGxkOKwjLMzoJ/LffBvzJJmnQ250gWTXhvZ4QL6y0v4=;
	h=To:Subject:From:Date:From;
	b=PN9pf0mvPbyiU3p1uCZVnfLboCCR66LGiXlTrQPIKtCDPqhJ0fgg2O6jYEDMaVbTJ
	 HzgnECDv5jtGODdlc+aUsUpfjDbrBa5/4O+lojB9xRlQ9Wyt0lnsjpSnxWMOfXDprr
	 aTfZb6apk8cmZlTzfwSTp7EBv5mc7c6HZk/uuC8JQ3Ysx0MeBflPta3s9Ceo6xEQtI
	 gGKs6u6BfD4q1kSMyzaX8qtNt1aXF86RQ0kClwJmbnioxw6gftNW+e8pllWvD4gX+6
	 WW6iZbHEjGOBOY5iPTO7wreww0Ij+rN7IKucepLxmqteiTYLluYgTvp4TmnirtHXgN
	 sliHpdfUOT2gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB45C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370811370.20824.8660060570057071033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904f37d1f26a3742876ea9044442766ef0837a6431de4af4cd3f5303956d8525
Date: Fri, 10 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783708113
