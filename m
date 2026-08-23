Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0EF2C0268
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787526034; cv=none; b=BMTDSIuZCmrhdXL7BcScW1Wf1yK70DvWTnN+0BEFWTj4JnDZkgZjIlG/NUq0PgRRjW3JC9QViXHYEQfDuCMr6svY6rfb7s6ZUJNp//qnmcqkTNUBivUK7iAsgBJIM9oeU0/Ue8iKQsS76NaadY10MKFEOMmnbpCpv7mq1XGDyVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787526034; c=relaxed/simple;
	bh=zfm+MC7Mg2BGx0PjJXBq6mPXLy5g5p0UQWfMAyx4gv8=;
	h=To:Subject:From:Message-Id:Date; b=rWAWHBTZTNY0lUNO8MPbSMvRpZpu7s4wk3C9nIa6QW96LfO17Snga8BjdpTu9hKk6ARU4rGEYSMXFFiq0C/o+gP4rG99S5wYz53r3rFDXVv1X6fjIWaVBIl5iF4p5zplKBlXSIfzP/1Rt3KRqM/lsdfZ7j1c98yPsuwhvEEEsaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3uNEUUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3uNEUUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787526033;
	bh=zfm+MC7Mg2BGx0PjJXBq6mPXLy5g5p0UQWfMAyx4gv8=;
	h=To:Subject:From:Date:From;
	b=f3uNEUUWdzbR41xBUIYalJmikLN4fR48FwVsaCTSA5dLKQIRNIGPFUl4C8hOFdCYh
	 limfu3vJjPco2hkFvk42OLuBUhcDMz8gUdYiltfIddpn9E/fURT5nvXblxKQMuzhqL
	 6eO8A3qN/r7kyZAlmejti/mwAn9JvvfiTCqVK2no95Mk9xqDz7H9MwbPNk+bxjnfyP
	 ix5W3LTF0+5XjAJsiRzD+/2UyPI6AaxTmaqRUSp1FisKrfpwMQGQluIphHx+ALTEz2
	 BwxBSOfcBX4gx1gkRUQNSAg66hF42pvSkGa9W/k2YthR2O5wvgQcEXKgr2S3TOiAEF
	 ebkVIZ4AFiqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE541C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752603369.26230.16134017695154682141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2912dd00195dc0cd33ac15f7a963894e38bc0dc3a2c319ed6c646d186e69e050
Date: Sun, 23 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787526033
