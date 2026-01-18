Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283BE21ABAA
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768707834; cv=none; b=T3eyFtarRZeP04qOIq4yHgadSzQbEjuuw+ehKfsPTtDMFLPyEeVykWhp/4OSFJ3Aht6N1aidbjkD1am2mNXDANX/3EAq8ga+8SobbM3OmQCQ7uSVXRIldOFXGCL5pFAhxXTalBlJ+YvXYL7UX91RdD3yY0DYTSthTzzMQfpk4x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768707834; c=relaxed/simple;
	bh=jnXvv7uWrCcZ+cwztl4CAqQaXuE1nLsEj0cG94TFGa0=;
	h=To:Subject:From:Message-Id:Date; b=f0wEHOm5AlEZ5VEN7L3Qk0DZXkin6wJ94KXEFKNAFv0m5kSO3jKTeBDky6R/UFop9BmnL4Y8/EkA6qCUs0XskWRC3IkcRDf1C0dUEA1Fh0h9bi+PGwpHMNTs/GMa6Suz8FH/tQ5741nXUKjUaeeojP5rS13Nf2eHkG/CTHzXHFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk6oi2Vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk6oi2Vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C16C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768707833;
	bh=jnXvv7uWrCcZ+cwztl4CAqQaXuE1nLsEj0cG94TFGa0=;
	h=To:Subject:From:Date:From;
	b=Kk6oi2VlRLD/EcZQdjQeH12glPXe5kI64mHOF6c+dkENMwVTHZjA7RMtMVW4msL1x
	 P6T77BfUdwXPh+nkIgVP9WqS5roHyssaw+2cxhqakKmYqzkKdflpve8R5Ut/skGHQV
	 J+TzFZQ+4DlqteYelpJrOah1pc8IuxSYscSzuXWwqJEjOy+/WtDPjOBT5i/yk8SuSu
	 3e7sXEl4frlERf/aAti+m2oM6/fl2Eb5C0MWnhSoZQp9PxQj3i5AIWQRt8dOXXW7j7
	 P06glveGqC9rbMwdTGrSP/iiJzI+DnSCw2Dx2E3phWU6ZqcnBRBkXCVhqfX78hWkpF
	 j9A5Yn8WgYF5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D07C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870783358.25275.9888178756083549130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b9cc6a6b478a1348aacbb1f11b7640ed6b203c89fc02fe27030e130e8eb9fa
Date: Sun, 18 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768707833
