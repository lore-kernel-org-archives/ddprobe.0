Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1382DF6EA
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772202894; cv=none; b=fKAP7pR5+Xm6TBSuwh4r6iWkiuwOZp+KpG7Ui9ONJA+mZzhmznjQfFiPswJas5bI7qWIhADZQgNrnCgfm4VSQG9/oiaj4lf/pCXYlSqpi9lXabQwZpCLr4RZplNEf2EC4AuNdIevls2DNTE7NZ/8i0CY72nSnveIP31uzextll4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772202894; c=relaxed/simple;
	bh=GQp0FmmcgfajUlSQOABWrDoiJtQLZg4JHtzNGrFlTqg=;
	h=To:Subject:From:Message-Id:Date; b=EGRn9fWazLXz2/bGWqoHDPd/L0obKi6WOWnbQ2fh8JpyexKtP5XI6Ebozb3d8acLSXNG/0guwn77iyHN/PMM8uLEIfG60ySVYbzIGrK6ahWMh/xZN1YTq/fEa9grgxR33bbguMyMOgERFuB7kCc4bND9geIRqUxwg97hAwEGLJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=API8xwbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="API8xwbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F34CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772202893;
	bh=GQp0FmmcgfajUlSQOABWrDoiJtQLZg4JHtzNGrFlTqg=;
	h=To:Subject:From:Date:From;
	b=API8xwbzDxoDN9EdoMhyKQ0l+FPZeMO0U5AhxzoJncsSDxKnjO6mkM0MRjwf++dRW
	 4Qv9+weghc52133bNqVL0qpXj5x+iH9PX2E9+J7vrTrIdSSH2D0qIBxsz9HypaktTX
	 cA2VzXV3j9LQx1jKCcvfv+f+iDYiPj9APCPmivqqtqwryHKJdxr+8a47b7+ouvp77g
	 K4NgfoY2LdAbtKG1OgMhBksnTJmh9Wduou0am999tLl4NE4YBMb1SdOAY6DnocHpsd
	 305i1OkpRL5Uhgla4w2zduoFrYGRlNogjfF2Sz7OimnP0ae5TN7t++sZYM/fwzr4YW
	 Cg+BIQZdtpu6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90987FEFB56
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220289358.3965.610687544765220428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d293f3a3aad370bed14d34afa218058c2a2272c5b1a28f7947494d5a44a021a
Date: Fri, 27 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772202893
