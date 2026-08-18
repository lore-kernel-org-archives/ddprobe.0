Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BFC46AEE4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787052034; cv=none; b=lfRo2GXwb/6woE+Zlj4WOqiR/Dh/lu06nErQtLH8lUgbhodmGmXIjf1HDX33Ilp6Tf1DlVeQWM0A5atXm0f1Iadzgtddc3l4mWiBonxWw/lFAPK/1uiswshe5mX+Sf2pHzLLMliANfLhdxeLidURaNcZ/N2fZVVYvJgYrh3VXao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787052034; c=relaxed/simple;
	bh=JqMH4v4V95jMhIifuSx9CRAArZ4dAlxfuEblAfhYLvA=;
	h=To:Subject:From:Message-Id:Date; b=XVgNtKxdJ653m5hW7zfE9BJ6/ssGLXPakHIZNC/7upyw+FUt28HGriNoKohtyEDzemgvYrMt4Cq1WzAiIuPVi5wncpKZTRNO4IDwD7QVvCl/AIvK80+OaACDMCUiI4GN/L739LiW7ncLCGAjHrWG8JELjvY173wnX0rr7Kzy6y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZAj0OLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZAj0OLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE886C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787052033;
	bh=JqMH4v4V95jMhIifuSx9CRAArZ4dAlxfuEblAfhYLvA=;
	h=To:Subject:From:Date:From;
	b=VZAj0OLjgArHqrs6cI9q77echrZgw6xfchORxe4L7JnQ87VDCY83uR05rN5nlSQnK
	 o1doPPfeVSV3KCKM2uR2TfRLMz+REdtpAhhsbekcWOLNCW4QpVKwsllAogtVwzzClD
	 Sd/cCnCo2QZ8cdiOFuvTfCi6HFivXrVpziIbLseUU8I/g14bBogM1rLtpn/FM7leyd
	 TNeK9kST63u3rwp0y3le/Zy1Fvl9fikXsAwV5soTKn6EkANi2bBLP+u9UO02akXr88
	 WGn0QPToMbILHn6pze6386R/pf41f8zCa8rRNI2Un6oaZRbHP+N+0UBQpbX5lvWsYs
	 U7HqRmVjI//KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB33EC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705203369.16663.7893941456730401645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42df77b76d3c102c7747db5670bdcfa0567437a90ef75d222f3a4ce80adb299b
Date: Tue, 18 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787052033
