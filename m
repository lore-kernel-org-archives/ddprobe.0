Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FEC2609F3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746025194; cv=none; b=u4lF33plMn9nhnZqddjaGYi/RyT3O3W5sSke9P0cCKIAy0Q/nbO89yqrHr6uYQXXk/Lngy1mMi/5ebXLiQc72e4MqB09qZ37ysFrW9mWSyVCYGPX/FDtObLPd/wfeBh0/qEFeO9Hq1NGlXHEa1BYXalOtJ0HIMXsmhneGtsqZY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746025194; c=relaxed/simple;
	bh=MKIjRVAJBOvBg81EVcxVNxIfwzKu5JNfCikCgLEEs74=;
	h=To:Subject:From:Message-Id:Date; b=CFfsNhrh5HyZ6i7OjixGiFnUT4hsyoZp3vWEB4Wwu4C2gcFRvjDQXICbOr0oDvvKEtk0I5tgzMUt7ZeKNn/vPgT2MKmED1ouugpPr2NzmOnCFxEo1EKJu7A20Q5NOIYmJxtfMZpFjd1XPcg22I4QdvuOui2OCDM6lVuvICqxAqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxXiFIDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxXiFIDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4490C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746025193;
	bh=MKIjRVAJBOvBg81EVcxVNxIfwzKu5JNfCikCgLEEs74=;
	h=To:Subject:From:Date:From;
	b=cxXiFIDGmJSHOssbh5Bfjll1ZTiskC41rP40HGe7oZsLV8kAFFnUSl7LmF15s3x8g
	 1jSzp2b1PMw+ZPLXIGHTTiVTbpg4Ir1po6kcDF6mTPvk94k0oD4k03TI/s0E3ysOT6
	 vgnWhsBKo32BjTNk5yCiApoqXgyL0i/+HYs2FhVU05UQz9pddNHpxKypulaPFarD/N
	 4qE818Bp2/3l8x4Q1cybq9L5YhFUjWj0LbMRf/Mat4TFwJkgK6I2HvqphsZ8zuMOE4
	 GSZsG6b2ubMLrtm2QsSgCBnJkulNl7kZ8JSlOyKYlI3Tg0QcNhoOGTBodNbwIyoCLx
	 +lDsJhOi+zPRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EFC3ABAC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602519357.18710.5150711674614442816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99b606a8d6420847df1660c76c582e41b909f29e2b6e2015656322404200f34
Date: Wed, 30 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746025193
