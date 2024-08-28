Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426651B960
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724811354; cv=none; b=gvb7TIKhuMm0IQH7Cxo4yb7QpgNPKXk0gTi4TQ3keAvjZT7lIs3T8Pmz9tDqrVC4hDEcX9fjtQA+2xvlzlLrRgGxD9nTxBUsvFj0gkwo1AGRdE+i2C3tAvuubByPC8psMRgHLsDHmXzyJSajFvpThIZCcStPkmlAzOq56SArcAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724811354; c=relaxed/simple;
	bh=VaJO1By7zAtnKWF5TZO1OWXMaMFkLVkhvJx+MdFeGVU=;
	h=To:Subject:From:Message-Id:Date; b=KPd8I61JF4tIykNyj3+nt1QfsP5is8/EIEt8G4IkerBeGEPm3JY+bE0OabIZZKj8y9+vLDaO2h7KkKsuSJgQCYYeHmiBAHiGLPl+D59SM63FZab6VzuXB3v+tNdIbgQa68o6U1DSMi+yVbCTSavsMe9BOjNTXmr13oe2aRL82f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmojPbJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmojPbJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A0C4DE0B
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724811353;
	bh=VaJO1By7zAtnKWF5TZO1OWXMaMFkLVkhvJx+MdFeGVU=;
	h=To:Subject:From:Date:From;
	b=RmojPbJEulCN95PPhHJBBvpdwmMcA97c09RcvqvUeY/EDbq+kW+wd4Y8+LUuM8Sdn
	 ccrzGeOUaDEVysi880aI47aIAudUS7Hz7BDsVe5LIjsN2jp2WnX4jxZwQCq2/OLDQu
	 v+Ml2+peOKTpM6qkb2zgcXqMmGlwNjkeZIRMirbRnyoDTG1ytWG750Ui4aIlLwG7Ze
	 qaFOK8efaACHTQM405oMv+WpLBgE5g906QNbSkbImS43SSxltyD/5EbtwS9nGLbNFB
	 5eP4gu8jhMomPVw71XLHjJcB6beULsDIrYDX6WfQnM3TVEdfHA2HHQ8i333cOglN6K
	 Ufm5NZLveNvWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CECC54749
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481135358.1953.11440056479759832394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b659c429f7c0ecfd5e2a4c24af73772dae0537fff67d9138ae37551bbd8d8f
Date: Wed, 28 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724811353
