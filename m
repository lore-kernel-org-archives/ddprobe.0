Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C5628314A
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756325394; cv=none; b=c1sMwSXsnrTw/NQj74lWxiGGBjSCZdlzryWCymwelNbZhPW6+lHq83s5rN9tSVgyKYoPSWU69Vycv+Zn8MRzCXw1aCOM9505wNBOfe2mkdtVm4cQux+6nfZUXOhfbM+gSJbUivJ81AbPjMSAsjbtq0rPkQ1K/j3EprJYEZlfy0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756325394; c=relaxed/simple;
	bh=dpGlGdolwY917ohwgPXA49O2XneVq3Qasc5bti8EgGk=;
	h=To:Subject:From:Message-Id:Date; b=pX74c7ueIW5HnRhlCsKavoKyjpdB9E7R9QnH7LhT1iw5sDte/VER5V6hcDKzD4SKZana3lPiHRxCtiUZ1UlTDA4FYKXbms1Wk7itRo8He0CxYd6psmQQsRdVj2jcTJ/K16QYCeTi9SCW0Kjzjd7Z2Sb9+CO4CXAwhUReV5VUL/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbwljXy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbwljXy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A410DC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756325393;
	bh=dpGlGdolwY917ohwgPXA49O2XneVq3Qasc5bti8EgGk=;
	h=To:Subject:From:Date:From;
	b=EbwljXy1vvF6iAL/krA0JNcQ+Tu/c+Sqfb78nKvQRR5NOm3/WbKqxjKPVxB+TehKB
	 I9Z5bQwzL6yVxkIqUAMh8h0qiinxDvKFu2DuiZQdzTY+iRv+CtCihMTAEMkcy9URo8
	 nW8V9kdVJxNyHWSxS00qcJQNScCSUcqPzXxsqKwVpZSWqtwrLSpnFDxZVnMnpResT/
	 WdMl+TVxP3CuL8XN3iSjTs50asIlvu48PMnlwu+T6sADOI27CLopeG54vc4pI9kcaI
	 lhwU0LnrLugGQkmrEWo1XZ0ZITNn9+OzdZOyRHuN+XrMYh8joJu9Ry8/y60dWOPfSq
	 vcdL0VVzzX4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2FCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632539357.18830.13218875783102464635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e44a049da8de9679c1118d014f826b53148c62790e00c9785db5d0a948e5b34
Date: Wed, 27 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756325393
