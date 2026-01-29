Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB5D2737F2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769715234; cv=none; b=hKGgVRQ5oQSKg5cz90gkcMU36tLX9yox4N3y1mwv+WQRPKLlTnrmPGhQsGqsKdGSuSY3LICiiXQyQdDSuRybIr9RrTqwaiCz//4rpI0MOTXInz33QDV3e13cgkPMlz9HB/qzTj7xoPoJnsNRPYRW/7qK5Kebdv8YliQiGxPVXuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769715234; c=relaxed/simple;
	bh=ybnxyf7OD9spSZayRPCv5ySzG/fj8K00W41lEdD88ZQ=;
	h=To:Subject:From:Message-Id:Date; b=h44WW+42EfhP2IsHFvwZgZCNEXSvuQPPYoB09kZNJqqs5hKC8SFxfZtemDPUVbDACdC1LEx4KPzOx9xpHL7RjbbS//2a9phWSpy+n3rjUkxrKlg07PusgmZrw+6Cj+ZA7VnIyzrsK6DoiVonQ8dvL1tjmEKEjMHRM81MAUsNCiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g92/qmNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g92/qmNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4147C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769715233;
	bh=ybnxyf7OD9spSZayRPCv5ySzG/fj8K00W41lEdD88ZQ=;
	h=To:Subject:From:Date:From;
	b=g92/qmNJcuKK47VN5K7PTXEcNVYkXY76/ae99L9kIvBgl/XHGqpHNHXeGE4jj74IQ
	 2OncCIZlMW99CclGHI+ncv2NmwJBZFjlsmB5y6kFPzG6FJULI6T0FrrQerACEBdn7U
	 5/cqLPZXXIwclTWW5HteMx/XKpumYR3acMiQ5PDtX1Th2pPBwrhpVYVeSZ3gNG0E07
	 jUDnmY534h/Mqsi1M+zY93RqBcsfrljkmzBK8m4oGOlSUSolNUj/ZMQTMNgLP9/mY4
	 CDIqoAPAAwMvy7UXh0cSvx785jAKA1acWfkhL9HLCaS2UaSEfrtEqE9d7k7BfM/Agt
	 +MdYdxlSf3+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91778D73E83
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971523358.21579.13975691586655031970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff14a760e7864dbde8c5c20fdf5eb1313183a94e68f932db75946cae11db637
Date: Thu, 29 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769715233
