Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDEC267AF2
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777181854; cv=none; b=Aifq1FkUvWHzPdnupzC7iV3f1EAvEZbRVP+ZAV0gggB9gZcrqBY/Wwe7VfO/vzR1NIQqBmmRiqUSzPFv7O/Rrijr1EEkSH1nV7oQfp1P7FRu47gNCnxjymNGT8X3FlLdYFwQD2X/NLqjnfZe6zguGfk603jj3P1SULy8eaS1zQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777181854; c=relaxed/simple;
	bh=SP7AJDIs6ABvOiGs8j6Z2EYyMY+PAebXxl3ClVQTLDg=;
	h=To:Subject:From:Message-Id:Date; b=NUmh5jSx+OwvIbZ6CSNoV+XuiNXvzM71sgfIdWkWsDj4a8qDD/+srFjspdLZXqNojTamTlxOH2Je2jXofQvJDYoMzZCR7CrWktlmU2wEJv1KGisrwdh9zkG0wCF8NPjiD41ErCDiZnbkwCUUUFFA1xV2N80GR8MtpT7XRQPdfUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2x2huLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2x2huLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15EEC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777181853;
	bh=SP7AJDIs6ABvOiGs8j6Z2EYyMY+PAebXxl3ClVQTLDg=;
	h=To:Subject:From:Date:From;
	b=X2x2huLLNMIh/Tju6ZzVdrihnWr0Or0tk0cERVHrtggsLf7uqYwgli19SkBDiVQVQ
	 8yrJqxX/4aboDUHfbkOjRYWOFFXEztTWuoAoxdKD4sQ7sWKir0Zwk+QwhEzbCm33ND
	 Wb+XiHypTD5tIhpY+Nutq+gXfAH2sW7RxkkgWpOo1+bBK9VxCzFeZ4j8wQoBj07mNV
	 r1aXVy+48Shoe1rB49hwmyaKqLoQrzMg67n5gWkhdi6KW2MVTwViuKbPkWhvdUiadt
	 StVddP8qBoH+/IbgfmZZYkpBvE1Da+bhsn/AhneQ34+GuVZ89HFGX7PrRX9BIn8jyf
	 yOqiFQM4RxUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC67DFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718185368.7368.15067046217657102598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af0950d9feef16aa1cadbcd788eab0edeba1b0762a5c7e407a92b1d3911d4c7
Date: Sun, 26 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777181853
