Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFB0219A89
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758205794; cv=none; b=awgkKhreItb+kbxmulL/z+PqbluuBcZDCaT6gZt+t3+O9L1HmVTd0MUIOxpTilDI1zgp0nCzG6h1McKXblnHGfY/xG1tBdUQjLR5MiF2t76wAAJOTdSMzBglwCEUB8iKdYDhBgUMF8LXf8XxS6fHKHdnkOZcaLKG+hQbG3UHHeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758205794; c=relaxed/simple;
	bh=D1ogDsCGZ7Rgrsr/2L5kL5buoJBcqrnmOvs4kjpH4dc=;
	h=To:Subject:From:Message-Id:Date; b=njdwCFSl6i7uZ7fXjhpoD0yUsf327TBaOA/2U8gdrn6Iio54Nzl4nXmm00tEt6yYKlh0gyV86fG5cq8TKTZ+gypoanCh5eSMnD1A49nUGx+MaMVflmgOwwIJp4+J1l/LzNzsvw5qQLvg2eaaBnRP/GlhoLxUtq8cyV2HJU6d1JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsQqPmyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsQqPmyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43DBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758205793;
	bh=D1ogDsCGZ7Rgrsr/2L5kL5buoJBcqrnmOvs4kjpH4dc=;
	h=To:Subject:From:Date:From;
	b=HsQqPmyQQUjQD0B+4jtFABbKu1Q5qQnAXwI/z748AKWhmPh4IMFtMoO3HEqIuHn/i
	 ZgM3RN00c8/Dsfoq1gNPO14Zi7hoZKHak0qcetMFmnmhbvmymfxkTlwwK968AJRNnO
	 JEAzPwgVmiiv0u2eAdI2KfrVGLb97h5XBWVESOTWtMfPgdjfagk72QBUedUD8gE74i
	 XyfHbh4Y217lZGbIVmsl2+GckaZ8Z44J9wrDCLH9yk4/8mUpJGTGB6StB3DXgckTV6
	 2U9/uloebCuZAO9wsYk37d/SA9lIL589aqdngnlhHh0jmPN9TsDDD9e+//sBbNNbvR
	 SELhVg9LJPeGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB37CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820579358.14414.11111767901796269915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8185df4102c1b9394f1678c3a13abc82f85f0bfdbcaa03005212247d3326d1b
Date: Thu, 18 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758205793
