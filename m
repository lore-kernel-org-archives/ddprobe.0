Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2338F2222A1
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753694994; cv=none; b=m6jm+17bS7kugaIztOV28frQAwhtqbY19eM5CzBAQhigy8QSb6n5Z3cXE12MWu6yLLENSSgpB8z7MWKYyvLJHNZU5SKbnlENJkq1AJX+vf/ch3chLVz6idd2Cir6IesFmVWWFygVO5Y+/DjvuV2KrZyMFuH40c+3ctbBQ5i67tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753694994; c=relaxed/simple;
	bh=WbmgE8OaeK2Xm8da+tT2DEEalOlcKx2I0eqyVXwZ0es=;
	h=To:Subject:From:Message-Id:Date; b=oCcwuOu/CXrPwBziHpjGFMQSwRUXGulEHdL558x4oYDirgA7OUyhIqPZd1bzc+pWkGW+xXJeuxS8iQlyTI70ESIv2PkhAmn8/cfqCM6wjmcwgq9UL+5WIpqq6ZAVEGzQUBeksEPeASu6z6UUaAPn5BVPJ62h+PETZw22rY9DeEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8BUhuY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8BUhuY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F7FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753694993;
	bh=WbmgE8OaeK2Xm8da+tT2DEEalOlcKx2I0eqyVXwZ0es=;
	h=To:Subject:From:Date:From;
	b=B8BUhuY4cUKtmVyyYo6PkXogXer51ILBvu6Vw32eYsEovxniQ2Bei71a0QWnltBBz
	 nfS3DRMr9YriKvRBBLrj5mi48DPWU/0qNV3ImJrfPgdj/H2utH14Xt86K5qordwSWy
	 7wr9ut0bbJ5paygnQJe5h0HRiscMAwj/tKHeGF/YFy7oQxptTHET1I9n/TkAcyIf+b
	 Gwrot1AdtRJYHb+woLt1PyWBhZS3nyjq/PD5By4tji+ADfO3L9Fy9B9bDhTfBeiCs6
	 9I0fonBOofSYW8n+5Ndf+3pNCK6EK6wxFB2OjpeI4k173UTISCMzqhU399z7rn1xTR
	 PDjKGX0f7mJ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90914C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369499358.4429.5726918698488854431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d3c729553225103eb39785ccf0500bd52f8396d739674c5a2ee5cb060f9eb3
Date: Mon, 28 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753694993
