Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D103DC878
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780653274; cv=none; b=cFgFwrEIhwV/l3/MjVdSL0Yz8/oIrewbtgxERu20O7fc81k7pBSB9+hH3INf7bQmB6Tit49FpMFp3pUnmvtdLNq6IhGpGxbjvSRDzyoIt3q6VchDX/5H75/7KYZYEPXbCumKao8zi3yS26kZQkx3vVENsM2m5AEOsuKkPd1ffmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780653274; c=relaxed/simple;
	bh=1LNh1VsLil79SKcNAFJyytrVhLC0R04iGcsJVLPZbzE=;
	h=To:Subject:From:Message-Id:Date; b=Li1CFbzYNt5b9fABhYbojdgENFjtcfmAUXeOovZnEJmE473c9/d7IZyYLPFl3hi/pPmbgAlkbQ2r4hgkrPTC8jYvGnnIgAsaFUOHXw8T+ExGmeYTqhvgrgOhHn0cuadP7RwssydNEfzacrY4c0Vi1fsxKHozPyAeiyb6kFqIk0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbdqQAo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbdqQAo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D935DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780653273;
	bh=1LNh1VsLil79SKcNAFJyytrVhLC0R04iGcsJVLPZbzE=;
	h=To:Subject:From:Date:From;
	b=FbdqQAo8bpX97IZPi3ZpF4rJaqCXUdD+7NUCb0V9i8KwEJyWORaHWhl/rEzu3nrkp
	 XJ6/e+UHYMixdG0IKh5rpR01qMiXbyJbWceuEjaBzvJCsnjL7/ZaSgmFMJo+V7tRVp
	 zEcsZQOssDAwo0lxjiFWpFDW4AuY8DL5kGEpt55Ll9TXgwk101s6SP3hjtzLkZnkTL
	 c8PYEOTDhN2YICxsiD35n7umQpFP0+KG8G+gnAqfea/GaR3htLaB3exBMn/7+SUq0e
	 ndnTFKypPosh+S9lit5ncfjdI2R5oisR6cX3ezj1bYGtc2gzrQRNfNUmkxwzZPoxfU
	 q77tV0YV4wk3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02E2CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065327370.14992.11353658350186567610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51fcc47afa7f8d2ce3c9f2e9fbf9c8e86d5d5059cba28365f7b84509889cc432
Date: Fri, 05 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780653273
