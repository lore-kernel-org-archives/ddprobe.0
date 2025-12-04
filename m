Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1286C296BC9
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764844974; cv=none; b=BaRifFid1H06v8YH5JCEuEKjeoX5jk6Dj7IhEB7Z4JCpS2iUXNTl+sq64IoFaAOe3Gn1AtKyNsB3U+lo7ED2+USIe6Pocxd1SFTR+bFXoMrvcKF+EfL3UVASgv/JB5ycQaYaq6hgkZV1ZzkxtSGrtLwRdtqktX8YJ16sQlQegHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764844974; c=relaxed/simple;
	bh=mA2mnrsZfZqU7zb0i/bXtdLhAq3Vl7+4+Lmd7JjNoyA=;
	h=To:Subject:From:Message-Id:Date; b=ZfaC7m6yxJb0P1xdEIvmlb9r9gpagbaEf0j4TBAAkUrlnjYvmaWt07o4gVTZ0BcNVxuNU1Kdn2a7VwO0UONOr3UMvl6h0/W53XwEGOx28ckvVEFpY77SqP/8GU6JNghvur8JYK+vUfD2LP8WUNhy5fGQsBPUqAdzKQm9GL8q3M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF8cYmIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nF8cYmIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91E2C116C6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764844973;
	bh=mA2mnrsZfZqU7zb0i/bXtdLhAq3Vl7+4+Lmd7JjNoyA=;
	h=To:Subject:From:Date:From;
	b=nF8cYmILoD6DLxzVPoir9L8ZziY18VyixnjAxli7Uwotm/byt3Ja/Y/c9koGSZyZ6
	 54TmGcGAt47SOWH5jGK+Jj6RA6kLg0OaT3DJVn30zbC8/qhmieRuTL2iKklK+Dx/n8
	 J/2jfRGCWMzv/3Eo3KZw2xdq1dFclPoAT7Amx7DPQeUwFP3VsuNzWB4S7uemY9X5Hr
	 4anb+pKU14Dxx+wDekrBmdc4HV5FG4reEayXep8etNuWn4OCkB7DqGz03dexc5LDbd
	 Urj0K4ZrzUs+k0qsx7wLwrwNZdnv2z51eNduijUeCQVcxJ2irmO6kbzywg5fs1RjbA
	 E7xCUnGPUUHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C76CD1F9AE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484497363.4369.1825301867197613139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd76cdf95bed28e6e1dfd5fda0f4b6bc262b54dea32c69054de1c12ff0fe77e
Date: Thu, 04 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764844973
