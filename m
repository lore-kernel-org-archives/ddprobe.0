Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C381C84C0
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761083394; cv=none; b=NolWKZsSppJLP4xv527GE1XLFB2e6lcyqYF1ypmLgN2DkspN0Lg5wWBUhJ231u+MxWxgrQ/ZH5mtrd3ZhCWWnheiIPu1ysSF7C3+9CjMy/GJxs+2AM/XcxWLQLN+VhBg6XcAEh2/KsRrCWsC3ds1uX8CG69/YHA7gRYi35sY38A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761083394; c=relaxed/simple;
	bh=rhsZNLbMhfrQLG6AgZXD+Plz+SpHFj714v9P/vcMGac=;
	h=To:Subject:From:Message-Id:Date; b=bE0NMyehROZAtljFfL+kmKRyO4hKFSKWtuTtizKi1XVj0SiRduDlw/CYwNSBoCZbXF9pd8wcUndYhDfp0YhP9ke/lQ5hCP3a4FtA8H2J1HMgyNI4LNOFeXtZI95tU5rlMFCGYF1eyXwX7gbB/ZQLSfsTICVcxht1rZedyotDZJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dG8ZBhSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dG8ZBhSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC66FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761083393;
	bh=rhsZNLbMhfrQLG6AgZXD+Plz+SpHFj714v9P/vcMGac=;
	h=To:Subject:From:Date:From;
	b=dG8ZBhSJbOs2FH/rPY8X0tSgHJnKbik/mO1x2BYH7+OnimAyydTzoQbgYOTczD7o4
	 DPlgS08tnp6LaYf7Y8bnS00cwW+sux+5unmHKq4Ww9hSpzrCRQm74fl+nG18jJ75q9
	 PqAfzzmT5aGgkNXHjiRg3FJ6vs6WDhmWGlp9KcAqY8Gd7UIwTTBG08x6homC14vFf0
	 9e2N2P0+F9CnpVSPj+1+DX48Y6sxzcIb/FpvYm/jpKDpploHEWbJ8r0LxshkdkHH+w
	 xwY7A+whjLW0AQg/SfehrI+v83GxN2VJfnJkqYlhh3Mkk6vTis2vEfP/YUpuZEttwX
	 jU1WMLW3Weh6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A72CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108339360.5638.8491668323528455029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c11f6c6bf6941e931f01900a0c9645efb6dbece5e0f11fd6adcf095e839544
Date: Tue, 21 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761083393
