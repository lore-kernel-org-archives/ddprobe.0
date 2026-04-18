Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3498B16FF37
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776511654; cv=none; b=HfBk7YT3wT2tSy9ZkYriilupQe2L73v97ID+KdDKrX/CbxUtdtzV0GoJkuxxQeaZQ/wrnwboAcW4KKLH0M6dUVwQiU1d/2E3oNYUbIFy8qcfPMddgp11M2GSDY+BO6nJFZQlvQsDDAdPhJOLrvBcYdw5GZwlq74BExw7tk69NXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776511654; c=relaxed/simple;
	bh=5aZQQwYqOFKdsZSuUMbwckM1CPOAYV1Z/Ll8I1YS1s8=;
	h=To:Subject:From:Message-Id:Date; b=LMkJyBkzxU4Sto8BCf/k8e0KKvAToKIESB+CatuHhdb88EyardrxAKT0g3R00XittTaw3j6JWx+6s2uSH91mdu49ADVk33puW9ZaLK7WVz25fDqKtABXZyAHoIkqrh513ye8a92DBU0nhZNSqjHMKIM5+hKdCfB8iQv9CtR2Yvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx22dBBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx22dBBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C044EC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776511653;
	bh=5aZQQwYqOFKdsZSuUMbwckM1CPOAYV1Z/Ll8I1YS1s8=;
	h=To:Subject:From:Date:From;
	b=Bx22dBBTmEEu7R3qAblfNENF16lGR5DYsOtC/XAQPXu9/f/eD2z94TAA0UgGepZLE
	 XOaBL64CkG6gw7RFIDaaZ/+A8Pc0uoqlkOnqzydCpiGv8UheRTAxQu4V99wJSAyJnM
	 9CO2r+TzdxvxmXA8bMHrJABL3EDCT9kzMv9Ud3sNH1f4echUkmZNeEHEpp/F27fVHb
	 a+O44pQkSL6MBqb2bE3dXIrxIm+V5UIdUTFwAmeEjClaRdUuKu/J5jKB97RXYCQAwK
	 QzpPIgry18lwY3412r22cwimXX/6jt0hd+fsU+0BIs+E3WcU4MIa9YS2EXvFmHMfT5
	 6SuPBkBL9KYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6BFF99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651165368.29033.4149947199572132544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907c235467f1004f81cca08d42740f7c281438b20b79163597b77ffbf244274e
Date: Sat, 18 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776511653
