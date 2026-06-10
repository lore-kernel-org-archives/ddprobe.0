Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F55E1FD4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781054734; cv=none; b=fXzSKwSmAv3zM84mEdfYRpONbUF1RPzL/I5PkhWCLGSvuYfuF1epYoj1ErwDuz4NhC/bUTBsWCFlClqJPTiW7IVDR4KEDovTsJC3EAPj50gvBV9FjFId9JAlZkauPAESS7vjUv5RqOGkk4Fi3J/W0NjN6r5L2SO+47csqVdN1Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781054734; c=relaxed/simple;
	bh=/yChTogrBveLAaGA8pm3U8koUeNTgFmOTTEjorf0OII=;
	h=To:Subject:From:Message-Id:Date; b=nvBhlltddDVvRrKvvr0c3HfEfO5u3E/WxwvJB1Vrq8d+DCkxWaffsXNZGcXYU3ZW9MaSQILnlKvqAAC58Loj64NtzhUL1tIdXcrKlHMta3rwjYjUJtk+yHLEwkSHWLhss/DHpYoK4HFIIIx9/txtSv3HdEYdqCBy6yOu5nCLhu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVab9qsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVab9qsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0A1C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781054733;
	bh=/yChTogrBveLAaGA8pm3U8koUeNTgFmOTTEjorf0OII=;
	h=To:Subject:From:Date:From;
	b=sVab9qsUjTfDnHOEL+1cSh4CT/vpL3pJWDAYW6s/22HDWHQi1BpcPxTl/rgsa0dn1
	 UadHytwksWc4tfpVfF2MQuI8xifUS1ZDjrfSwVdXX0eB/OKjEM06km4bn8Qoi5TPhc
	 qk8gqx7uXwGs1VWkawR0BKb49tCDkMlS0rjy889VWowRgna5VRkjt7svhnMAZff8qW
	 V7xUxR4cfit5gG0UvKi47M2bCIyc2nRnxoFtHtYb8+ZozKd1ja1pcLohLQVGYvK9Sw
	 6guOuL6ET9dhUtajDwA4J/cmv3KUBHcJuhWM4G8ZfdgKc98akz7H9AfoWKZIEppsMx
	 8v0oCfnOxctGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F2ECD8CAD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105473373.9761.4864636418096932326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b6c864d3ea8657dc63e14a24bb24e62884046909e670fac6e9380f1e49c5ed
Date: Wed, 10 Jun 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781054733
