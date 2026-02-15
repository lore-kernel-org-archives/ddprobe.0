Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7AD2459D1
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771173894; cv=none; b=GFHwxlndD+WBp8VoEGQOYz9gl6XZp4ClMxDcReGoXFPU+fN4LLJSmk41HUzGF4IX2kp28LEdJPKhS4/WVXvTpscA8xaLszhCEjseLabN2HBIlLLi7Uwrgz5NUooB8bXcq0RzAK/G9aLUyzWN9Bw93KexngtMPSKbjyvXdiosv1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771173894; c=relaxed/simple;
	bh=DHJMUuYJWLw+afw0zzWQszHvnljp7yAjiCcUGfh1A8M=;
	h=To:Subject:From:Message-Id:Date; b=E+XFZDsqQ1bExeP2Y2WTq9B5FVrm+AdTUMLoWdJaFfQbbaED0pJbKhsyAvcDzuJZkXhOBNCq5lviUPJEfU6bPdx3l38BASdG4PDtl4ILjFaaX3+irmpygriOH/n/kQQDfD52nB2ww6f4Af2a9I/8yIhPeGinHYv2XqC5z7Byuxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH1+mmAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH1+mmAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA802C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771173893;
	bh=DHJMUuYJWLw+afw0zzWQszHvnljp7yAjiCcUGfh1A8M=;
	h=To:Subject:From:Date:From;
	b=XH1+mmABYXIZJ7+kpxG/kEbZ1wR89taiojkp0lu+qQb7PQZuzXCGtgC2GyKR63Snj
	 m1cGlPr1MR6ZpuuA/hILadPPGil4lHZWhIw9Ky4RuCEZvWMdw3a1j/E7y12dTWcL8F
	 AqsnqfVaPmw/vRcKCw0CbEJk7qYdDEHohbk0+WO5LCiARVWINs402djFs5e1m7uiw6
	 +WOCwdcIv6Qd+cJJRhDcGxoq2DEKHtj1oVyBHHecCg59PAiFAMy/HD/gbYn+wYIMq7
	 gqY7yvKANLkPtxSXpbvZAsisKaUpEl3zVKDQtqyGZx+sbu709V48RS0WTnRgxqgpEx
	 YGofVzhvEtpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9411FE63F02
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117389359.6378.7207256532079733442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22c880f7827d888f8140790b0049b6b7168124d2fa8eca1f51326ddd853c8ae
Date: Sun, 15 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771173893
