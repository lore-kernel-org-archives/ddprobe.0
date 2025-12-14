Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B45219EB
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765698774; cv=none; b=oWMXGLoMvpF9b03Cs5OHSz2JjO+1yYhENQ/fyCfrtlF95k2iFO5YzGUhK4fse4wB6LG7/pO54KcDGSn5VSXAYLT6rk44FrGq33DbRy9iErpxzEEODJPCvyNCb4akbeOUar5VXFCg2ZSQttUCXJDHcxsQ5Q+OHAvjUhZSDj2uvw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765698774; c=relaxed/simple;
	bh=mjNfFHH7Kpb6O5rGNSdZGlVOoiiaFlL9MnYqXyeG8hA=;
	h=To:Subject:From:Message-Id:Date; b=BPdhGE6Y8KQB/U6CtAjr/5CRprVv9MzSgaOfpNXdqNiLIeQK3cO9fg4Ffa2tJDmn5fqD1gjMLXCGmoUCMPsISC9n8I6ELX/CxVwgl9j6CTeRWD0m7rb61AQxec2UY63/xaWhY3vipFwotcd4ZjSHB6+e1LwKKuP3Ga01+PMkzWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csibgk3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csibgk3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E4BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765698773;
	bh=mjNfFHH7Kpb6O5rGNSdZGlVOoiiaFlL9MnYqXyeG8hA=;
	h=To:Subject:From:Date:From;
	b=csibgk3qfQZ5efHhAlT0Q1UvPutzuHBqxY5cnJfgmA70fZVzCOf5CciVwed3Qe5Ra
	 qZl+KGFFNZNu9JYX7Qw/Y9n8iS9hwc5t0k685a5bHDTUu2Np10kCHkGH/i+5ElAioQ
	 xX12Etadm75CAza5pAyUs4acWROMRfptvxE6TrkSU+hUadiQ5me/ZP3GtgqtxxGLqr
	 HLkd+wcv6gbKKF3jmQ91J0KsEiwPIS7GpZ9gWamTZMvNZSqiqUCOe+rfQm9Imm/d0s
	 Sm++BJ0EOUVXbTPW3i3u+PrG8P0LTEkiKLtDde93r7d/1Eh5m3KbvDzDPv1OgDAm99
	 fXCK6s969Cd8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0ADD3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569877358.24491.7027104024700316548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093aeb2e6e5872d87f7c10f0b4ba6147bdb46f2c556c81fb3471c107e3626a89
Date: Sun, 14 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765698773
