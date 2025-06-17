Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A17F18A6AE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750183794; cv=none; b=tcTb0jSYaJF1GeTar8EB+882hgVtzJdaEyhTz2vCjKoAj10uyMaXHBsNcRdcmHTNoICrpAEDAPbwjltd11BTrQnef08TLjG6nLX5wIAQeVL3BqP702rPepqK/yhkIw96ZwRcUlwusFGsvMbAl84JpGhk05DtWswr+CmskyFgVq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750183794; c=relaxed/simple;
	bh=CjpkY6ukxT2875CEq8B0i5NKDBHw8itw9tp8RPxcXQc=;
	h=To:Subject:From:Message-Id:Date; b=nEo+q1yeB+iNo9zY9NeZfnoZHBxvVG2KN0trks3pTuEvkFMZ4pGBiqEbsUWBvgs2GseR6LqaU0fZ44TaJNTEnIOHVs/84WefIuWqYtoAxOAwQVE8gU2+NiUbzi0rLy5Ro+l3ceVwy3Y9XHAvE9M8WK6jJed72e2PoIxr0ce4NGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5Vj/xjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5Vj/xjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1300C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750183793;
	bh=CjpkY6ukxT2875CEq8B0i5NKDBHw8itw9tp8RPxcXQc=;
	h=To:Subject:From:Date:From;
	b=J5Vj/xjRaPKdTHMZVqJ4uIns0DM5rToyLOX9bdYWuo453uKOzsfE6zXpWgtoBXO8X
	 fJZ8Og3xv1WL02DZeEI/pp6SIKnqheCeW9NtVrjsBrOqqwXpoAfb05vMU4f6oy2cQr
	 TsEPy6SytqZmlqNxuE9yIRXOvCQuN4ojV5R9uaQNE+LTiqTL8oFmutwAE4RZKo9exo
	 TlWmL/pQ0TgEYJ+mUwiYe6N6YIbufYq7VEloKr32BLsZVB1elm62gDUdcKLeuFRuZ+
	 VKEeeKA0JqB9gBoFeee7wWVTGMnHYZ7nNa2t2Y7rmlhGfY0PHkSp1+ajnQ8V+MFXyU
	 gtQUURudQbvzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F120C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018379357.31698.6735961970479484294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb44266c35adc01f5bad3eb7c65fcf5ab3ac6314cb8c791088e76c6dbcde077c
Date: Tue, 17 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750183793
