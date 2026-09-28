Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EE919B5A3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790560234; cv=none; b=SbroP3alqPTP1Jm4Jf8UiEdQFuogb5JblwelooMyWgEMJOGbHMv9RF6BUiJh23QYquv6iHCib1olERo4c14UmaTeGxlq3mNte1wJQfLUFn4Itg4bo2njN0NrMCL8msltpVCMKKkgD6WGfn18mzHnZlMu/zbCbt4MtQxS9y9g9T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790560234; c=relaxed/simple;
	bh=SNZkhM3yTcIZByGYsdTj+1LTTGlbiSlblJpxz7/LauA=;
	h=To:Subject:From:Message-Id:Date; b=gsj6z7URKOHvtwKvgH+tXKsXxOrI4v9rR31+Xx2fwW475G/dvPs8S/+z6GdzV1gjV4X90zbTZWFtrA0pJieSfxtM65yQoZRC9VdgQqY+KtfTN2K2H+XV3SHQ7jqnDzLmJQ1hCtmY/1K5TGaorbeYGe1r8SBkbZDiCv8NL5IEzdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEZ3SBZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEZ3SBZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB08C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790560233;
	bh=SNZkhM3yTcIZByGYsdTj+1LTTGlbiSlblJpxz7/LauA=;
	h=To:Subject:From:Date:From;
	b=HEZ3SBZQ/NmS6J5Xh40vEBG8TgKBsexmK48PrhFTJyHQRp3UqRo8LA6rbHUUvebzG
	 Rd8DyXd7kVVphqmhxenfoSuXPvjaN+biag7qvlILitCspwrHFqQpHjAxtziNakjK31
	 J8rrG1jbarFfgqQdPBo4guaHXQSR31oDZx0PGIXH2plO1xKxv30rrG0a2bYYdJnoro
	 PCY76Sir+FDfFBwrtUOrgfUi37wd+QzPKAxQYWWIwKZXc6KrnAJANEBiLprHR5ndrx
	 /al7UvqCRw5DjERmYT7xOiq0fR1wwTMi9pbVzMYWG30A8YbyrLXvOCXSsrvGagihJa
	 zDwzVg6W55E+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB404C9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056023369.26225.11518304811226918792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1254b7edcf4c9adddd2cf2cbc89a95b6def2598682e7319cfef517c711e052e
Date: Mon, 28 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790560233
