Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C78168BE
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726868754; cv=none; b=FBJyvuxcm6tH3+YmFllvs+CDH67f2OGDxU13xs2S5OTkxspgOAwS0YHh847WxBB5FryJPvUzVohaaACLZHek8MnKpr4L/uRIiaNjLu3/9m6t047oFAjozEvrUddvniTbiwzV5RjYX9AficGUNmEN3SGj1DNRyYmdVEqjdUaVo28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726868754; c=relaxed/simple;
	bh=nigZCpUP9CNYXelM2gQULOr+cQ4PD/iLPyCX04gWMjU=;
	h=To:Subject:From:Message-Id:Date; b=thQBu42cpjk+kbf6gjrk9c9FXU1jI5LkRJFPNRT/xGvVfTZRMIu/gS6NnzuCkDQh3CJbo0BJ6+8GyNEJM5KVfGFbvN3EcHpS0b6vAFsNQtvcvszwd7VLpyhMVAh5h6xQgBGpHsbvnVRncVCiF/1V2/45ttZRMXAQlI1pFYa6bvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E74sg+52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E74sg+52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3611C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726868753;
	bh=nigZCpUP9CNYXelM2gQULOr+cQ4PD/iLPyCX04gWMjU=;
	h=To:Subject:From:Date:From;
	b=E74sg+52bBNlobLUYztFsc+Xt3Dv1yLa/z096UVV4ivqV0huUlddBjlW1FAQAI1E9
	 70WWcK5SbvszM33dR3NtZEAoW5n8NZv4H5XpBmj67xoUFpdWJlQAmHfgh90qyB4RGx
	 yp9az0UsGHhYF+mI3LJ2/7jCoOWuh4Ks5KF3M6r33uaFz3svmorxtvDrVebt7nsDs0
	 /eNZiLyjk84xX043qk2iidBfIfLqbpPsnDNyqw402qpK3Pbuu+l33CT+SOM+h2TEQN
	 QGsMoXwMTHMYk7EZAsuT6davskrpOIEAIfNFTkdxkARb//xbeWlYg6z7HDh96RjCFh
	 hHyKhNS+awJYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93600CF9C69
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686875359.19598.2711887618473162947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146318d968ca78852b8a62e0e567d76acfb41905ffe73151eda515e500bd3ae4
Date: Fri, 20 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726868753
