Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF131448E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761887994; cv=none; b=aRoIuNENV9YB9TlfYxqqZKLsSk7FPa1m7WPCcWm9M07owv+u42l970R4u/mnqGcZVWDdTvelIFUKzF1U1R5qZRqLIcLfWouEC2G2CoUKZFuKPoabfpHQ/tKo4o3EB8StgqEI+QNz/igjwdai+K2LOgKE2qp8/vXLDfoGEaS20fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761887994; c=relaxed/simple;
	bh=H1dPTgc2doFGCehOfdBROEbu15jPjoxoIYvOJv/JUHM=;
	h=To:Subject:From:Message-Id:Date; b=Qj14qTLyUYp+m4wIQezLrpY66vlcTslebRvsnY8tbXnB51cTF81gkzmlFJ2vmoBqYyqzRaNHJs9IT+AGyIrtzPKEjtoUgKgVsoQcW7QoFb+PfiHtuYCIWu7Qjd2KMmfQC8FHRYuZm3oaITvHZgal1W0mF6bsdfeNO2iZBZf2usE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzyL+zrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzyL+zrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761887993;
	bh=H1dPTgc2doFGCehOfdBROEbu15jPjoxoIYvOJv/JUHM=;
	h=To:Subject:From:Date:From;
	b=NzyL+zrg6BVnwA+TfI2qyFgpzK2ju8vVIpc2ldZPYhy+q8CGu1xa1nilugjgmIYy3
	 E1u3MqTyKhK4E1yueoFNODKUHKeXALIfzTiGIP4rnRYllgQsDW+hlKkb/99smontQV
	 cYRveyPdizB+eVVn3OBzerNpRvEOmUneMuH51dLmNDTxK80rVlLh6HpkaJnw3k69AT
	 dgUZUkTNts78sukxSCc0jmP+A+kOzKzXJqYmkguMddPaA0dYj28LwE97qvjOes1JIf
	 RUuMukhqMTJJ+7Q7UGsx0DRsgrGyA6aTRoVn3Z5VBL9K8EKn6VVSbBCyA7aJ9n+9rZ
	 Nro+BuCu1Rulg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F09CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188799358.7032.727523541803147675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd4d009a1866e102bf611b186df5049d9512bd5d0ad98bf3b55ee3e44e3c005
Date: Fri, 31 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761887993
