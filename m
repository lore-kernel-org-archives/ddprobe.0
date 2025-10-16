Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E474329C5F
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760630394; cv=none; b=bCPVVMJXyYIGPwlmWWc9AJ9ji7IMTVxfOLmFatMP+z7KdLsMEmrn7C7pTMnuvXUhTvQXWzPyceNw/LE2ehFIE9dsp+cWJwJ6MV9RizRVAZIzkSSErIsMyAtlCTzJzw0TLPRqt6b0SD/bdweWo0Gs3T2cG50AHdqn47o77/ZsHDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760630394; c=relaxed/simple;
	bh=ZpXlkxiuUm0LaGG/DhpiLfJsILr/1ivMe4HoQ2Xi+b4=;
	h=To:Subject:From:Message-Id:Date; b=gGqq6RNXUG5erngoFgHsdcQRcGal9JaAlxZE1ZxbHTMCuDHwLcStq7N5wKfVOgrbnoNhEB1ohdlgu1F2TIwSwg2b+LpO9XZA8YIA9htVHl95jMOOQj/gCNZmkEbb7vFuaWbylmQF0n6dm+VJ1f6YVbaUGELer/PgpchGLqAG12M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1yXmfTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1yXmfTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A136BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760630393;
	bh=ZpXlkxiuUm0LaGG/DhpiLfJsILr/1ivMe4HoQ2Xi+b4=;
	h=To:Subject:From:Date:From;
	b=n1yXmfTJ8vOF7ozCAR5vRg6agKUHbJsyQKm/0T3edfgU84m8/KU3WiRiCI0G+5j1t
	 SJKD5RkEewkFkkzy9zoh/5PNx09NRWWU5iMycjTD2BCukN1AHju7LN9/q6HjeWP7nD
	 0seu2OK3ZLUZkblIfceQrHGMvwsosyYFqhsHvGYDL3gqryq3dxIhtzgc28moKlr322
	 39Cmv3bbJfiLVWCjdmPGREYKg769RejP8yebA0AWXmhdXata9eS02aZgOgXlccaJMb
	 ZKPq9o4cxXLB1of6H0V0ap2I/IoVSdRI+uvtVJ84oMNJNxEiO2rQeorYL8UyhtMhNF
	 fEaiWSNakQR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7FCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063039358.24910.12628801610218578478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13aacf8788c0ef47418156048d8045c2f215d1f7973af66b48b8f262db0b0417
Date: Thu, 16 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760630393
