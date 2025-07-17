Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34587CA4B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752781194; cv=none; b=idrsKf0xpZ95U4PzFtvCJ/bop0tA6TvTrxfeQNhkSkgVUn20g/hkf53+qDOsdi6z/+uEERfn4aaTFLnqQTa8yqM8ysqrCHNT+gFsAQHOCsyl/RXpxbhs51I+AZ2XlhNCPHHuvOxbORa9KW0Dw1jWsyE+qbxKGevMIxm0HVzXkxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752781194; c=relaxed/simple;
	bh=1I6K7PJoaIourwkuvjUf9Q1vAaaEsbUiSjIgYRhit/c=;
	h=To:Subject:From:Message-Id:Date; b=cPKeKkOlI3b6jtyyFUQtSz86a6gcSHPST+aLC4VL/pLPp7gcP/5gM9KpqBKt4aSkatNUOWvcUKGBWut+cJu/ZgH/TN79ZglH18pRl9gjVwDHNej81KQ/tzKknT+ieoJGKZPB7jFrFS4wa3/twYhC/TrQarK7rLvWFtUjbQUZBns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyYqLb2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyYqLb2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E0EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752781193;
	bh=1I6K7PJoaIourwkuvjUf9Q1vAaaEsbUiSjIgYRhit/c=;
	h=To:Subject:From:Date:From;
	b=OyYqLb2Xv6R/sM8T9WvppGYwJAcy8HT+iEXmKPO1D6+CB5BJqBh1OEdnSPJebxEIh
	 +bO1CI01YviHcLLlx0gZzfgsEjdfaBzoiEeE/CB2lN7KVYB2HFuVHe/GZEvmTFaPE8
	 aHz5ppYCh09+zJSUE6GHSjTWJdHeXrlh+ViIlHQjrDhjtFq2gr2Zoi+eIozvI4ubU9
	 nrSLZIctdvTlviPdldNMhxVXj7tjjN70Jm9SxDp4dPkoeeZaOFYGSjpbvRywZOjgci
	 EU00VY7/nsdqdcDM6EVqGGWbFQ6NYBlaU1/iuakj+1R/ThyyheCf601KSxcUXfmUnm
	 2juc238v8s8kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D8C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278119359.19023.39896124987813816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3edd6cba04b9d621fffd3ce79379cb19a736f5576e4380cb6291a4a7793a7b3
Date: Thu, 17 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752781193
