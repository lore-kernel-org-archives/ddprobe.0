Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F8D15C0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755137993; cv=none; b=NPiYW+KeOUSIgkEYiuQ3X69EKQRM3IErcxhDfVsa1ZyWN0NAUKp66SLvL5qXRw5M9EC1yggUQ5Rl9D1fVXEAfEusWSE/IbObfvyeuQdBryJBva6SIAuoCrzFbqaAHY5+ldZFP+/PEOK/lVLXHvAfw34TSxITc0IX1ZJ7eMkGSOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755137993; c=relaxed/simple;
	bh=ehEWxgPZ4whYl8vjlTE5Y7y65Duj2jagWwrAi48vcxE=;
	h=To:Subject:From:Message-Id:Date; b=WrPgjsvgFt4mIIdJ81pyghfGzyjZb+DAJzq6HiTN23oCYclmNiSmzbMaj6qdrvBDXwRXibcc0N2DeDsUfewoJ1mKxMFbSJJpVRx1D+y5o73uo6CJDTBQ4k+f7CqV3ykyveu1PspA/x/Ot6qDDts/GyZPfOCFxutGbbhzbnQIor4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3dQLLgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3dQLLgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A268FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755137993;
	bh=ehEWxgPZ4whYl8vjlTE5Y7y65Duj2jagWwrAi48vcxE=;
	h=To:Subject:From:Date:From;
	b=p3dQLLgwJqzRJNA6KxTulxmxPB5YvLInnSIbMOduUscOTWN7OGVJt6I85BN2HRNP7
	 SsovwZ87XvcHEz+v9YqzLtp651xOsu8wrcKuoF5F8AA/a7gOFgf54oTy2aGnC8NdUK
	 eVrTB8RyBjud6NrJZE1bc0/UOUrh/Ocx0uGhdwO4Xv1zZesY+RinCt5Z/PbAA31qAv
	 aTfae4ycMwYRj2OJJBk4nf8HTivz7Xb+VLfZFFqYOjBo2uIYHNsV4W8zaFnojyUNaK
	 u0Ytdsk7/NbkhTNcnPwSQlnXHU15az0W4egPJBqrrJ1cqkDWEQ7UhS8eDXpo86bSzF
	 QFCC7UmilkR+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91333C87FCF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513799357.6798.1090612956900352293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfaa6d6c726ad9035b83b1c6941e690b5ecbdce363f67476a34af125f0e3ba3f
Date: Thu, 14 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755137993
