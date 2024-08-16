Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336DF19D8BA
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723818954; cv=none; b=hvoQJ6SNRdeKVcOSyOiujbtX5dSFlM2sefi+mGZsqFQpsKmFQJ0cUTTTcolncUKYfBvNZ96vMX4jjDi3WAYU6c8JpvXA2fgDDp8DfVWi0U6ezhFhxZQGT08JDaE3jWn3CUTcIY1D8aSND48h6WEkzHCkq6V+UkZw1obf9OEmHQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723818954; c=relaxed/simple;
	bh=cf0sOJBzI1tmYFQ8q92GJLED3KLIGNlZAwbSOJt/fSo=;
	h=To:Subject:From:Message-Id:Date; b=jI+L5adm/DucNpaOQHCLmFIpuI/Otnbzzi6oXP0f7agvpj2Jw7YtcHmdlV4PbONPNxAQai+DdQUExgMXm27hrLOwioXGpmZowlZfHRfScUXSI6cLbUZP7stq3gH4h6TOGfUP0BqtFbrMv3Vy8OXov5VXVXNNwQOprFfS836MAWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iigP1iXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iigP1iXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEABC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723818953;
	bh=cf0sOJBzI1tmYFQ8q92GJLED3KLIGNlZAwbSOJt/fSo=;
	h=To:Subject:From:Date:From;
	b=iigP1iXrKbhh06/5tOs3H2yLapC0GztMTPE7IXscggZfJMtEYQuBE89dpUTLi3DYg
	 94z7jOteEANDv2lf/KFyKkiDgpw/8WU9PM+i+LzNscBfJ9aRLCm8xmkzoCyqtxxKMM
	 Dw42ufOLKlOSK8Fhxr3tXZEYoYxyDdSMgyO/Up2nHHcB33iJncN3uY9ajH5ohIrDCQ
	 kw0vV/9pPcntEVh0vaT9A3M5PCwr0y6kb0hQgA1Qkk0XJSLLEJ0ueYvSlHSEbjC2Tl
	 maJ2CG+owZY1RLkeBQhptwqg6cmX+aV52zIEsOJ9i6Y0gLt+Z+pC8mLn5MoY+zFcbc
	 UKofLDCMLCMLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A209C531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172381895361.29472.12648957750440143462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0949522e560c8a88947bbafdda30e841374fbf0ba31684b7627a35d51399601
Date: Fri, 16 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723818953
