Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE20289E13
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763736714; cv=none; b=pycKUBWd9AxFQybwhLjdu0tn+GByT3tcJNgBTITp3lgI02kP+IrylvleL28hF5LJwGArAoMMZoOclyp+aPTvJCMXO8ZPUYhJbg+UfLBjF2oqiJqVZlHBchTt5D9TjpvfO7b+58z77a9pnQ21J+bA+P1Ko+pjgfXXsbgPymWME/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763736714; c=relaxed/simple;
	bh=aQLx3rf/lFqJ3cPK82RfI+SuYZ1b33pUrpVro5yHGuw=;
	h=To:Subject:From:Message-Id:Date; b=WiBbYn+8V1Bho5UwaC3t+5WmFCfErx/WAj5ZNWbyVMdaBlCOVKaoFnIJB0t7OKUIFnMG0ZeCkzgW+I5+h6+TTCzmh//PnAbqrgT5HTn8AptPzyx6Mv2+yyOTlBPnn0WWU/PGCmQdakjBT0bYcFqjPm56OQ3/5kZQvNL7e9zgU0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSNonDkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSNonDkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5537C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763736713;
	bh=aQLx3rf/lFqJ3cPK82RfI+SuYZ1b33pUrpVro5yHGuw=;
	h=To:Subject:From:Date:From;
	b=MSNonDkmI+kvtvCmsqQAShZb/JfHkouyuGRmHD43fJXroE0J8YbNcDNtxW3ATI3th
	 4oLuC2lj8lDAaTQgNcAxUMOYN7mOeW4hP0MoMf4G3hIN7qbnD9uaq0xVMwg0//gAtJ
	 z5FHyFFQaSQhL0k4jG5EhHWQUtqQXHf5IuwawsBECZuzG10FEH0eTEQm3Oo7sSBLtZ
	 cPUjoYO2YDv8wAMEBUdFUn5/RC3ZJ+614DI8EXEMmVBbgNkvAD5QULNia7mSMq2kgY
	 iA9le3+aviHzb2P8CjBTnlLOyXYgEJUMgyZV4NZuKxMZGdkqtx6TLDS0U/T2iqGHLD
	 m8F0DiRege2bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93593CFC279
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373671359.31267.3076028932456491944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a006d37491a6f1ebf0c5ed367d81f7aff5f553c807d52c40d7730febb67310
Date: Fri, 21 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763736713
