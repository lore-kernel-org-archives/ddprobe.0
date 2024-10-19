Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1826A47F53
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729374354; cv=none; b=OhO+4ytqWCICM+b6mvftaCuVZfXfJ4i+oNL/BgRSUUWXtZFbz0XzNO3kZqell7iZV4SjLgfB08gsH0NZobvOy6w/pNWZ2gCs6SPbdw/PQtMflOrlVZTnSH7jJcE8sPMw19jlI/sqlTsxekwnNpZo9pStqvf8JWQUINFalimHdvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729374354; c=relaxed/simple;
	bh=4goItfBWC3otf1UTxTUpKYfx/APZngctagCakuBCUrc=;
	h=To:Subject:From:Message-Id:Date; b=kDqWgofxl4ZRQQqnP6tQlNBdJ/EMdTy7joBEvqeKKFg3PYJ4YynGDjSRdOR0pKLLxwK69i8EwPU8zA91R3AaPDucp8Mcie++ajWXiOd8vlBjKbmskkUDqw+JJfmAv+BSSTr6TvDqU8LO7LmIB+DpkXul3csIT683xmoHT3QN+jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1S0HIdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1S0HIdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDEFC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729374353;
	bh=4goItfBWC3otf1UTxTUpKYfx/APZngctagCakuBCUrc=;
	h=To:Subject:From:Date:From;
	b=W1S0HIdGVjJpW8c1L2/+bxGBjYaBqtRgnQX1yLm0L3zO7lhJORMHxYNuh1f1KQjgM
	 3HZ6v4QSBhUruUbbkPWuFVTRNCEKzL+PFZP3YIoeJN2dAjNogIVOvXAGta7YNHywEC
	 i3F8Dzzn62etQY5L/izBOoHxbyFAjKm/FvTYl4ZHNOPXBhiwJG+1U5ek5hJ4q01iF4
	 rZJS3i7smxiAdZkzHdffCR6Av47pR8M2cwEofusqU4Selz0QrwSBHIdvJj1E5yuukt
	 +0MuVWy8odkqJqw0fiUbEcAQOAXDHgADptT+ZxCr+H0pmfZuioatVHzlwRBE9xajI0
	 VNrot+01Z/SOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98635D3C92C
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172937435358.1537.4889003468365052049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db908eb982fd023e2993c6dd79b16c7011ca13d157688d36612ecd3adf0b3f09
Date: Sat, 19 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729374353
