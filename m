Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8F013FEE
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774937694; cv=none; b=hpSUE0A8uRLm8rsaRC+4tICxx0x9Iz07s+N2tfh8WTCp9mCGdIjHnjeQJDZm3/1UrwTgHRdBRuo5vNUAsKHfh15mQM/yAZXoYsatmdYjw/i2qDkTs2E/2L9d+kyP3zDy+AYErsvOdlT1vHoI0YSer6yiF0ZmyN+5Px9G8XbesUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774937694; c=relaxed/simple;
	bh=71zYRMZBMvdhtC2EHZdr7vDNlNJttgvbzsUEql2/1m0=;
	h=To:Subject:From:Message-Id:Date; b=bISmSs/K2Dn28Y5llIPCPUZ9j6RpBZHu0mL4LdJ3tyxUofxkT2oZ1DKSo9Gi31O+OjIL2UnE7qPm5igkiiShwnsW+1+7UrDZ4n9uFasHNaRkguhGgqEbKRQIoD97ZDwkPz7fzMhAmbivujIFt/cXPPEb+knn4M47x1UU/2ssB44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAUErekA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAUErekA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B264BC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774937693;
	bh=71zYRMZBMvdhtC2EHZdr7vDNlNJttgvbzsUEql2/1m0=;
	h=To:Subject:From:Date:From;
	b=GAUErekAkXZh5WQEXu/U2L3lXeaYvfu0HaIfQ8ikTTGAJWEsTnAsl4P5d67m4zick
	 MJoPpAknPCQ9qFoc8kdAAx7fqf136EcThNMKSuSfp5BDRuJRjTkFuQHAnP9g+y2Irj
	 siKWfi48MdaxuKRP7uAEjXDFL/jGDz5cpp0c4QRoUefvKDQgk7G39ljBmd9ynohIXr
	 VixsaS8hljH0+k/S9EE5RNylWL3q6Gt+ZrDZ4DkSXpRvaJ40B0OkJuxALb+gs/thld
	 YhVPSQD5fykgINfT4j1W65QLjeQ4dSRqjl5osMhUK+Gv/rw7prOzc7yjW3f/bzY2qt
	 8kBqLN4a4vk4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E390FF60C6
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493769363.32067.9583709315305104012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd89eae1102b5b7603d4fa373d13264a1ab86afb58de30a4bd9c7f4a9c24799
Date: Tue, 31 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774937693
