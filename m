Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC89200113
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765657374; cv=none; b=ff3h2V1mF7B018FwixXcuASi5UgMJ507/jLPzbt6o6uxgGY0wdzdq8CCvKK6XzRHrhzXpl8lF+XURsNLs1AEmtE86ROiAs02aZVvKL/6B8N+ZxYX3DhHhQrzyimx3hWoIfU0jqnWc76ZOPOmjXjy25TScOJi38obJDvqd4u7Cb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765657374; c=relaxed/simple;
	bh=Iqheu3UWia25DYKOxX531y+7O28mMxZbTZQizHibnHA=;
	h=To:Subject:From:Message-Id:Date; b=ggw62xwLF1+vU8WcI0yPOPdtTiOxMHH1bGKlpS8GNFNr0Fypz31Ltgfg05tRLv8LPeejUBK+6jJ3tSiCm3C1TgUP73Zf2AvPx/Z2juMWuylnNprA87ePRh2YUc223A6JvAzDdFjkJTM1NirrmtCS3p5zcPJkLFQFg8Sx6gnhppY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ix3mIvvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ix3mIvvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB31EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765657373;
	bh=Iqheu3UWia25DYKOxX531y+7O28mMxZbTZQizHibnHA=;
	h=To:Subject:From:Date:From;
	b=Ix3mIvvZULRAdfsGaZ4JMaQ2PEBWj+hAb/U/jbm8hjifAhK4mNsciZy6DJ7HBnuw1
	 9cS+1a5Bn83wvbskIGM9ODNZ/pPr7UsvoqJfIv/Sr8Rz88Ih1V/WNl5lEq54LWnRhk
	 bkb9LSgVhVb/7n54xybJJoIClBST++rA4Erm14iy+kqFSDUDRU+TFnn6XlrCTqBury
	 llQVMwPRNnFyLoeT3kiRf+qNkdhx/Ku0eEUgbJyLoZlUFHhDurL/6mqReF9eC9JfqX
	 daMJM7a2K5qiemJC5ARB6OJ5ukF0V60p9uRKr8IkbPZZHSXewwBIffp2zFZx/Glcup
	 +LSt/l+a38/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A0D5B164
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565737359.8182.11805911170591706707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f871e698a48f1c923acf318dc82128e694d99147497f4b689229551ffb51e3c0
Date: Sat, 13 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765657373
