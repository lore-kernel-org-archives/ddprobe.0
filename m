Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F17F139D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775313934; cv=none; b=fDMQsovLvXzNcy8pLPLABcFtYCnnnWmoJANuHDZjwEx1NVxWiIrxeUFUzv47NxM+DvsDxamkns6fHeqbkStLbrteasoku+TcCzBaar4h6kKuF0qivInhorM//2WT/TSVRONQOcQGvbtdJYQBCfiRm5Do3CRPAXS3HEmsgPi5/9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775313934; c=relaxed/simple;
	bh=+i0Iu0uAY7DDbG822TzcXE8Lfto77kxtPe4zzW+XJDk=;
	h=To:Subject:From:Message-Id:Date; b=njSZYPsZ38/Rj5Tc5Dhx4JaRh3x6EYndWh4Oo8Wtf7JLDFxQctCMUmVEYUxV5ye0v+Zfb9t8iLUQOwvAz0InvwpnOKzN97/Z1aunT2FUXIoA64kg+49zfYzDOLRjf50553XJQf4ljJU+d+X7X1M4zOBuy7NYqqPS0twtvOuzeRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VR3yuSsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR3yuSsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C387BC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775313933;
	bh=+i0Iu0uAY7DDbG822TzcXE8Lfto77kxtPe4zzW+XJDk=;
	h=To:Subject:From:Date:From;
	b=VR3yuSsWYCnQS6csBa1dw/xTkMYR36dTlgv0HavEh1jMDHrF9NzI7U69l/fO2nSwy
	 YQ3BEMxWhurHROxC1CkSTdOsLyap1ebs2XdcwNSpHt8/J8fSjTePu0PK7hn9y9WzxH
	 u/gtSlInJC9QCLYGJc4z+rkephv7lAekl1/f6OEnhLuUxn40gxpJn62Sw3Fl8K8Tgz
	 0/6PzHa4UHSJOxyAUOgzxB5Dk1+iueSQtQYvE5djMYV2vBonk7aU+37nRu4CAwDQo9
	 TyDlZsjnNOeDdB3bKz2ihkFnGF9Db1T0fnM18Rvi62t8B1T1RAxFkipucB28uoD+Eg
	 JwQNPgrJCEb2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD24D7308D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531393368.5728.2807959232417204379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f872bb197d6d12114f13b5803e8bb55ac7507bfe22597e30a4e082cca804be
Date: Sat, 04 Apr 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775313933
