Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F4317162
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783871314; cv=none; b=OGBHRVaZaQsd+vZ3JPeHkPq0Xy3vthlYRdUQDzXQX53orx4tBy42tByTEWcsOzg3aW456VV4PxlNWyv5iuu5eSah/i0NsHJiOXDFDsbYS6gSgF7nrmv1Wmm8vorcAn0hSjIsKuu0bMjpUxA2Gz6FFdkhB2dyUblVymbrvbxtcgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783871314; c=relaxed/simple;
	bh=giZHmxNVTMv4KAqrF6jH6Ngp7eTYgJ+SQQ5K3k564+I=;
	h=To:Subject:From:Message-Id:Date; b=naeIsqelBJB5a+GQ8DRaRKtZQQ+cp/cBLuWCJUJ7970gGBv6VVvNWras9O8RivMwjbbmuZYvICIDGMxCPrAOmvo0wLSumaEuQgebap1IPomZBMnRv/FbTLTf80ejKDICJ3XsjLCUPbSCCV1ApOGpptVqUICTGLG5m0FIHntVMUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6+b9Qpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6+b9Qpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16ADC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783871313;
	bh=giZHmxNVTMv4KAqrF6jH6Ngp7eTYgJ+SQQ5K3k564+I=;
	h=To:Subject:From:Date:From;
	b=J6+b9QpnQfjWxXUfYIWDVgYKaX8AAlsqWXRRFoMfzjDSREdtQA3QHZVYTd9CEQhW1
	 CyjA/48kVTYHkb+oXzVv4WTkccSgh8ku9bJrh3qclTjmpoK16XZCyadkKKDNyyUHAV
	 TgTa32cUMx+gKyqR+nDN0O5KEznlZzN65aMdelmz7BJlbdK6ZmI+KDdGL0vWfc9avQ
	 9vEDz8ky/XipK5PcLWPedbE4mS2dOxjxDCPdrH6JuQxoIUx58VhA3VBNaCrBiROeiA
	 2xeBqYquCZztpIWPwmHKU7G0ZPIHywxOW+hIOyU6u1KNJL/rNKkC2vjhcOsdd4q0f7
	 zFgcvLFELNNUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE81AC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387131368.21264.18262851608236592216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25fa890b5fee531d8758b36df1976c6b99a1b1dadaab264fc40a5f754417ff2
Date: Sun, 12 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783871313
