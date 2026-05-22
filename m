Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2851F31B803
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779417154; cv=none; b=Kzhj4l91JumZXYmVT5eMr7wrZPc1DvWgk3eouFWD3nMn+qtNHnQX+WcnLb+HAnNfNoyKgtCeT8mYRJdcxZkzDSXMnOhxxun/kDq2Ms6vGuYtb4u0HROqg7ghFu8xamMtVDcYwpuaYLd/7+UPLC0wEIgCA3c3ER433c5yDpBhB/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779417154; c=relaxed/simple;
	bh=guaYH8rhEdV526k38lSddCcCfAoaGqngUhea/96J28A=;
	h=To:Subject:From:Message-Id:Date; b=qyg9zSKtx86zW6F8vSjREOq5jh5kg10kEJXPh6LxtgBORtGLvxAzr5ginJ9kD3W3L5PPsdW5mEFtSet/6HTcpYdYfcNVRyF5Vgi137J0cEJcIUl12caA6gO90gBlecVXBuJWZhYY/JvQkvhr5mcWuFsKdsY/G7hQhFDBPfhYWRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3h4nMI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3h4nMI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC7DC2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779417153;
	bh=guaYH8rhEdV526k38lSddCcCfAoaGqngUhea/96J28A=;
	h=To:Subject:From:Date:From;
	b=q3h4nMI4q+6DMgeJ+suVbh0CGaEX+qN81g91UhHXYk3po+ZHovFUyMw6SZBSmG3/F
	 xx2UWbyVFT1/owVVW1lo5YC8QW803jIb3Boe/5Fyw4GsboZpGM65MbQt3GT6E1DJ//
	 xXFa153DlrS+j/dEacEV8o11hGlFg07m3YVfXGqgC7H/GMbupc4ohEa6rvwXo+AqtW
	 t01dT9GaY6mEj9n3y9IRlnsqGIRmHn6hDmWuxVbOO0cw/nxiTx7CCt8JCiEPUVGpC7
	 yxBuM9eR1q5CcevGJVO3gTz3T6znATBD82Moz9uAipq9rOZ393j8PkuizCNNpCd4+G
	 MfEGd6IZ0+Dvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A906FCD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941715368.7499.2979941706217318209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51572d9111d18f5114e2e6e42213be2baf78c314ac615d0bcb982a6f27bceadf
Date: Fri, 22 May 2026 02:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779417153
