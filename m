Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1045B280309
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777877854; cv=none; b=Q/L7DYTRXtUG9L+T/L0NOyDCj5gCbK4kRLH+cu94VYX17SY0zogjcUd6DCeJsR+goy0loUfoFQccUrgak89bEdS1H8+QFcoamAELNMDYh37SkRTql30bgrVpK/MaERV79mmk2O5Z7OTuODSRI1kJHqnT27gFvoZq0L51kntr/Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777877854; c=relaxed/simple;
	bh=FQrVqEKOvd2ClZtK1bHr0y90fO3tHHYOiliIMvADpIM=;
	h=To:Subject:From:Message-Id:Date; b=Us4mz+B8+8SRGYU4P4vjgB4KaQSBIXnTbl9R3LpYscrdbFJpIsZ+x7rWvxHj53ysyyQUyt9teTcIkMmzJyjxARXIcV5mV8N67JUyBR64Qn7J2h8We5vTRIY5MXU62MeAcfNmkMteUk96dJaJ+ka7w6VBSFuUOqLihSK+RxoflRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvGcZb5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvGcZb5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86C5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777877853;
	bh=FQrVqEKOvd2ClZtK1bHr0y90fO3tHHYOiliIMvADpIM=;
	h=To:Subject:From:Date:From;
	b=TvGcZb5/8K4pK7826AatYmhh9w3S5C1wLK1lidXdnk9BhrarKWTtKE7OKD11Llj9r
	 ln8ZZfqhAaOsEiurT6kYLz5tO9FG1Uj5K9H09mi7OXXIEly2t9yo60pM6Qq2oKLVdd
	 h4eGef5s5s/R0ry6Du1mOwGsnY05iiHMmKa7/WN7/rWEVnD8Rvglc3xE8KDh6JHnAP
	 +8AhBruDFUnaKSFStx23woHzJ+Cb0woCb1R7axu72IZ9+h8j8OJJwaDGtclXtTDPej
	 TSYZhMEg1WpFY0LjQqdfcw2uYJNRDh7ucBUMBAcBEwV4zKpWMTRC8Bs7F5KSeU/gYR
	 rWUChT4N0Nztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C8FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787785368.16972.6909260441976905886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d8f49079adc00dfedde0aca7461716486b514eb08d0208b769ba5048720235
Date: Mon, 04 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777877853
