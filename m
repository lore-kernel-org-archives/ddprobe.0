Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E08325485
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763130594; cv=none; b=IY5YNPG6cruS3115PbNDWwf9GAOwQaGcazQD6IIRNwAcY09a3xZ4d6qWZhXrf+uJ+tLf39RLE6A1Zg8r/HO7Ht67u8l0aF4/OvTGD+ERF3xKaoet1PQXOcSS+oOyNcBIl7dpxHUmL5OujkFhpXY5eYnRvsiKvxemIIn8FXIn9dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763130594; c=relaxed/simple;
	bh=cVRzdJ3c/Lz2LhR0N2FRcqbaApMXi361iGv4ABg7CL4=;
	h=To:Subject:From:Message-Id:Date; b=kyswWJGxFEyqljgxDjNI2eACtvVq9zNg4xnJ/fNnQHSjq5/GmAMLkMUhSXuRlQ6weKCbaY76ccNE5F9wK1nJZb8RV5jTUWdOf1Vufh3v9A9T8kdsguaKozXhVQb+lcr4aSiNW5lInNAPntzzPpcFV0y7K8rahj292c8pu4wNds4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gc4R1uGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gc4R1uGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F92AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763130593;
	bh=cVRzdJ3c/Lz2LhR0N2FRcqbaApMXi361iGv4ABg7CL4=;
	h=To:Subject:From:Date:From;
	b=gc4R1uGL1COF6L4xP954JAYQZKGvh3+c2xQjaD6jpZeZhbkA+a46X1/5uIwNcaG2Z
	 XAQEpb0SM+r/KLAPeiyQKxKUcxoziiqpbr7LPNp/254DuRz0MpzajEnsz5bd660DhJ
	 +OTG5fW0RR9gJ808eGWtBb/5Ujy5h41xz0eMpSUBnyZ/eRoEzRACTBcmZoR8DM2Ew3
	 p4cdN6hoM9vMK/v8FQkmqCo56qp4/4t72QZL4PMZ1fNPO+e2h0FS1SMsTqXle509mF
	 yVwJzBOvqQgK1KpZZLvjBlZlKtFxsQS8cf5nbQ3NJQKVX8toC2u4++705fz+f+jPLz
	 dK3rB4uB9hUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90864CE7B12
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313059358.17652.14604741424710743151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aece355ba82eaeaef935bf671298cce22a63024a4fd431b0f91245e6acc1c030
Date: Fri, 14 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763130593
