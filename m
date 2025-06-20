Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447371FBEA6
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750450195; cv=none; b=sRiWRusBa+JJBAMVKKlp0Z1nokEgfnO91wh1Et0yXeaTu9vN5W80GehKNr+hhN4BIhfXSuQCPgoJkK+ek1NPVoHiBw07vO3X70yh+BCiEg2bWxNK8qB69E9CKm4rB3Swa0Iug5kQNvxvK/dnfXve7AKE5lBUPUlHaGWvB5MadbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750450195; c=relaxed/simple;
	bh=JbXSR4J5OxVZt7yrt+PkTk244pHxNWKJ2UpbqkqKPhg=;
	h=To:Subject:From:Message-Id:Date; b=U8Pk+/CyditGqBM0R5y3mPzvjtbvvt+booBTUtzS4KvSldgouqa2kXlJu0Kq5oUmSve8pDy7JfpdsmCA10OR49PeFdzxKI9H9f2p6ZJKQbPZuDNLMmvDH7N2z55u57YxFuWtPFRB4ihoqAYg/ywapAJKoxPej8+37Dsn+58FHtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnMhrB43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnMhrB43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750450193;
	bh=JbXSR4J5OxVZt7yrt+PkTk244pHxNWKJ2UpbqkqKPhg=;
	h=To:Subject:From:Date:From;
	b=nnMhrB43ZCfhni9Ll2TXXMzSCXeBWWyWtGkodrZXKSsMksHx2k6deAqhoLLMBsFur
	 zb20U+1xM2RKAlyHeFONNWtmTx+T8v47NYg6Y7ahVthPly+oZn9z5yprH9E63w8iu2
	 +dR9Bx88CUCFsgv0bDq7EG/XNwktdrGKwt5Z71Utz/aprD7eytk6wM6fMk3t54VdbL
	 0nvgVPVZE3WEC9A14m2pUws2jQ+0G2z1aBWhbRW7h7kuAYKZNui980961YtnmzAtvn
	 aLKGrYy60EGNWnRCyFVRCuQqmol0UOuSfqxKxQQg0KgwTiuDHzD6BWZ4BfA7DJlUfz
	 JWXBOQlZrTGTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BBC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045019357.32651.16538276275896600090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7134d7890314632514acb01392d135c4eda70846570ad37fb28ed91ead3cda7
Date: Fri, 20 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750450193
