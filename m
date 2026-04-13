Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C9A849C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776118654; cv=none; b=RqfUjr6Lq+8mbfj20hU45GTMID1bfe7fFP5ZxSSS1KWJ5xumxwP0/EpGLlVt8g4vfJ9bRUMuE3dpX1T9brkiXI9HSCrUogaXvpf7oGr3kX+MOP1PAeggsSg/VPgl+AeFPXdxh8NfRPvhhzR6LJEQWShQHdyru99ooRCWgFrNZag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776118654; c=relaxed/simple;
	bh=2vVR7ZOle1NU84eTdeQy7VxX4PM8gZ265TM0nhRx6tY=;
	h=To:Subject:From:Message-Id:Date; b=Woxw/ueoUsuYMgnwreLsUAjJv9jtZsZ6mBiJaDFI7H0TnIu8s0enG2YnaBEgxOwimiK9PeX5wCXoT1gbJ+CN8wb53tSaFYhWHxqyH4X7iz9HhM28F24J7zXIcwIERHKpGHIeKK1548TfStr1fllDKCWs1XOfd/h9dEF1DGrjndE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1/DPl6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1/DPl6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9625C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776118653;
	bh=2vVR7ZOle1NU84eTdeQy7VxX4PM8gZ265TM0nhRx6tY=;
	h=To:Subject:From:Date:From;
	b=h1/DPl6efMOPNRTgNVYLJ9yrzAZlTMSP/mcBLO0wP2hYw6s4Q/F4N2rzOp8tExKlk
	 MnIBAiPiXiulgx9ZXZ7ytC2s6BpcyX5a3zOi2VSeMgo3Bqh+T/6ieCOClVxbwdlWom
	 RBUd2iMM3LyRPRaMKbltVKfWA6o1Z9vfzQDo0gZ+IN9ncK8BDJTgNlBHYCzI22fyq7
	 pWXipgNw+fUMmJ+OM//Gm/apJJKo6U7gd4VWZzHAfGIbULEC6QuRMt1gHv77oEqIFw
	 WQN0N6EEdp2oy8LpXgSM9uo4z+Arg8zN1DSigVmcESvt6hw1slq7muWGPg+Vd2/ENu
	 iqV1WUKGnOTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD23F531DB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611865368.25116.14123769511920741417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395199ef963a0146cde0ac4f57a0ddb7143e545616ecffff3a3e92b44706f76b
Date: Mon, 13 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776118653
