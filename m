Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC363CEB8B
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788163834; cv=none; b=sOOiKSL8h+AietpccajPSF+7uUDob9VE9+cw9GdBFZLP28YgkvGBO7SO35hfTkitcx2qX50cRh9AiBoQ0BsCyMiRYRjcv1lQRgyuBZVfMO5ZxhuC5ADtIOoa4ug81n1+XK4Nuc6FvID531iwtxs9CMHnsPQUto3UOXKTh1OnGio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788163834; c=relaxed/simple;
	bh=sqvHMjgQHmNM5sQvMqVDlQj79x53m2M2SSnYqBoHqdk=;
	h=To:Subject:From:Message-Id:Date; b=GPbaZeQhgsvZY8hljTFoyx8iyrldulKCo48rSYMXImwTpR2RqVHQKZ4o5nFavwFJc91rvTENSAJFjFptpkV60akvajaSap/kjd7f8c4toGjzlXnGYZlhTqjR9ylOAMSguQxBoHZUs8O31hyr3Pvkbe3IbGExj4HEtoCgtK/TAiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8pJ2Czx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8pJ2Czx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC64EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788163833;
	bh=sqvHMjgQHmNM5sQvMqVDlQj79x53m2M2SSnYqBoHqdk=;
	h=To:Subject:From:Date:From;
	b=C8pJ2CzxeALMxr0OLiIP8YSW+D+U06SpNWlymNdLICLpEnoCXbc0JvqSmaSgPkYtL
	 MNjRSueQIrkrXxM1+/PavPVBui4VZO5TkqoOj4UJdAI8u1Y6sWqSEavxUQ58JSxGB7
	 FFxTimUfd6ljH2rSGAovsl/uLg6liXdWsWLTrlZzYOkQsTenmVEOVU4ac0QhlTxQ3C
	 wit1YhOKbvEq5vcL/0XlW3QuaIO/RSCjRejXfUqIBft40dZqjrk8BhE0clceFN1Qhn
	 irDKTnBV/zqdJVYZ8c62B3pe1vh1dJnkYVSHrzaNcwQuLNLs99sM7G8iL3FCIXaOfN
	 KtsW3Fr3yBDbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B449CC624A5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816383372.22582.18351979668025191707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c35ee737fc517270dcc49aca0b48cafcf707536dc835f50a2b659a76b363a3e
Date: Mon, 31 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788163833
