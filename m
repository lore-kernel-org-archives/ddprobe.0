Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52792361978
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787820034; cv=none; b=BrLF1TpBq1AAoCRBDWZA+1B0NtyIdwJLySojbeZC48L1gjzwjkHdKV8HH7fL3Tt3DMTKIOVcXY8fwy4t8Yndxf2XqBdjPhpEiUmQKYbf0/ODXUBEqTnv7cw2e5OQq+IOqvnI6sXeCAeONWRdY6VgxpxOkkdqcYqCo9hdE5Zz2G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787820034; c=relaxed/simple;
	bh=nY4tUs8AmcK1lLDWRKDT2H/l3h/55wSXtsY0QZnsPF8=;
	h=To:Subject:From:Message-Id:Date; b=ZhBMsUq4FfXhxC0Qmu9/KsnXZ1o5RGxtnGGbqNAXTAWfwG+XBHpVi938uH/VVY0SURILaco2mf8sP3YR7zqb19m8iD2efXbqb0LjFm00xYrExhKrUleMNj4idu7Lq3Ll84uWAAqyme137qkHOF8j2Uovyf6tuYfQ6iKTsw2ngKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hn8r8KIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hn8r8KIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEB9C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787820033;
	bh=nY4tUs8AmcK1lLDWRKDT2H/l3h/55wSXtsY0QZnsPF8=;
	h=To:Subject:From:Date:From;
	b=hn8r8KIA0d6XkxHgImMtx9E+UVmkFIRqnFg/QIITF8XTsv62rg/3O4kwfr1IVZ6hC
	 y8254eA6RumV84/77MUuoMIycPT8Isv2isGUHCvp97JU1ovT9xf58UCZxclcc88lg0
	 wGfjsRLh1G7aUnIv+y4YekwTvheuaqngfVa2/+6T3W3Nfx9qWgb6T0ePUnnQm8Ib2p
	 6edNjMO+drX+swYxKemJwrMFbxPLXtEdpOLk5bNzfwj+mxYFEAzSQXW1zKZnioAI7v
	 HMQUtIG+cFP1bgWWCWGCtrrI5yohHmoYVlsWDa5LkC3GI1XvQQZ508PVNA/NXbnzwW
	 208SAm25iG9rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB824C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782003369.22419.12406929334887579074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba9a8d620285cda73237ec06420103e13ab2f95a9aa73a719f04ac5e6812e0a
Date: Thu, 27 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787820033
