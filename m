Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E45E38C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724720154; cv=none; b=tN2sEHzbzUuD4qA33LNPmhUbaLBUTEPDcAhTLtzvMCsJtUM5ICioSsw0DX0dAEq4jU/xHfVdntRjwjfigftXMJUB7Kn6kBpxQDjJ1f8XE9Fv+545OGsGPrQ85BrhdvKOZetYlBU9LlPgVdqnA0h4xP9Aw9DhidBqgeABcQq50Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724720154; c=relaxed/simple;
	bh=UVCCR+cirz+HbvrCDZUtyrzu6nsmDq2pYjPi5Fze0M0=;
	h=To:Subject:From:Message-Id:Date; b=qcvjyixn9Cce8gQ0RgNC6GniBYzW8ksRlT5JIS4n2ecYy3nimn1qhscgyAfks9RlwWp0DnpuNFGolnABwoR396YJqR22l/OTwdz2z8U0RD7hApKDMPojs7nRrpBVoFs+Qas78pUPsgTTYEEUlLESJoBtqUs7yiqk3PxQetdKuQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDqweTY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDqweTY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4867C8B7A2
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724720153;
	bh=UVCCR+cirz+HbvrCDZUtyrzu6nsmDq2pYjPi5Fze0M0=;
	h=To:Subject:From:Date:From;
	b=CDqweTY7rwIcWm5YKRxKy93ZAkWGpG2JTnmgvRm4/Mpqk2U1NxyZAePnqGaRDqcON
	 edFlG/d3ewplvEjClQAAz1vfvCj4YbAhZfeb+QG0ALkbumYqsOAhaRZlpYgOfwMrq/
	 Q1MVf5tpzSeYNguaprdYlFfHyYvCHdbzqMkgK9ulIPXidO8osoVG5mLLALnnHIyzYT
	 zDYL1VOXYK2rsyu1JgxM4Or0xuOc+WnOsOWjqZU1SdZDJdICB8q6miBGDgIolxU+AQ
	 XQCgElDHMx4ZbuWa3f4MbDBm1hMzlK+9bnRt/2/yMwEgeHy5qY7RTHoCW0YgxRhpAg
	 TK/WRTsID/Sew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A068FC5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472015360.27984.11527331602984591376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf81bf4deeeb98781ded236ff3b8733894121e8b12d7f242871e0419aad834af
Date: Tue, 27 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724720153
