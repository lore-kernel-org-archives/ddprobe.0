Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2A81C84CB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769279034; cv=none; b=UY97GMQPOPxaLHbe5D+6ng1km5lEWBgF1+PJ2kh49qa0IhHXSJTzuwtOvXagN/M/kMis4crW9YhU/niWPJDFt5T6MZ9PZ1/1y8/kL07NbNv3WUFZM9fESsHKJ9jMqH/HeH/1WaXEWa27ClK9tdHZ2uTpkFyJxzz6d/us9BSSlww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769279034; c=relaxed/simple;
	bh=OsGXBah8Q7cEu72Sg/3+QjLkKG8aveDDeFG9vYzzmDk=;
	h=To:Subject:From:Message-Id:Date; b=QiIv0JhvMN4DS7nnjqdbfTOO0Ih44ao1+vp8hbTtVgqbp8t5HIVccCOldpdzOQ7da+/LjEOUQGWHYy1SAIdZauxF9dXefnQvy/1MXRt2BOtzl87QVJo9gZ9gqZF7CJ5e7wrtbIjZ0GCi6hf3snIb5bIFl13aJk50yvpOCgkBNVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h85a7eaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h85a7eaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95A0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769279033;
	bh=OsGXBah8Q7cEu72Sg/3+QjLkKG8aveDDeFG9vYzzmDk=;
	h=To:Subject:From:Date:From;
	b=h85a7eaIhLaU0WpG4wrm1VAl3qWq0cH2hJut+WaDF0osiQjwaAGzzU5lDw1SfuIa3
	 KOczzJcq6MB/+t4kh6YKdlsIEJMzsqMFDaSUsLd9wmZts2S6DDOG0fNcHWz+rTNy4H
	 bFMg0b7jgRHQW8Qov8urDKSFTkgpWu6SE6G+PKKoFn3avs3xsf7KVgowRqfleKVnLD
	 fvoEKV+hPGp8BLBGVxLCRau+hya5x6djBJ5plAcgCPRgytN1AIGabuiBbQ44OV1dJX
	 4kqOXoW07+G/qpC/ODfweuSuJHZiIhnDey8UuIvrzyfHJIq7hA6auEsnckubDobJv0
	 4L3dVGDn4YUow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93441D715E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927903358.4290.15220354616939856464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c8b18150699845ae048920b3ca77b1680cb5f99cb26d9c111160948f5713c2
Date: Sat, 24 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769279033
