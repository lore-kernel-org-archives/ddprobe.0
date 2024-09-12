Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E13A273FC
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726176354; cv=none; b=LboMPUjKfifKACKUD9h42uG5tAnKhtbYa5/pg9ZshLldMBY3m3X95I0cWIHF/7FpjdyOKntsqsrmfR79l4z6RgJuUMWGJskGYWQwN32+j+W6AWSXycIDgLPztGGWfN54rH6nttKnckkGm6K+soPGWChQUf3ldmHeCd6Hpbz36rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726176354; c=relaxed/simple;
	bh=k0uaeQkFPxhf0VvXCyHq4mgu7STlClR9GTa2RQzOykE=;
	h=To:Subject:From:Message-Id:Date; b=L2aLCY+Jx3GUYrLdZUOhdZjL4EXf+tamNGX/PYEBfrRw2xNgETehyR3rEMudtolRUiIS1PS7h4vJCAGpkL7FvQGZIOQRcXeHEOyRVp04hAS1LP5fpt7+7rkMyms7zZPw0ruiu7P1yd9eK3bq2pU5VJHqdkVaoXo17AFWEKVXcCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4ajICLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4ajICLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0F9C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726176353;
	bh=k0uaeQkFPxhf0VvXCyHq4mgu7STlClR9GTa2RQzOykE=;
	h=To:Subject:From:Date:From;
	b=V4ajICLrkj3XceB4P5TVZBO49tsw2RkvJAGM+PJ2fymZHndJ8DoP0Nro4Dki+Epzg
	 l7HQ4PQs7quEJ7eZlQWtWOOm9Ybv02Ok2ybjrBkcdKGcB7D8OBfU/MYyoi2ac7Sfgp
	 jK8qPyoWEU2lg1u78uN0CrV89Q3ocy28L3bg1jGpHTN31hH0oMQwyMLC5Qq027S824
	 7ulYMKB9Vi8dOZCSyzggAuMk4htcxnem7X7leOCw7CyTDtresMid3ggAv8SQppTLxo
	 5PO7WtkCm+NNU+1cBDb/MtP+MlXnBEnpr/kkRBDXJ9f6VqaSVCq//NXUOYJMGB2cuL
	 zKUf6MG1NpiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56EFEEE266
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172617635364.16009.2490798130699684925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9057a2e928e44fda832e6f84bad227aadb76122320f94e0da316f82b1f22d70f
Date: Thu, 12 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726176353
