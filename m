Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B61E56A
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788739234; cv=none; b=IHPRZ97hgMuixTb+7VChcqdPANowQau3wmJrJxpdwJfR/dSgbgw6SErhHmKz2DmzBgcp71EC6kkHs9BphvnDrttAorjXcmUz70hqErO6OxQ/rrdpGNtUY8No65EPAO0TV2Z2r2CKEWB2VIookBYOV7woV32wuTEfvQBRi9u7CdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788739234; c=relaxed/simple;
	bh=oLbvx232fu5uTeWqPDHLbsAyzlfdw9ZC4u1ueRjhOoo=;
	h=To:Subject:From:Message-Id:Date; b=DpVyztMDX9QVPK797/WqDa/R7PXC/yFsc73N2WzN8qwuGnouy3EXHzDoG0r8zJyLa6Hl/XP9DINp1N1Mvlq3W2LKhtnOHA2I4VPRdqIwByAWlD96A0yqpBN+PnslfJHBMUoeA7cJm72n042o2O8I53rYuV1ZPmfh6HUT78zE8TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAJYCh58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAJYCh58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28F2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788739233;
	bh=oLbvx232fu5uTeWqPDHLbsAyzlfdw9ZC4u1ueRjhOoo=;
	h=To:Subject:From:Date:From;
	b=hAJYCh58+f845vQtOEldMd5h8vXsMwbrDGwefYEc3p2zRg7i0z8pMLCjmvnxlsY4o
	 tUvTjEE1ThLtGvrv6VzVsg83yWs4NMETNL+8zdgyxrTDqElrMAEJnNSZO28/tSBziy
	 k9uiFGpgha1n83RUuFJJ9+XjxZtTkQYYpsDZ+ZwXgMhbHfx+fOMSGhiBDXGAVb2uLj
	 MA3Zl6CT5gDZDNZ5iFPPiprv3ybQpT6IAZNM/3QGKJMVAXc+z4uUUyAA6ZsD94Mk7V
	 /kpX2s7Z/keKsCT2i+wOK9k/wjZT5fdqAXwKfpwAbjYrF0/PzqCVO9o/SK1jkQFZXd
	 8GybU7MZxa3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B3AC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873923371.26717.10867088923168307210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25db7254e162a412c7c11be453a0bee1ad9289f94c675c31363332e0c435691
Date: Mon, 07 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788739233
