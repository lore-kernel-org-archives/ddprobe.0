Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16D32264AA
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768719834; cv=none; b=owfcpgvR6aNYCDmp0YDsixENbiY22KWi+WGTflc4zqDFiC9mytw3hQOsSoEqgEtiazUMnUS9zpXfqBY/LHPrn6/+n5oQJV/PKDG+tzliQKB4d7zssCpVSl+O0mnb9OK7rrk7WM+t2DjvZIaG/7/LgXvCj0rQwDRFWcKD3k2iHtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768719834; c=relaxed/simple;
	bh=6trzbANT0JPGDUm043J5NkXWuTL3KkFq9ZwA7LYEzjU=;
	h=To:Subject:From:Message-Id:Date; b=nz94NHxwjtYDrIHWUkOOejWTP8ir7kEfJUoSBnj1hEIFPVtck4Oo8JoIjVMwRNT0u0u3JzkzVPbsqJUfu/LzQaMz+JJO5bZ8Q6hp4nEq+KK3LsACH11qov/onNm3HtcqEbPYAboG2LvhACe9ZJiBr1jfRuYDzWSM11PLfwypuOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CU8RQ3fY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CU8RQ3fY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D01C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768719833;
	bh=6trzbANT0JPGDUm043J5NkXWuTL3KkFq9ZwA7LYEzjU=;
	h=To:Subject:From:Date:From;
	b=CU8RQ3fY61KJZsow7n8HvtpCOsUWVz9u+TKzr2YRu3VODY+GdrFKq6BBfbYsqeyej
	 UMrt/P8uh4dk4rYq7rTdH3CXB/zdNrzQR+DqCnmmXhTUE5xSRO0U/mjM5E/a6JMHmr
	 m0Wz6GL0nCqz2TRIh+Q2jiyXgJuPXshw9t3QNYFNHlfg7vNocMoqFsgSZ4bPdNCu7e
	 z0imD537DnCJjOdaiCgONAqJp5YvYoGdTY884gkjOIq1RAl4Qrflm9VUX66Fl5x5B1
	 2KC7yFqcX91w/yxVIEGIReVRKP7nGnYuxjxbe2y4VzYCgjW1/rIpe936PK7El4z5C4
	 +AHHhwlBrMdEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902EEC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871983358.5008.5443245707638050128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed86f60dd60df3c88ff9f684b788c9aa2a2cbed6a9676574a8d1de8a9a9be12
Date: Sun, 18 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768719833
