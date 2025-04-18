Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DDC269CFA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744958994; cv=none; b=oSnl03xthyZpCtlq941+bVuXWuyPnJJg9ciAPya9Yj5Y+tFJZU16tDNue7C29qSYw1OKaJs+Jbtu+Esh5lDoDRfQwOE5nT3loXzZ5WA6gGqItvevt05rLrtytJ+O6uTCKmi4ptoZJpPXDBF7yG/87VtoOKe6zinFALzaOTCkRtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744958994; c=relaxed/simple;
	bh=55QNJFg70Fny2+fi2nbnCzcQquJ5dLSn6otXHFV/t/A=;
	h=To:Subject:From:Message-Id:Date; b=ZrgvGcryKBX/LC5hOEPrc3NB1rc0sVRcz1lrhNODJUXv1X1rwrHV2jvMHEAHepSXL9rVPDhPAA9mbP6J3Y3BEM0vzt4qFntxt9f1vVpc41c338JSfoqUfi6zSZfNfF5fW7NLUQvMxAMVI5288ILLp5YlLcvJRHy1zjgCsa0fig8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm+HqDqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm+HqDqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2CCC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744958993;
	bh=55QNJFg70Fny2+fi2nbnCzcQquJ5dLSn6otXHFV/t/A=;
	h=To:Subject:From:Date:From;
	b=dm+HqDqke87INcM0SiK/VuBye++EkO2h9ub1smdAhJ9PeLOIQ+eIGsLzrugs+o1w4
	 QQKscjMGLm57PXvjsZwvz0dy4cCwmWxFh2botFpcbOyjpoSEZymp+HY4OmMP8u4Fs/
	 8x/1EEesBl42qU8AMkfGTDTww2YIfQr25sAh8pEo2BrTHE+AngNvz5qM6QjNI0/JKn
	 hzjEmyqQfKX1ePixcHtss3q4JeUFLmrzLkY9OzZy82EjVwizoOmt1lfAB515xkT6cN
	 MP6aeHNXVUe/9Y0Vpk63Ec6drDcAr8Wnkb2oU0N9xQPy5srcD2TKYuHGHYS+noGhPo
	 CcOCkKQo1BiTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968DFC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495899359.9214.12824899463287772566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fbec2e38ee6d4f80a244a16e89b1add375dc84b660b00b30af45c1c299e0a4
Date: Fri, 18 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744958993
