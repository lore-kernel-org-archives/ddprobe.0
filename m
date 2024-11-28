Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B7D847B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732806954; cv=none; b=I0O8yCx9b6k1Ffc8ECrmtZx44hpOzRy0kxKduUU/zwFcL9U4+vl9pAVZ8QDSkjWG+9tAsWoAzc6wd3lbSXwaecs5HxoUXdnGV6fz/JapsU2iOKsy3Iv3tmJIn1wAU95jTQgRgjmnqtosSvKXAbHNVTVFtAF7ONDPUwt/fIXaTo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732806954; c=relaxed/simple;
	bh=aBuB7Mk8fgOtFjmde4k7gawniOJ8OfCsm3b20BImJnA=;
	h=To:Subject:From:Message-Id:Date; b=T3B/yECvWladH+xKqskJ108LSd6wT6FoUNX5cWAGCC0V+K3kQxysSW/gtUm8WD+c8bQu8z7Y6thXiHlDpd38ekgZc1Y8Sfb3F+EZf/BzA9JJdDSdQ6ZEkgCTfQX9g3N1XuWZ6mMq389FKFF9ZYAYKpmjvz/2s1aujeVGBReFsQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB8i05OE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB8i05OE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE268C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732806953;
	bh=aBuB7Mk8fgOtFjmde4k7gawniOJ8OfCsm3b20BImJnA=;
	h=To:Subject:From:Date:From;
	b=BB8i05OEuURO1Qf3Qtx2OjbVL3bZX6vhtzRHRzHoJyf+IjPCOlt0PxMrLbrkYRwXk
	 ZMbjyz/TszcfYvG4Y8wKA+87sn9hvSBVT4JLMGPcnmWaemjUP2L8paOFL8LDjkYUMV
	 FV/kdImpJkYDlmHlRYyV239eXSDIEnHT7IGJBbtAGFCBx6ElA3A2HFAS8LtlgJv336
	 tV8GrVVQJlSLua+iohsMIgesAPy0AocYCcaKPZk5M8DjHRVWRYHQrFaig0UUX/aoso
	 6lbFz6Qd0eUH1kIAmF6KwF7UPDrMNEU5wbJ1uG9pQBCHrcVuPqyZ8zrh1uqBfL3GZ4
	 bFlQaATbAiZ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4E0D69114
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280695363.4168.9905738059391369584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3eb263517a17be53d4d7f78d748edf0cad194106a7eb0158f0c90940797dacb
Date: Thu, 28 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732806953
