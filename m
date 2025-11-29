Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24902261B99
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764445374; cv=none; b=Ez5Kj2+1zr94TwFo3kdZSNqvZYA5HRyKkBKQqzsPiwueMNdk9BUAOiwolfMoKPNJHQmOQepKsc/sGishE5+wXviYJ/sEqxXkjQEvDOlpD+uFOCrRlbyaSU5JMSGW+0Np/cfAetjKNlrhYva4IrQtY/PyuE8ev7YkCq6qqv9beHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764445374; c=relaxed/simple;
	bh=slGmYy75LW1WavRi9wvPwC1Qt9xS1TJT1ezejb3wghE=;
	h=To:Subject:From:Message-Id:Date; b=OW8nZgzMlbsFywrt6/b30SNX3X78FZT5yFt0iySKr/cGX/aTx9UrO1eRRIQ3aaIcPWakX5uTdJWCdhx4EmZ07MKkPc11LWyVXYucLCYXgG8PVDsve96Q8MLKnkOpVbtNST7Icld8MoDxYkRIG/k7wYV08Aq1DqQ85sqq/uI9t5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/YYHdum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/YYHdum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB91CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764445373;
	bh=slGmYy75LW1WavRi9wvPwC1Qt9xS1TJT1ezejb3wghE=;
	h=To:Subject:From:Date:From;
	b=b/YYHdum9LRxnNuw80FDqZv0hjZKuntuK9goPhcIdC5FhrD89UrpHxj372FC+VCL9
	 pEeOjj/EjbwW8aa3D3/7GhA94x8q6rdpaBcjd7PmsbdI2L5ES+i9/nfv7+IKyF7k3B
	 ezahfOK1beo2uae8939VDJObMcfe8PnYgGhjSSAvlPBCE4Axt1gxIgA5VtXBWxqcFk
	 lTpYwgBGln8pKwnLS1l2KeDRXFBg5DDBrXw/MO39EpEjNjLdYezEllTWmv/Ch9OsyY
	 TJxdAA/7D4vSKsKB0HWkTyVEymF95yiG0kCnsc2KYHrupVur9qYF18Dw0Jc4liUqUV
	 eJvXE3CM1SNQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989F9CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444537358.23398.11522877465141323313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9428f19415e95a17d12a3651668a5b94c8f86b124e83b6ca27bdfbe8a465ae0
Date: Sat, 29 Nov 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764445373
