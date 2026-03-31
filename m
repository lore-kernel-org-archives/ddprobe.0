Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6B3331A78
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774982694; cv=none; b=Gn2fHXaIDcUiJHTyr0Jd22djue08GM2rnt09if3w0tpcw9XiwXrUa82QRpjivnmiyYceuIA66kq+hkScvXAMvAaCKpdonxUV6WIkgAgv38rM36j4apOGciy9JvKxuK5O4aa0NzqLcP2PTgSx3e5YkZKvrxLsj1WQRbMDSIx8AfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774982694; c=relaxed/simple;
	bh=YZbtyqw/+b+RFc/G3GDjA3aJHMqI4gzeIFJXrHQ8aLo=;
	h=To:Subject:From:Message-Id:Date; b=bZGXEhXGXgxRFIVw3hC7vTvd+oyorz3Uf3Rl1uS054M+/PZMf4qfgKgPWPnd+iIwpeDZj6hJXNlPbYY5iGc5TwcxqbQ+HL5+d1do+ix/hHNS/7l2U3p+ICBMJt0pAtqCfLuGsD25uNzujcOgxqOptOcI1gPRbIvg1gXxLSHucYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2ct3x5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2ct3x5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3ECC19424
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774982693;
	bh=YZbtyqw/+b+RFc/G3GDjA3aJHMqI4gzeIFJXrHQ8aLo=;
	h=To:Subject:From:Date:From;
	b=f2ct3x5a8+Ue+02ya/jcQvwFe/cFOTmEzI8vubZrk1I3rbBDcS8xu+Ut3J5d6O2Wj
	 a+ti6x3ceuzVtAx+aMTX9pWsnm1DYNWveEwQcLXkna/pqKU82nMfDyue/k6RSRvq7X
	 qtYIjjFK3V0qh00BdCTnSfcMo24tS8t0qgoPZGD5q/rPuTQX/6VPb6ng7VhFve7QMa
	 i6SqZ69RvChzyQl+M/SF604IX9bC4Ql+BA4R3ltZma3P7UJLrfr72iJK7uV37QHgHc
	 X4HFhkm8L/aB/+RyIQe8AdhgIdYsL0DX5bPfKhC15ZvKqUkf29vfM0PWK2DWPrUWqd
	 Xw22w8dWn8vlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDEB10F92EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498269361.17593.13773291002707084403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e05eedee1ea65d6c460a1ae28cf59c90313a5e474b1c42b163685c44a6e277
Date: Tue, 31 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774982693
