Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1769B33D6C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768990434; cv=none; b=EnoBzu2Me+Pnz7dF7tZyOyDPbifnHVEPN168RYPplrIsCkMAOKm0+GayXrUPyXhmJ8YAMPhB26yK9EtL3p+PgO1RztrI/A2WIwLGOUXrOf44arVxmRvXMHU4RkGFLUZYbM0KwM3nGttzQy7aNqzRbOPiuABMxxxCuXsGBAxuWGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768990434; c=relaxed/simple;
	bh=XrUSZoh/t1KAE4BZmknPbfZdjt9uOCqsNfrOt48ajVs=;
	h=To:Subject:From:Message-Id:Date; b=Ns9Y0JZbwZCDI3iN4BbvpStxdJ6focAhUuDA493AFSu2xYURV/uSazr00bZF1AQMqflKgBw4bHgN4dI1S0Lxg5Ne1pZdboxq1z/9dwFI7eRgcYI3/GYMME4WGPKWIq7V2yZsQD5UfDotMN3P+BYNB+GlMpTzPAcEi3AMvZs1xzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6tVnHZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6tVnHZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF8DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768990433;
	bh=XrUSZoh/t1KAE4BZmknPbfZdjt9uOCqsNfrOt48ajVs=;
	h=To:Subject:From:Date:From;
	b=L6tVnHZ+BqMWYuP0z5eigiFr8LnsCQdcqPXvXXy2kt10KmqvLsemeJ25jmJrNsWLp
	 DtDETCDkYRY0edEMJQSc7hav4PZwDtUQ8NSbngs4hGaRguVTZ+pFl5wBR1DndzUnQB
	 PbeGgs8ROpN1ZC1htRMrmyhW2OkCYYJg6wRe0hiL8FS5nkKlTqqM0I4UIYKj0qW2g7
	 IBWPCgecg2LzvkKIQY+qtv1q4oBTQtVQsSSAj/kTcxeSfNtKtPeLJcz2UfGfwfkrP5
	 UoqmAVe5p3i5/9EljWK+Jv95QAUwqwhxznKraRFD1vSZy4ZqTwQLgNh/aXNJQeUIWy
	 OsvJsHdOrLmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA15C44502
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899043358.18690.11971275461538930642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488b1c3827497b06242fda867bc860dc56e85b65e776c1f4410c87ef40e2935d
Date: Wed, 21 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768990433
