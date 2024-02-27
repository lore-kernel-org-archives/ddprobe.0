Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04F214534F
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709048296; cv=none; b=s/7fDE/gQzYtYqNCkdiJAg0R0w5JR9tzkMQEL101/hHWc4Kcey8uq/olurfBhC0PB2VmtUnKUrbfDPL3rTZpi6Rj37eKn3XEWza7Vw8QQwf3TMWjGXP6fvSosiO/VGLBLutDymYeBexXuQFyWEmEqbNOoS1qYC/s3PDafRXADXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709048296; c=relaxed/simple;
	bh=xoFSTbc5/oFPX/+npAVbb9kjD3o15NP6SlUxGQJW708=;
	h=To:Subject:From:Message-Id:Date; b=c9E0LYL0UhadMup0RtNvIZ0AJcODghTWIA2dxBcrJBg/7q0tec0Uqr1FT0CyYSs2Z1PlZ2kg0PN/yEBz5xMDCVYNZlEKy2maLwsqMA8zK7iW3gw1ytbrtjkQBcxKJnHdTEht27lYatGq58WeJa2BvX5oC2nVFzFHwEDdHdieROY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfoNOtWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfoNOtWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863EFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709048296;
	bh=xoFSTbc5/oFPX/+npAVbb9kjD3o15NP6SlUxGQJW708=;
	h=To:Subject:From:Date:From;
	b=VfoNOtWf8ipSKNNS7deJp+L18dfuUqJBg/l5iyoK1C8TOcbVqk6WH6sugrC0YxMa8
	 4V5sBpA/zAiX8kZKtXocT7Whzzu8vpD2XETb3jf1TKiub6nkrTfqJIda3rSST29HHt
	 Fp/K/MI69n+ED2/zIchWqP4bDL5FM2kjBM9wBcFjshkuyVZozwi4ereaVQzn6TpFRM
	 0g1UVTY0v7z/XHM96TbH5S3CCsVAQRBKVB6FC47UGtPsmUjkuYRPJ8HXqa1MCxh4aN
	 arpIUVDFtbbKApyr2cw269MwRL54Oso29b4KoeGHq2WVyCKRcx32phWgBDamp4c69O
	 Y/742yXTpgTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCBBC54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170904829643.21411.17106703024978693699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87ffbf8b4d837d10f3a743d117152e68e301d024b2e1ae0eeb9eace4d1eb9da
Date: Tue, 27 Feb 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709048296
