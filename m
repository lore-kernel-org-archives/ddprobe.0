Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53341238D54
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790836834; cv=none; b=V/PTwpzkJcg1QyrvHQnLhXlGsz0LOKYCoDeCrKvLTh6RAx8dvLXunV+RP/TQFL2S2Ou/+dNcfef/d6RpawJ1fiTewlYWbDYFvXqWhnruYDOxzzKbCoAaPpESq569stueDhilwzGFyCDlltMnyM7XzU3Wamgpe8L2dRC0JDkiUZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790836834; c=relaxed/simple;
	bh=RLl1MKt0xrLWklx5uUKmVeZwCVL/2rQIULuwOePeo5M=;
	h=To:Subject:From:Message-Id:Date; b=BN141I5lSYPS2lDVx8HLV67vZdph/pTr/VG36i/z9mfljC0U2QzKyTHQm0jZw7chP195UDps1WJ7JMmmgtQaKlr57jBq+kQiNGbsR/0AQIJu9Dmnin/qDe122B2rnUWxuX/wTXBj7j+qsfnhH3ucl9dZtxvAM4y60XbRBLGTZmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHSF6GjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHSF6GjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB502C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790836833;
	bh=RLl1MKt0xrLWklx5uUKmVeZwCVL/2rQIULuwOePeo5M=;
	h=To:Subject:From:Date:From;
	b=IHSF6GjEC/MnnjezwdvzGdzHUXfSLzhyaY7lI9nHedDkJMW/HW6cFDxKV+Gk7jmtW
	 oFFro2JtVaIkCSY+yU+iBITIekag7ERJLQ6I+GCSbIG8c6qeyt99czAoUEJSpgAlD2
	 N4fTpRA2WcAEpqzmIOe1gN0vVTswaNSaezLPUFcmqNvoaKuWtrV3g43umqOL3Iveoc
	 fkpcNbINpe4gm2dqGsxIP4+pXFyZMIXvuWGr2OZcR+TeHDloVbiEduzGNOr3jTq/qW
	 086pJaA6R02SL7GT19JYsSPWUhsrWBkq39DmqwHGlZaTy1IJjCphZN6T7JOtUgTaXV
	 wAAt6sPJ1OfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69EBCA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083683372.19903.8421194083561612788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e46142144b5ccdf5bdf4f66c432573d07ca3e6533cff033ab2500f9620c4a2
Date: Thu, 01 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790836833
