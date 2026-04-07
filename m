Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239D82F690F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775557534; cv=none; b=LePSgfBzNr2QCy7Svzz9WajE0WzkewPusBjiNp6A0i9mpszEejTwQ+9SPHfr3pZahp8nLiMxGS0xJSIuZZApnzBi0gZxJuf6OaGgRySwYGZiz68/MkVyAookrADa7YjrJQQ1nghD1H+zLvOJbTeSK9jjNJ3j6Lhr9EmoFsF8P6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775557534; c=relaxed/simple;
	bh=z30ST/c+eZ69YytQ0b3p9OzTrfTrlT4XL31APJEOjV0=;
	h=To:Subject:From:Message-Id:Date; b=SQVR2B/3EzEw29IuVYyFHcdh6M1epK3sqG8yzaQPDGgFyWxul1mnD5rcnttM1rWdSi7Ww/ztpksAawIvIotAek+KdtdJEiihKNh94L7R/cG+RN2+LeDV/I+XYF9X16b0fGJpcCM3GY1oUx7p/9zX/+SrwEgt5NNQJU4WQMIUhBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6AgNDmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6AgNDmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAC8C19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775557533;
	bh=z30ST/c+eZ69YytQ0b3p9OzTrfTrlT4XL31APJEOjV0=;
	h=To:Subject:From:Date:From;
	b=H6AgNDmdgc8/MCXFuYFOpgQ4fDfY6xSJS/LrdZGnIzMGPlq73RbBIa2H/V/IieFaX
	 eRRMJioAXCa3ETIpidLIu2q5u9P2T8uWh+NDbLUFuIVtr6BcFI56FTpL3A10XJHEfj
	 Gpqp3fTasf1KzlM3aa5KD+eZmegHUYGAssrSO40SsIK7UyckEi9d737S9xirTiMOb2
	 JmZSBabtiZ9y1aK/A82R5NqmjpulLWqXpuC8iCi4NsYYgD0N2qS72cQjkZbi4geCB5
	 9WXwZtRStoOIZdg5FREB/6aQM4WXlHUpnIuLr39zV1n29IlSNAAIthqaEN03RDcIDc
	 LkwhPos8PoDXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A49EDB7EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555753368.17012.4686302248682944128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a836198e663d96efdd16b24a9f20fabc13e4f38fd0bdec9e2c5ed275b78627ae
Date: Tue, 07 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775557533
