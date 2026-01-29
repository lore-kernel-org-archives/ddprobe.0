Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24986372B3C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769678034; cv=none; b=r05xkb5nZcTBDx/+oF2lHyGmC/wsuca2oGLEyapOk2Gzj7BS0OpI4YRu+JDIiIxlHAloHoVNUAP7sPokxL0PgpwJcyB/wQ4Ez7FeSCqF+GyKEgZ2/ijlfVDwLM6wcxpwZOH6QyQWcZjyWJcULcEorkyhUzTQW0KeRxucEi2fpFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769678034; c=relaxed/simple;
	bh=0PAK5ExDbTSFv5Iu2eTRYJB9kD9rLpkg2EvzQzXt/r8=;
	h=To:Subject:From:Message-Id:Date; b=g7/Uc3H1wNkOqcdyD/4V1ixbBPm0N/CJd0bmqIwZ774gW2Q7E6i46/gcYgVy0GOwtbG2XDMlwlOX1vaoJfxP3cuyZrBS+lkQU36NoIeYMnhl4weyvEtQtA0UwZ2upEPT3byNcGbR/czns6uQfXwiUI1TH22EvHJbPrFufaq08o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4zGQUz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4zGQUz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9611C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769678033;
	bh=0PAK5ExDbTSFv5Iu2eTRYJB9kD9rLpkg2EvzQzXt/r8=;
	h=To:Subject:From:Date:From;
	b=B4zGQUz0/EWVg2NINXainDj++Ec9C/1h5z+hptKV097StHDCPZOibQdNz6Vp+V1fo
	 4HFL7AtvYxnAPIcT2EZ6lSEXZ2OZAKGs6Uv5yJWpzVZ5X6D5O25e9lT1aXBiHChzjc
	 4jl+0XX0ozX6cBSUuibYkfaJrP5C8LIFQchJhe+s3KIwaiO5pyJaLrXTg138zC3O3P
	 syu7y/2K9nMhBIaGDFBnwcPiqjoQqG2dBWWCD0rIQnv3DXLEcrc9fEgabjglkGgFdk
	 maf7KsKXzjVqhs4zjBrm/cqiaGNxVvniXlvZbo9UvSyr/5SfdE03eQ1i6zQ3DWUL2l
	 fpv61mTSKyzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978C5D358E4
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967803358.10241.15740997410306905608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53688cd952e7c8dcc6d89c9a048858e716bd24a98c53556c865165f9bbbc92e6
Date: Thu, 29 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769678033
