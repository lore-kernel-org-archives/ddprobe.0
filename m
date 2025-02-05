Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DACF15B122
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738767954; cv=none; b=fLbA1Ywn0GxhjwAvoEZ2WYMOBBmYhHGJyrFuI2y2JI6o33OkXfhmGFm+zcCVYZG2WItdgfhpAD+cBChTrQp4d7SxxCBAvitS24Od2zEtY7SvYVv87K7ZLoZMrLY/RDjJzOfr0IhZI0MYb98grD8pKm8ID+9EZOj0wP/9c+592ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738767954; c=relaxed/simple;
	bh=9sKrijVktX2NbxRa73QADIGE2BUrg1/WCeNwHAo2LIo=;
	h=To:Subject:From:Message-Id:Date; b=byMWdqZ8w2Blly2oNisc/UzNr0PShl56Pc9hDbZW2ttug9iwzPkTSf5664u6joZP/0xo0Sdtd3gc0PZHM0b7Iigi+YXfYohX2xxmVHATKbTTxY8Tn3voilMDJB7nv1HQmiMirAFR47Id6j0NpVex9rFIP2v9xkBYXe6nz54SGWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEcDMOs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEcDMOs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84F5C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738767953;
	bh=9sKrijVktX2NbxRa73QADIGE2BUrg1/WCeNwHAo2LIo=;
	h=To:Subject:From:Date:From;
	b=vEcDMOs+uIbXyhi3YMPPr7PUBAR4FC98YNEvLp2ZcuooDsgSXSXvesTKZRhIc6+Q2
	 E6cws5kGsiq/DbtLY3zBJF97p3dKeka8zEsk8IjNF9C62f2CoL5Jb7faVPXyNXpPbF
	 +hI7Kdo/J/eg394cjcekfUwbS4g9uwz4Y2xW8J93JXxqzZDanQQKaIwsjNQGkbQTqc
	 z0Hu9+2yWUjgXWRumTyOpahWYyvgjhZy/X7CktwM4EJws7CRhy8Nm0McbQElwSTEs9
	 DjhJ0ZAOehZertohoPmMAnIWd8NQXAoBSqyGLpWk/JwI3AKpSsybuOuQMlAm85yDjO
	 kOq83cAUz0aXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D01C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173876795360.13726.7652979063966932313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbb58ed2ed89de1869530d9314d7d33906206903efcee41de2eaf41f1447a1d
Date: Wed, 05 Feb 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738767953
