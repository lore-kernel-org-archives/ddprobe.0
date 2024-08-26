Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD9415574C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724676954; cv=none; b=d/NTmsCQDp3XF9SlVMgJ9Us5YnzW+9Ee4g/2PNQtLYZxRiwb1azTZa6KS8wgU3pRJ6EBQjq8PkY/t6/va0McO6LvS+Wu96c/QvuCQ4WLEdizem+LJKUfpWBIeGhpXlZaxtbwKOV5rkzUAgFmGU5jrAn1jJQ0b0FbHwZKx7lSo7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724676954; c=relaxed/simple;
	bh=tMG2Dn6kOEhVChuGXYHRfTdnqvBeVM1n4xfbUkiC/zw=;
	h=To:Subject:From:Message-Id:Date; b=mnQKpaiFA0TVRPTWOGLkY9qEzimImOHyKvvBVAI0sSlLh4PVebUD+9aINmTUFjCeo0wYoQXT7aCKhBnH3z6hZiuYHgoPQNbvKI6BIQkVWG7rn7d2+Xjyt9gLsF38dmLKTX6nVuiBsAy+RdbxKMiV/XtireiDYwh08s4w3s4AIg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNkZKlYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNkZKlYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CDC5142B
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724676953;
	bh=tMG2Dn6kOEhVChuGXYHRfTdnqvBeVM1n4xfbUkiC/zw=;
	h=To:Subject:From:Date:From;
	b=jNkZKlYqGJNFAnhZYAE5gAeQ7SFkegVjfJ+niHw1Ol7Vb/uOgtq7SAM5f4ziWXMxC
	 2aiiBC6Gfuz6nMe4pVxro/QW78lvKrnfdCM3C92ujvV4m3YD/kvkQUpeikMpCOxPB/
	 GzLdj4PjF3OuubGl2TtIBtXR8VY5rIQXnz0K6IFIwfzyAkpoEZ8bG1g9suTKhL200h
	 P8Hd0NmQezQiYZYCeYNXnT0Uh1Pvu6JMtmQIXzTi+AYDW7VdIfjPS7qUZNQxVPdbG5
	 yjDue4vN4fy3xiGn+RKwzSaRfRF8b02Fq2X4l4iVeokKiW46RjSSQgNaZYQ8nLPAqF
	 zS0jXXfAQA8lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E12C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467695359.16443.73934914823761521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299b971063a7e4ee80a8f1502e10cb852b913631cc89eb791ea6d46b0dc3b7a3
Date: Mon, 26 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724676953
