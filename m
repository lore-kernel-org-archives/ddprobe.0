Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6301E5702
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782575914; cv=none; b=aLyMdeEs5qOMujqr6JdmUWz0ym2iNEqiuDoKbKmxyA31frolGrsKFqA902fmSMGjtIX2DlWS6f2KusC1XNAcjR2ZwXoBCZ+fJAMdVlXA6gx8Jt0R/0zFVLMQ4SDT4A1yDUeIYxxt/6vlGopGw5saru/sCeUXwu4rD+gAZ8Af6ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782575914; c=relaxed/simple;
	bh=3LD7q1ETodeP3F9bZK1QAQIQb639VPBEqT1VwDSjoVg=;
	h=To:Subject:From:Message-Id:Date; b=MXkjxQNHJiYxthTZAFy/BluwKQQN1jfWZdev4I2xYhKXa7ttuPFOP8V4Fdb5fsY5tyXOZ1Py1aeIYdJzLLbc2DG7musLU6G1T0AgcnwFhNubcQARD9lwziqhak1CYGhdcqacD7cWi+qnpQwzlzx7Ii2c59jpKBz7n/UGUEAu7ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDWevwx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDWevwx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E088CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782575913;
	bh=3LD7q1ETodeP3F9bZK1QAQIQb639VPBEqT1VwDSjoVg=;
	h=To:Subject:From:Date:From;
	b=EDWevwx8TWkToG/f6JX7NqbMwz3Fxn4idfToxpavjIYjgJDxSwvRWoL8yo82HVeHC
	 urfBhlAusMCF/EFz3PeltldtjebR04FgIGTwg3XjVA7z3p+bgTRgA+khJ8iAwjaGao
	 KAGAhWv0SS2A6hy8MJ00fkWTmb2w0K2cejmkhihBEzTsg6/vOVTCf9YrBCdArBz+BU
	 y/jgEN2udv/upaowPgVOQJ71t3rWd2b1spvJbJZ843tfcte9d/iKe99EsURmFo4sp1
	 zLa/yJR9iHRjiRnIxgoFIV3zQglnuCqwzLSABWuHPKr1aDwZ7sou19MSXX6w9TxHkv
	 XCvWa0RGGBuQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB68C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257591374.17072.359576411518284822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6bbf3a886ed5e6739b44c60317cf7f53f4babe9591c0462260aa23bee1bac1f
Date: Sat, 27 Jun 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782575913
