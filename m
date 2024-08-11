Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC620323
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723367154; cv=none; b=E4p09TiPUVLkjTQVCRoUp1zPVPLLnvOBMiowstkCZAI7u9klHStBKPyNIXpr0ohH6vmzGtiY41Je5XHHjPvzDubz6hh3MVo4cBg8Db37oyiHgr9fJPt9S/I5eq5gTfLN62RE8MKfJnDWkpjL2SdhI0pCIGMr2+aA585Z80VYkjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723367154; c=relaxed/simple;
	bh=91VDoKs71KdyTi4xcRZBeIf6DJnSALRPFcglBfASVzg=;
	h=To:Subject:From:Message-Id:Date; b=KyIFet9u9WV6O5SqTlIQlekt3GDyYi72VEHzUXzy3PEdtPi9Z6Nbc/kmjiLpDctcbYTjGCt/ltX2vTzVHyuf+YnUrzLl7SjJgqGNUSwAmAfEiB70QB1E7kUK8Z1Xd9Wk5IDYtkCE8ePgYxILtpcKYTBeF7zFir87W9+rn+SBSII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBC4j6Gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBC4j6Gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A812EC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723367153;
	bh=91VDoKs71KdyTi4xcRZBeIf6DJnSALRPFcglBfASVzg=;
	h=To:Subject:From:Date:From;
	b=fBC4j6Gulv0tIGXM6L2iE7q3HzVhyVDh4JVYqM0ZGFKp8GXPKzl+ZNJuaeb8hBRWT
	 Oe26TIc4lpW4AYfSOm7CXtroabqwNBRtowncZ/RLWEx0EkejnaA2c7oAHdATcUa5h7
	 TA1H4Utx015obIXLdXpsSshmIq8lzCAybs5SBdL74I36tJTElnIkir/fM+pdcN3mWD
	 UTCxYH8184ngm85kOmCuAk8tfqq+9tqmP8lUKOX8O3aKeiTAdPRhVYjVwi1UsO6Lnn
	 7K9VdzRGFScSU5UQF+CfjHnNShFhRz41invKl9icojI6s6u1kyl182czynrOFkk0nj
	 yjQZDGsqUMB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A66C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172336715359.27647.904091243220184923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a71e53e6e85104a75ef80881d52e3fcca171643c80a30a58982586f06296e3
Date: Sun, 11 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723367153
