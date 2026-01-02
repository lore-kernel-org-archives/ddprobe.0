Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEB927F16C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767345834; cv=none; b=PgBz0TVeEkW23JtaEhoQiht3oETe9EECmTEzCP6RXUoFFSmVxRILoQ/FqPcphsqJ+M3VakXGn0XEWZEhpcPdSYCth4Gm4sE0WCwxjGET0H539QZzlTpoBw8pEz87A5YV314tuSqezjgS17UMPOW+GLKPVWqlfUXxJANKfMBT1Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767345834; c=relaxed/simple;
	bh=ViIsSo7oTAFInZq07wgDuDQMWuAa50b/ItLbYgeLt1I=;
	h=To:Subject:From:Message-Id:Date; b=r4ihFToxFI7wnLT/0DI08+ITu5ytxQFCqjYsgX5CTs5Ybu8PhGj09HbA5Fo2UPMEtYpLA6CWQLRHSUfjaxaeLQnhAU8BczaxchaDi9Lf3QzovT28xFNTOH4ZNHX/mvWgGCeZiHPdDfCuBJ7+RnTYKh5W71TL/AvaXYVBVh11PhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fV8jHg/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fV8jHg/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A9BC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767345833;
	bh=ViIsSo7oTAFInZq07wgDuDQMWuAa50b/ItLbYgeLt1I=;
	h=To:Subject:From:Date:From;
	b=fV8jHg/keLn62ouyDC3ROV0xmCx02FtKnPWtYRP8UZe3GY541CSSZEYoSx+z6jTI9
	 sdPPKjcJ448B1rk110p5zkNnxNnJ7a9vC1bU4NuR5XkvZuv13h3ABvKK7RxMuOpLrW
	 Tty8KNEA+HdkiUJ+qdkM7gypWZgLcyaGuSmPICvbuhjj3mBUb7f4VU6o+bwMqki0Li
	 kmkt+sbu6EKHPPRaCcl6X63Arb+fBGOltMH4TpPQFcjnaL27BMsOOAat/MUWkpY1A/
	 Z/8k8ujD8AK28UYSjW1Kk5SmzKyrxON/nyeT9zoqp6CRv1nawp7nm/ltnXJthRkNdT
	 yYjqidBNNqf2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F325EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734583357.13053.3923399053272208179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42c60bb6a07fb3dec6d960cdbb822d0d33c8954c75c6ffea2bb434931555224
Date: Fri, 02 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767345833
