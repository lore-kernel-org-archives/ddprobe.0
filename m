Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD8B131E49
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758518394; cv=none; b=E7HKu+OfZ4+Y3UDvrRa5k0C81f5g1plvHpIobAMT80jhRJqV25J2OBt/+5VofFHgWNqgQXxWMO07m0sIhk+AI+O9W2nZnLI3bn+wHPwxdTJfdJo1xW2yQK/klT4uQ/fozs7xN1vpYOLe1G5rzZwaRl/RQukIdpKlZrzpsXgDunM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758518394; c=relaxed/simple;
	bh=G19nzrTwN8aM0nuofT7oqGBY1ma9+k4KP3YooT4zCwY=;
	h=To:Subject:From:Message-Id:Date; b=cdetCoq6yIjKhfpN4SzyqUF876s253mL6ujRiM2fOCCnXW5Mq/v//JyX5G9+NyCxXLNHrm5L8fBvd6BgWKtrVT81TdaAOwIndr368reny1uPDORZEFSH4h8prFf8rdaUQRRnQqUqAlEGKmyaNs9+QJ+wmlCddDaK538YB5Ysi2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZa1T+18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZa1T+18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A185EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758518393;
	bh=G19nzrTwN8aM0nuofT7oqGBY1ma9+k4KP3YooT4zCwY=;
	h=To:Subject:From:Date:From;
	b=bZa1T+18BFm4jkbfRN4BGfZ5c67u8Q2fKgEORkFEo/sBNE78yOjsWJeFxfkSiy+RR
	 tOlPiLgaIUF9aEQ5zRkRj2Onz6ytM0eeJZmdYIF+UBvpIAl23NoLrXM5VHcp2T9L9i
	 /fzfQaSMEd4HPgHgL+a8ZKWtftXCnCEbTiZBjJkfCBkLTopklO9LUVK0OeFPOYQO72
	 W7HaYrywgWjJ6XPN9AawIoHIQOPezMdgvA3lKed/MkSbn+yuWLgrPQMX7s500MNQZd
	 5HKxJrWUkq01fIQBL1Dubm9Lg32yn11Q/qu8dmMtRTeRuzcQu3EaxXEFPhuYYs55Ln
	 jHYf8yNumMjOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC1CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851839358.22997.9267383329310245903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf43da0c79412d5ab011cb8f34f2b50abb32503f58d7cad60b85578a3d804e2
Date: Mon, 22 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758518393
