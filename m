Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB1015A86B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750105793; cv=none; b=CwO8+DUYMVeCojlYAkwHQGfX59CAgk7ffbZpcUOB1YuZRWrIvDmR00IL+m+E3onhkFZWiL9LOCeV1fjjW6KHhzWzHRatie57EsnB+5NlP15BiBdvvkOEIwNhyRbAs381wLjF8h/KkTuLOyRNOutC7JM6UADqbHCmNxy/QW7Fshs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750105793; c=relaxed/simple;
	bh=m3aynYu4/rJ+jUQjolCgf1FgvnhQBOWTekWZuDYy9jE=;
	h=To:Subject:From:Message-Id:Date; b=OAC8Z8qL0zVdIA4V8YDXgkgFkP5ght+IYdzJBVdzbID+vt7PifWOVgg4lefnmmSRyzwhOWKRqcP41Ea0hzj2QsukxtM4IrK8FWzZxydARj34cwmdz3JHD/qdoOLtIGfT44HYF3A0is8pi+fJLZJHciKAYULDejvUj8khAu/bFlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS0Be8hR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS0Be8hR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CBFC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750105793;
	bh=m3aynYu4/rJ+jUQjolCgf1FgvnhQBOWTekWZuDYy9jE=;
	h=To:Subject:From:Date:From;
	b=BS0Be8hRJol67HJeMQcGVRgKWEyDKn9EElnuwRMuDoHAfYKhK5yTXly4yN7SwUynT
	 riB7O0J87cqq/UqEIVFfW8cIepHKpeYm7bjFydKxO4daMoxr9cpV7qPaYqed3fU+gE
	 dhT7H9LdNBN7rQzl7OG/F2+STGYUOgs901pp++5ogt3PDzLsQZgjezFQNBobsIHIny
	 c9dja8QGazUM1CCqZIWPK1dMgxa/k5CSKdJFt7PUqArI96V+ScNiGTK29DTDg/q16u
	 /dflfU4XGiO2WUsUEnDcwa9d8vsmet/LU6ysvG94J+UJddWbIIqkRmExQsHnmGpgMe
	 TsqncVs/fhozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009DC71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010579358.10972.1138504926007485120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e62fca1124d9412f087693f4401e25c8220632d8d18740e9936cf0cd381485c
Date: Mon, 16 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750105793
