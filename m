Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA803A1E99
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767328434; cv=none; b=Bqtm+a+U3tbLdp/+CnR+AhW3ysiLuImyLS0PYQrQk7mGWK6E3SqEO2yKPz9mYQjuYmRccYARYLfI25VjTHBIl54XMT+m1QTkPAGcihB+DzpO/K+/+Uey6+pARkfZlRiKLnBtz8sCEgAPF5f/bB7Xm8i4WjubEap6cpSL6+cnkrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767328434; c=relaxed/simple;
	bh=KXJ+pI9DT4oRkk7bRrOXOg8Sg216rxetYc5NlnVuXyY=;
	h=To:Subject:From:Message-Id:Date; b=sjSItFJAm7u5sPA+FHEk8Xw76uPE55s9kaZqmQ6gu4rKU9gtWwPawM2MG4QGOo1DGSQ+wTLV6Cuu607qUQWbr2riEugluPJkX9a+/rgBDJwatdaAYYaEAgFhwgSwMWJ+qXlTvvH5CoGsegu13yyj/95NTyOyTGl3CH1TJlT+ijk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYnDMGRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYnDMGRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F6C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767328433;
	bh=KXJ+pI9DT4oRkk7bRrOXOg8Sg216rxetYc5NlnVuXyY=;
	h=To:Subject:From:Date:From;
	b=AYnDMGRyfP14mKTYCyJJTzSvQzJGWqM7F3vUdRIEPCkIUypzQG4rrtQbR86ILGCWg
	 L4n4g2lBZcOf2RMubu60PNGYxbrZ8eFX5huATgNB1Xy1DqD1qPWXvkOTmhbHt/gSpY
	 j4MkjH1d4Etrortmlyc3jAqJHoEwqCCgxWdT2nazBOCWROaNzk6hlUrfI0fCHbyI4T
	 sDpEGuzrLm2K+SVVl4xhQSDoLGDwYyMr1XcWaXJwQRm5jupUFSA+Hxb4JxPtWKZzEO
	 MOupAD/CHwHJZDCdsXf8flQaaQyysw2KKjYZHP3wfFCDef6ZUVn9xcLcXl+KxJ16qd
	 DGn8LbAkVxQVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95127E9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732843357.972.4651379944613335019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12beb37a2b3c21befe9d553439db13abe4d87d137e2626778ce6fe05aa019ccc
Date: Fri, 02 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767328433
