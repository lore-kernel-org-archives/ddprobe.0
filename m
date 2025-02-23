Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EC914658C
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740347334; cv=none; b=IMGqrkHRnvZGEyUn8Cwe0zn16LMc7WZoyCA7/IN6+rFe9KzWQDDtq/ZhKZPmIRqMHuw4ksc8FY12b1OFPAUyDDsl7H/gVD1vD0Ojt23XIsVKJVdWdI0jBaZBovdk1K30ryT3M+5/VwS8+wCAatbuaqzMglh9ypipPyvOag7m7vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740347334; c=relaxed/simple;
	bh=55ntzKI/Fw/FdDifj1ZDH0ezkY+nBjCKR4ipEsijIOY=;
	h=To:Subject:From:Message-Id:Date; b=QwJ5LrC8xJuhdhCSBvmLcouaLcLAG1CsCtDJwNppVuoiDtva/u9/6DVjLO2CKb5uPivMMwH+OxsikSXHiWbQRAi/Hs3gBe7WXml10xSjlFoGLtPaxKfL/wntN7JVcoJw50OCkkC7z8baZgcnUxsTVwgiKQqpYYrCsQ0nuIrZ3h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVk8nR+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVk8nR+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6739C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740347333;
	bh=55ntzKI/Fw/FdDifj1ZDH0ezkY+nBjCKR4ipEsijIOY=;
	h=To:Subject:From:Date:From;
	b=bVk8nR+5wq1fIIsIS6AU2jZf5CVehcj3RiMLkPds0088HB/QDnyo98hwQsqhtZ/E0
	 7lGkHVR7ad8jn6AKH1AzqbOZGwGCajP49n+jIboVpD+XFxV21CtbXdE7czVV6J/hSH
	 qLue7Tngw1m8O/XemsGDSVSUuNY+q4G3Qe7pXCDHyvFCCXVvcl2QeyJ+NkgdwDpCNJ
	 WJRVWjb4O0CksOlSASlcP6Ku1kSpPIolX/yUJEKtjsO7hvYXaUtMDU6ojJaur9iqY2
	 /JeM1PDbeUKUEab5G5TtBvjxwIALtX895jVBuMVD2U4DFFQl4wIYf/Bn187IKUczbn
	 5Bo3kHeUGptPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A295AC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174034733365.25274.4349138106515170289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556e3862da627457c5515e1dd7749be14007dff6bc71104e40e3bd435b12bf7f
Date: Sun, 23 Feb 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740347333
