Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D27F2DA75C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755679795; cv=none; b=qX9tSrHsPoL1pk6edCCqFb4rEBsjxORthYg/21zeNRKOIRwRxOpBNtMye1mEDp1lcg+IB+uwkFkkjsWsyvFcGohX0qiN9I8CkobxOIqY35McleVna7ppOvk+U5h4mmT4XfqyikN5YHDfhQum77t3jOQKbCsDdMcRTNRXnHeYM8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755679795; c=relaxed/simple;
	bh=7Qvl3Is2uI/pzMrt3JO//Fl3H1eYoFWUKS29l1zotws=;
	h=To:Subject:From:Message-Id:Date; b=THhX7Z0gyNgItQrm24j+Dxqj+PvfcVDsgOMmU+0sxc1E3JurREEjRnSKEYCaogLICLpm64hrJVMDXxJdgDtpg29uRnM7hHGiC4KhPbuExgObLCKaLVOiJqXk36YNK6vJN16eCCu/2h0oQHXX7hiU4MUoQ0RsHDndqMvkVQE3+aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmcaHMx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmcaHMx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD25C116D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755679793;
	bh=7Qvl3Is2uI/pzMrt3JO//Fl3H1eYoFWUKS29l1zotws=;
	h=To:Subject:From:Date:From;
	b=tmcaHMx5QIjtQkoEwmW80yosoPG0C8aWHZJVEkvNsowhWcJP89hYeh1mK7RgU3XrS
	 f/g3eKAfm2Lvv17qHG33JahXlASdPC7JUyh4BX+8TQvbSNMCnI7OHFzPe2wjf4Wlki
	 ZOswjThzYn1ZqfXYoE6oytL8eaCXAmfPNwEo9sc+5UC/JKAhQsOrZrgSRhDig+fT0D
	 HOB3OmerV2zlNQyBKp1msdpWdsH9ChJWP0lYaQ79lS+JIBppf+3v58plp9Dd47PH2u
	 noZG01Lmb+G1EtlpVUpC6IVq+U7wkBsacaTv9EMBREebXUGyLe5iWsMlR99LGpd/U4
	 P6pkGos+Pxd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E043CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567979357.17723.9847596778042348954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031ecd05a9b134b4b6e9516acad8a8cf13fe0e1907382d4730c727fef19eab4a
Date: Wed, 20 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755679793
