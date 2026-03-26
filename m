Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F069D390C83
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774490094; cv=none; b=fPJdZOaCGJePKOIOb1U3oRwt3yFh3osbdfMd2cHXlnJGltg8XHSgvd6qH6+iqwc45OIarzqwi6mtoy9OvFpjTp+S/R6fU2RdzyCTo3YiiluClj5EpYod+COuEz1EeUjhxCDDjdR+NZ39cAgzBXSMJ7TyHktp3CTTdvE15I9l8/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774490094; c=relaxed/simple;
	bh=0TrXH9b/SP8ZSPtWbAAnyAS3jNqiphonmOBQU42NU0s=;
	h=To:Subject:From:Message-Id:Date; b=ck1R+BNj5ArESFhIizrwYJd0B1i2fBXLBLw5jrSS69tplyWBRgoG8hHpiJhvQ59wl6ndnq0k3ibq3+/vPNsUfK1bAriljoQ5saDO2MBIdxWGCIkx6GDezDuw7umrBXU/ydDxQjG03pFCG/FMB1YhHUO3003Xka4AzkwA1gFp7eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYERJGca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYERJGca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A248AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774490093;
	bh=0TrXH9b/SP8ZSPtWbAAnyAS3jNqiphonmOBQU42NU0s=;
	h=To:Subject:From:Date:From;
	b=CYERJGca8IbXUtkwBfdLzVacSa53v22aWz6ZUVtC39pu7JhcNDRnSfaFNIPpJbtDB
	 no6k21fqwjCKbwNdGsMVxEuVHHdn9rsHkuBNgl7JLxCnnV07Bamz4bQyxLQjeYw+6l
	 4uIdMFdhbPB8QLxopLvJ/jkHPzSACa5IR9VlQtu+NOa1U+MIVFE7kxyUs3d5bOzehc
	 wX/RLFoOKRZcNe08YHgjpZYSo26/6KXY1mrwPRZX3pT+Nib+7PGlU8bU/U83TJdwwN
	 dlef3Kbt60OTgJtWnZ9a7FEirIrjzXi8mW1r+H8pEnyou4OtU0ZQlaYRowsmcHiFuz
	 WLk274xGYeOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A6B109E52B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449009358.17213.6463162406188450210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55fe37369f468d12765575748d0180f9f8962af4c58a247e8ff031d9b2f8157
Date: Thu, 26 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774490093
