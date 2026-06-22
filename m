Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440CE3346A0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782157594; cv=none; b=f4COl0VOW6Myocg7puDQKSpTXmEAiCp5j6vRFH6RVidCSmw8H5M40SBJP0W6iPGzjoRqFL5smW5oTFeQg1iUT/cw2ywtEwK9HDEv41X/l2lkQV2qwyBnVfZ9iq3yF+onsEYbnq4j5CX0Ek3FmDUzr7eJCx46DztUJeFWZlUW3bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782157594; c=relaxed/simple;
	bh=rHBXU87EZ6ulfVRI3wwKiIlUZycGiBJecyXwxrSRIDg=;
	h=To:Subject:From:Message-Id:Date; b=dvrjmxgO3+zx61/WVKuBdKMgYt22N2VY7GcW+iLkVNWlps0yFvzOPIGn8pode2XFkNaIfsAlIK/z1jcV/1qFbFIczJq6zpMqGEDyHLWzMH4jnxlOmb6CXq6ORqMrH0WxwQ/3TXaVWTwLzQpWDLFA2PzrGP0jhJ36UMEPem5XEms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kba5Y3yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kba5Y3yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86B9C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782157593;
	bh=rHBXU87EZ6ulfVRI3wwKiIlUZycGiBJecyXwxrSRIDg=;
	h=To:Subject:From:Date:From;
	b=kba5Y3ycQr0AnPXJCnlc0CdUFEMBmLn6jcis31vvSHjsF5Gzs91GGO6pvXAcvdxpF
	 l7dkQxft2UvxSQL3g9FOfAVhnUCjwSvhF1nZ0h/+01o7EcayxMnNjiORD+T/6gRgvj
	 WfsQSw63UEqx3zzirY2sliI+EUjtO+b7lgyFIK09w6UazTedOAGHtZqBQCNAqSt1je
	 asQYn/qfq+OzwCVaGIfbnV7iOTG0/9YVx50tq9yehwtyoEZWdOhxOuF+2o3zKlUfaa
	 0DVbvMbtFl3JnvR0605KSedXnwx9eaz2XON+uazMiSyZl7apJ823UjIS54/I1XJjOY
	 tfj5OJRCwT3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E3CDB475
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215759369.25638.6058790644144274944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4145eeada6fc49077a4f7954e7d9be51f8df154e5d477133697c30f9fd2f7bbb
Date: Mon, 22 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782157593
