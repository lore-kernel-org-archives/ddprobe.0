Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49430443C2C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789126834; cv=none; b=BE2Bf9J6ozJU1T1iyp+rL4XsNcz3TaKoppdyBSdddq6KEjgNrdR5O+8Bof1mgK/4sESDE4ebupVjoLPqRHWvuPPeVzimUYmw4UgKf7WIHkDP/P4EUSOC4/wiUyus7Fyn/8am7PQcBEfjLKNatVxcUF4Xi3z8OgQMMgMVaCZO8mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789126834; c=relaxed/simple;
	bh=0huMVDyuasF9ZY1NRlyp5ZwxusmjSsWMoxC2CbmwUN4=;
	h=To:Subject:From:Message-Id:Date; b=QKKOvfqk/JfLwgXwihMdPClNS8Ad47NX1cyI/Ov7jcUOSwKAEzPolb51nZ9EZlg0KlqO3zg1eKZoSQL100PCxUBn0YX1XEhndLb1/pJno9XlVKws9MeStNnwnpvHnEE0H7SauzYDE5lJHuR1gQzOlskjvO/njLxVy/6u6gF+ZEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7Z6M6Nj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7Z6M6Nj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44EEC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789126833;
	bh=0huMVDyuasF9ZY1NRlyp5ZwxusmjSsWMoxC2CbmwUN4=;
	h=To:Subject:From:Date:From;
	b=d7Z6M6NjRjG4taVsIwoJxyYrFaUO5alHuDR1WGn+ZKkrQeIRmeza1c93qq7S1cD8L
	 P7TC+SPpnLsPkag3pARD3P/vDENwteqItC9jRnH7JabvdoE2ktLXh7jEZltjBQJ7t/
	 sOJttBf0ziTcWi/piXAaMKcLmagUp5p+AUmP+YQ+xkGzzTFgtmxVEHSsIvKuVlnFHI
	 cYmZcmTCpqQb5DFt5nh3zSVAt0tA6PGO3gb/CcZvcCtHqmkWh41JIw+ONGlHTYHqu8
	 S9Xs5nvxVNaFp1e0NvYKN84YZ12luuMjJ1G0jGcvtaEj4H3u9FLydrcCgvPc5CCkKq
	 n0S/zuC8KRgaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC73C88E4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912683371.11757.3803465663076963831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58d269c0ce8d1856401650081e27723f1d96841ca9be35f69a645e3761388e5
Date: Fri, 11 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789126833
