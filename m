Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEB43D75A2
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778932234; cv=none; b=QLogMwYYByuNZmi+k5mn5fOyPQ0elYM5xB/mIzcFyvSalrA/id7yopKrudzIDVmHaSHL6cvsVJ1iN3EiHiG4IH4RfDxUs9YhofkAe1wtyA4zeytjNrgTFa9ro/0K95LqqvZwOU+wEua1gXIl3Dn58PSPfE7o/Ho1f1B3bz8Be0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778932234; c=relaxed/simple;
	bh=hb+YEv/BxKXkRBBMaSF+nMi9F+JXko08wFWBwHCbU4A=;
	h=To:Subject:From:Message-Id:Date; b=YegLgoNwWsmLgR3BwV90EeVQRJSHUO0HXpcnMVUskH1vauLhJay3PEumeWdSQf4eQaoOWTDAtUCNiKbuyNesy461AUEu7gY6q2dGfYYpj3PDC4vVM339zO2C2TpDFvRq3nu3wSZ6g8SSU4eIkdqYaZgUvaj+H0goySql0oNX294=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUWS52uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUWS52uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C2BC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778932233;
	bh=hb+YEv/BxKXkRBBMaSF+nMi9F+JXko08wFWBwHCbU4A=;
	h=To:Subject:From:Date:From;
	b=eUWS52ufImb3i5S7FQHHLEI6HgywIYHozAibd4bNWNoZPqF/WHrIhRytF5mOmMhAc
	 En4BcVz26rHUgXdbm0U1PzICroAGP2G+OyIUqkULRI7PjOnvqnOV80enNw+y1tAXUO
	 Kw7cIycy1gQb5cvWbiSfeUysWEEUbXaGxPtxnRqaOV0GjDSLFv8FC5qJI/RGd4Jgub
	 D6K+qJmkuESG3POgwtVn6cJWwn/0l5oCn9BcvL97LcaJ/wTyyVcLBzqjufMOrSM8Hn
	 gCnXh+gnJXx15DiooaovwMCNsl2BuZapflHFnJazm9SGtEHOkQVOPFZ+UQuKD199xw
	 l2sfp9jznaaeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21E4CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893223370.1746.2323922160652657502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b48967c0cda18ad86afeb072145d7678ff545c02a655544b61dd59ec88f056
Date: Sat, 16 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778932233
