Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223E91D5CD4
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774570494; cv=none; b=fqSWtdpBnQyR8v4VJC4AbOkoJmZqrNE6HEipzgD1EGWyZe05iE9TmTUjwUePtAmM12yuYBm0naa7Vc3Vf7jEo8M+JA+EiBt+q57cZrm+AQaqa1Fk2G65mriyqR+nzownnx0/OJtPj/i4W6gIJfmq3LAyyrqk3d4fZIcEhxCMjWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774570494; c=relaxed/simple;
	bh=4QYcBy9RdiIVmsQrGJdYIFgQjnK4/de0dbv7nSlrXf0=;
	h=To:Subject:From:Message-Id:Date; b=CFFjCYViGLJIzEPbRNUoSp4CrssW9Ou/+luPJjyvZjdvG6IuUFSn0UBsZOpmvAJnTcFONgLKzYDlzISaA+hoeLePtUD/8dQnKRXGh2kIIqzgQeLBdx0B2S6Yt9+TAVYWFEGnAOTXaNRBTmqCrDX/+iwZ9vpLmYx4CQLybIzt4H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqA4ZvGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqA4ZvGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A83C2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774570493;
	bh=4QYcBy9RdiIVmsQrGJdYIFgQjnK4/de0dbv7nSlrXf0=;
	h=To:Subject:From:Date:From;
	b=PqA4ZvGKFJRDcZO1CVWRDk5RzNp068QkxcexfY1g8ukhXan7ORDxwf2RMSmEEOv0e
	 Mzal85O88R6N75/uS2q+PFzwPo65Z6BcjLdNQcSdsmhCAHc8b/hE4TExS5me9qZsye
	 FRSzGLys20+XtEgCvTZSWD/jrN64WtU1rPJyw3Andqn0Gm+8fM6cwxx2ZsmNf0qJt7
	 s1p1ltKP+8pXFxx+FmuEfL6tZUBO0xdyga6/5XmOwYxgTMC+9XNLa+CRYzSilpSvtj
	 Ckao3CFcsa+kDOGtu/tAxGLiPVVc5xJ7H5Nhg79OM/1C6HDfcmvRc8U5IhQy0JIgpp
	 3LxzESNUP6IrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8B010AB82D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457049364.10133.2178907612273821953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0433a9f4a2b673a5e5b4c1afbc15858429bf12664221ac50cdecbc1ea39ac19
Date: Fri, 27 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774570493
