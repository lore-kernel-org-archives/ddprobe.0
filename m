Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B9220F33
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755471594; cv=none; b=tOkYKjKaaX0KTrdwIM+ZAMJb1kKxH/hTIxT0Wb0yL6FeRdmpaOrBSM1UVZPR/ISC8HSkfiVKwCsOFdkMf5vhNfInaGf5pJkcIbHjiMuW2wk5EHmrvCLlF0qgHg+2TZ58waGO6JYY3nLhq8UZDsv6N4aVXBukrtjKfTpxmjyJegs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755471594; c=relaxed/simple;
	bh=8dh8T6nnGL9XktFwyEtkJnPQDI4lzyp+FxWectiG2GY=;
	h=To:Subject:From:Message-Id:Date; b=XDfbuczGVmTBSRPWhNSohJR4ntxxA/VxpBXfIkEQLb6n8Td8YoNsMpEmqFABmOBVukvo9PqmzPpixEu1ImJUFu2WDc/wwnJ14LQ7lJHtxCK1zOleWgjg9+bbGHIfQb6lsHZ1E08TIT2U2nhjyrkgX5ULc/CKVbzAiG6TmpW1bd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcGeEt8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcGeEt8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66E2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755471593;
	bh=8dh8T6nnGL9XktFwyEtkJnPQDI4lzyp+FxWectiG2GY=;
	h=To:Subject:From:Date:From;
	b=AcGeEt8T8/4rtwJDSBiO1fb16AAcvnO3K+PHkYQ1PEJ6PXMN1mqNN8suoXFCI/tL6
	 TmzgY+OwSb67et1WGq5JpF9EiYNqCz/y5wZ73vKup81EpkRK5SpCK0OIGR2voWptiN
	 9frtueETypjIYbzuY+r/LNSIax+tYkJjYyw+E2sRlo5A3IOL7tnGB6a4A/lPsLfgB6
	 iwKFebZjC2yPBcFRJqT87vte7NCaOJDLO51LcIQIofk7rwNQKbdbisRxGGInZEqoOp
	 usahJQcjHxUvRbaCloGlYpqBkaSngDVXqU2E0fF48d7BC8RzCZQZl3RP/9UrM+wuy3
	 WAnEy/dIae6TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1DCCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547159357.18348.10392496722787741339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c26b29b75c5134617234c6569d7ab22744d83abfda93d4b51ffdeab30cd06a8
Date: Sun, 17 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755471593
