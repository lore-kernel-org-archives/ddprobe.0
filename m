Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358673DC87F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780556074; cv=none; b=qEHf2ZAvye3xfemvpx7oxo3P9STDl0uQzTQa5DXiQUsNSchMv72pUZjRrEQR+t5wep9SzVXEf/kAUcy/OXHbysRRe/Ki1+wHvyryCKP2uJQ6yYf/yvAgRIwm6KYtPv6426HhH9FNwulRR92JykU8FVBDLA5BK2gKYXi07eMWpgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780556074; c=relaxed/simple;
	bh=SeGnk2VDlHAcJOebKOp0iVgqSsgMeC8JpfiUqGodo4E=;
	h=To:Subject:From:Message-Id:Date; b=jIQp0XDozXaBMmMocRmy1ISlqTyWvOJDvGSzsbgUw7PfPKHq/Y4BkNjCrtXrmZnR5H5z0RLTfEsKdPORiTNQiVd/y7514E+eJ7Z9Jyaeu/Mbmu0RVRDdb/F5ydjuQhvERbL6IrSFWDNwlrlpnkFZMO+0SpeAVXtGEBariUdW7QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PS35urZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PS35urZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B97C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780556073;
	bh=SeGnk2VDlHAcJOebKOp0iVgqSsgMeC8JpfiUqGodo4E=;
	h=To:Subject:From:Date:From;
	b=PS35urZAVUOlT6+X/kKTWqp4g3wMJQep8ORVNIYuH/YQ3ezmauZO2lP7PybDNQ+pJ
	 GBvqKyFwozybrofLwuFCBEJYutHF4Xv2oZSE7PaSyu/cCRr5HvBSJy/bOGmJhKpUAS
	 IuduBtZM7qiBCCCGKYmQ7VfhYmF7GrgHrlq4X1e7CZlXNl9fP0j9+7nGOHONAs4jwC
	 i+K4pPB7u9j9DjCJub0DLw6Uh4rJSnyBH2Kx/pogQqQ9yXQOI06fCf2qLvyaHoc04P
	 /i2VQhdGeqNLaEZUJGdPdmDgSVVrbnBawh96nMKChfaz5BCJGWmV5WeG0LUkg9YKlj
	 zsNPqzODaTNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA553CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055607368.3422.6376669777291962494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef82f095b7708d3133b665dec925cea5d0d9ed9904ed4334681e9fd43f6a1e9
Date: Thu, 04 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780556073
