Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D562E7BC4
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752858594; cv=none; b=iaoJByoNmRBiSiUqfBCU2SJ84BljxVqfR//mIGhSgW5SfS75PTXwYbJR7vRNzSqXs2Cx4CgDg+SMLrpAiJ3WDUciCJSkOonJwcI+0MiGwirP90fgCTdB96+StBO7cQfjq4z1ngWzgVWCaqn8BOyxlzN20/0kQRoecr70/F8JSRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752858594; c=relaxed/simple;
	bh=GXPoErnpuHmxkKcbRIMaOlvJSzSvRPVngL2Pj72GOcI=;
	h=To:Subject:From:Message-Id:Date; b=P6A/XRq9npN3gb6QFDuOBHEQbcfZbvuyijh3illXaR0RGMCXXDp6kQ3Ony1XVVd1sVtV90QOtTlPk87065azRSC+z9B+8kxl2/lVFBhE6FXBlxyEdrH4OtP7HxDYPacfrR6ClYwwvUjknhUAEWZjnjIrbA8DbQkbcwQ3qDx6pVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXSLepqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXSLepqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8062C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752858593;
	bh=GXPoErnpuHmxkKcbRIMaOlvJSzSvRPVngL2Pj72GOcI=;
	h=To:Subject:From:Date:From;
	b=rXSLepqbUDbqrgjPA/AK2lUvseKaEw4U5eibw7MnrVu1V5kfwhWs2sd9XKQjH+D56
	 TR3I7Bz8+132bpOlJFZ8cWugNNISbr7BZ+R72RV8YyUVWgxvA3g/aSV8Sn4gEnLU2Y
	 /OHBG1bUHMYUQz7CR9Wu+G0gh8kykwpOBg2c/+ngsV3GvX/5QIh7BfkBNJ7vqHOeP8
	 gDKaEEWZr36wZlCZjgsYv1NCGrrDJkvrAhHr8csDe4rSGUHoOcg/cfiaAjsYmG3mMr
	 2Y5EaH+4rOqGR0n9v6Y05cNcv4d/j2XhPGb30mDltyXkoxx+FvBfLclVwhTpxnLJGy
	 jXoLB4Uf3R1Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94716C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285859359.17065.4591601211196001195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc6e4408e83846dfa46f735bcddf561bf8f2ec079c69c8566b86a226f75b176
Date: Fri, 18 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752858593
