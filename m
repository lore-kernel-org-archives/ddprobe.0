Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F286230D2D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736747754; cv=none; b=SZ5XqdctGJzBQ7eHoDHyD6DxialKga1mPy8hyRFfo3KijKlQEjqRWyPNI3QeLFJ5ymvox4uxxbtCzq1HfHkFFnIEtvoNw/Wb4dUjojXQKGAioGSk7JNJ5GUJaVX4PiWoYqScr1FJZ04n1o0bmI18/rIK7i63F8C/1VcV9NLJG5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736747754; c=relaxed/simple;
	bh=gu3ExZXbtXwcCNwzlTA3XN9pvylARS4Cn0wLEPspYXU=;
	h=To:Subject:From:Message-Id:Date; b=XgIQQdhMcWXDRwWOvCme3Ouiw3x4htMFFe9/65yT5fnBpGXJQbxsWZQl4vXCNu1r0DuqznEDsDEfto7mRaQM0i/9AwvDZwBJQ2KZAsc8Q8kKigDlX4WrXy7tZVL/dCe57WNwqrOis9buMkSTYQKujJCFzFWtYp0tLLJ4wxlNTOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXYRz/gH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXYRz/gH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB3BC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736747753;
	bh=gu3ExZXbtXwcCNwzlTA3XN9pvylARS4Cn0wLEPspYXU=;
	h=To:Subject:From:Date:From;
	b=IXYRz/gHy1sgaNkzNhfrgVfS39Xo+8YoAJxQXYDfjq9CMvmlDUkTShqg4sJEI++hB
	 oFOiLhLbgEn/0kOUp6o+VbgARC89d8QOvtuRNYZbczPO8MrY6FGR0+vMYo942vbFzE
	 kSQ92dWI79+OIOnwmldUyBz1wd3P8jnR9UXRhEQLy3vzQch/9w+ehf9eqYpI22E2x5
	 1IvdgF9s8Iz5NIcxoeQp2t93n6fCBmP/DJI1EShrdFYTlpWlZomG7A6AsZIxwiOP+x
	 ybZN6Zxcu5uPeTRLn97pVoBSdxSTPMm1I5RpHqRJrNQf+9EIHshoqUgo/A17O+nWfJ
	 uHz/37q8RUrSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98685E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674775360.2644.1989502907298884648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c9fa76266ec331ae48d54c055304f717e55a7f7f0d735e9b8d0232f040b1e0
Date: Mon, 13 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736747753
