Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AA22206A9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744933194; cv=none; b=BnUA/rOQeGBngUUj7R6++MwT4fD3wVAsaYoJoLgBdfJsXrNqe48P0l+7E00A+Oh3pK2EWJSzqTBVuubyGnHW86qK9INAJl4XeEn9BjfwIfb64BsAKZHs/LVMS525qxsmjf7FfF1t3kyFB8+yCCBDTH+Xdpur5cm2MAWCnxo+Ya0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744933194; c=relaxed/simple;
	bh=jT85++QV2XO1h9zrbcDuKRQhgexEmhCoKs7IeSq08CY=;
	h=To:Subject:From:Message-Id:Date; b=DjPDkBAKWUjjD22/lr7EoKt1VJY88c5/g+OHdYBZb7b07k+wAi4pIPQvcgUsFdjkjCen4GeXj7NLk1xFauziLx6xkwAUUDL79k7I4sxNkPtIDVFihqoy+NY8LPyajSRbTjWGrKPnAaJf9B6/HFre0LI+QrLB2m7V9KwDwT9bxgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eujufK87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eujufK87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5E1C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744933193;
	bh=jT85++QV2XO1h9zrbcDuKRQhgexEmhCoKs7IeSq08CY=;
	h=To:Subject:From:Date:From;
	b=eujufK87EFBGFbpntRG+f3BF2OP3aLDTO9cXOp4g4yo0wz9QiDzXx++WIfPVTDabC
	 iCpO8psaH2w94wYiwtl/PWb338owszt+AQeeWNu7Ibq52ObB1Y0RiiCLB9OeNpl4sY
	 90nCCptT2ztPMnUmKHRNRqj8WYaOf7LNuekNCQbX3q367Btud9TB1jgOV4GgyLd7KW
	 ZmT4rkFVXMedajiKE9JguE65iyrfNQfbcCGuQlZY7Vyu9advo97YY9vCMoekqzOZ6a
	 6GJWHwsRAXfAdLCHySmCE7rwZ4c8oKmkkDq3J9gnk9btoiGbXiYPOCcugTM5KdMBhK
	 TAuYLl5dage+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F72DC369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493319364.25825.1862746695573700293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9977a3690ee2264f5b0f9b565e264e26300964d83f69ff1436ead60cb6ed3814
Date: Thu, 17 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744933193
