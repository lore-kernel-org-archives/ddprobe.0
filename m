Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1883C24DCEB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768874034; cv=none; b=QCMobhVn+aha5++Cr5Eo45C6++UURXXkePMzHFuPJh3Vy8jQOkD/o2HxGJR0xt6NKywZbcMLMGwOlRzgYiw9kZizlCzIHrgusAWg+Apn44JCABTIZb3RMOJARz6Or0RB4Q4Vy/66M0hDlgRwPF18IdxzxRM0u/xt8b/aj+NciC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768874034; c=relaxed/simple;
	bh=zXIYCeAu6Yep1qL28rp00JxvsxOfwd3IrhFGQx1ldZM=;
	h=To:Subject:From:Message-Id:Date; b=ZWRjWpl7iqGVau62QCa9KU9KuQvRWD4Vlj2HOvSnp1E5A2vd35mXT1gFDOFKGx/shnFRxn7gN9pPn9AjuI8YlAOj00n3b1bwuPeucMO20HwKMDt60gMfixaqhb9AL/R0qmbu/P1AtbF9FuwFkh7rtCg2kPH7ngFNUiQtl79zzUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZfjdkII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZfjdkII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6798C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768874033;
	bh=zXIYCeAu6Yep1qL28rp00JxvsxOfwd3IrhFGQx1ldZM=;
	h=To:Subject:From:Date:From;
	b=KZfjdkIIzWXLx9SqH5zbUNabDfKyxu3U26voKjP8Zenywy0jvRylrHEkUJJG/L7jC
	 CaGLWNDjMLQDxunDsy9XWOvPrAmsApnoNAWA5yBvw8OP9xovcjQgD56yZyq9UHQohS
	 FBHgVWSZkIjaVsFDxMUF/ii3bxLKFOKSiF+5QYyUa0CXhcJLwNySSVawiWg9y9nC9U
	 GM3gOqZhWCJ2vA3DhQcqM/X3EN28rCEl3Iw87yJFBAWL9a035qtloORog3o+5E8i3n
	 dwMpM9QhrmPhPPQPhdqheOqTX2FoAkjviBHlCawSJ36IO+cpvfp9eY0e1Cvtm6S4md
	 9xJe6R9q7cqzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922EDD2ECFB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887403357.8565.12805747372705411255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80723183ddfa521533d688e341d79ede01cf594ddfc7822dd454e3665034cdd
Date: Tue, 20 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768874033
