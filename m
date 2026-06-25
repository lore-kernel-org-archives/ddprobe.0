Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6474B346E56
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782417454; cv=none; b=cPjggdh8E2HsrPs38Gxi3Lcj39NYraDM2apPEnAq63B9EG8pawpnJcVVI1bIwxN+UDETg8hEIhMNOnZFa40v8c4U6brLOGDGWK8IyRWeodv7aXRYMoEo1ACd/XnVjWt9gtLMmOhKoDQTTvPJfbuHpm6PSqpiO18P1w+PlPUq9/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782417454; c=relaxed/simple;
	bh=g6PD1B7BImbFzkSHfEwsaP5a6av25MNB1RmTfeLwda4=;
	h=To:Subject:From:Message-Id:Date; b=Z9zNLDUXy0WUQ9TUlBQmP6e/r/NAlnBCEx4UJdN+hWiz81xYs2g6QxhLSuqswwGTSlZwwfuCsJ6NaV4boKGb6l4rXDsyEiUQJwJvK4Qp1ZzR1Gi21RCUM1jtFpJac9GERyCSQRJPwNggu/KmY1WKLcJ3Ww81YvMIxEEd+d3L7e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaM3HCoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaM3HCoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7064C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782417453;
	bh=g6PD1B7BImbFzkSHfEwsaP5a6av25MNB1RmTfeLwda4=;
	h=To:Subject:From:Date:From;
	b=iaM3HCoRVeTqXYdehfdfiMML601MiraIGIKaN+17XDER11ZPfJikcJuEgAjHPxnZL
	 JlkiSjDgvf3mAqmLA6cXIBlbC0AnB3sic9OCRGHAdcpJC8U6uj9j9DlSsiEIl3i7m9
	 6QGCx27OgVdQC9GMtlnHPN7A6Wa4SKGGlU8+jA4qZnWatuYhAgb8hpU0KGCYQjLbS3
	 vya+APfCQc6C3Mm/rK/h57mOREWmHypsO0kq9u6NY1WlB6ESrUKdKOMfR8GJ78u5GL
	 C+TZe+Vv5Enz167MOnFMC/cQOiZEhCSdoi0fSrmDKH+4SZCUtrhHC03HlERSmuMwTn
	 6jg7xZZLby4Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8BDCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241745371.20700.14766847731280024592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a91d8e08f48c66b3252ef6f8331f263e7033e964aca6c3a407d8d6952eaa27
Date: Thu, 25 Jun 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782417453
