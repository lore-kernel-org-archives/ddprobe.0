Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597EF54262
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752530394; cv=none; b=mJN3GIB5ZYK6L7pP6tfkUuht7BEXeB2ogUXyCyx2bgH2aP5nvJ9l8Yi7nbbO5LeOr9xVFJ7KC0/IoTFsHK2NJ9D1qhlPlTqA1d1lzyRiQLPd1eQ2VqxhoU7IPYFl+5AXw+kEHEiDwT7d/zwXINRBvo6HrlUIgC25b/HXHPb7DAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752530394; c=relaxed/simple;
	bh=HIT7vv9MNr8hX2Fv9AMmnapYiBZGLtl46MDr0q1XX6c=;
	h=To:Subject:From:Message-Id:Date; b=i5sXp8bV5X2bOtD9aVHNYIUAp1NuK91WzqAwYaEmnNNookf1KNjFQCSukkxJxMrdZjmyWZEPs95cRlTbxaXHPRAdENd0ThvDw7pTZdfYi+wuL4L4nSSpbZ8r4cmnAZshsQ6x3rosWkQc4+xX2RfepUnp26x8QCPyprzvlaypHmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd4rhyto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd4rhyto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FA7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752530393;
	bh=HIT7vv9MNr8hX2Fv9AMmnapYiBZGLtl46MDr0q1XX6c=;
	h=To:Subject:From:Date:From;
	b=bd4rhytoxysr9M7uOgoBCiNfdZIgfYTHXI1aFxkYHcRVcCDiNhTl8Q4sBE2MxTHNc
	 nFUt7tCzCUK0bA88/Dk9aufQFqooiKRF8EzFDo6kZ4ICCY045SJZQ+HPav7m8TWOwZ
	 F9hV0gUjyM7jSB0SSMMiNqWQd40lqXbl65fqq3csn3XSbC/AlCq44mrtJqK7IvsSyc
	 mKp2xqkiwSdHiDTQbdgeIMhBj5+X8DDqncW3DCT7mSE5I6Mf+ivEbt9Yd/UPbSC+eW
	 f0uVkWBqiNoBqtvAI75AXss3nFJ78kjts4SxgEceZ/kq3VlLzcK/f0gNrjmZDfzj/R
	 zG67LCqwSVh8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92279C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253039357.15961.2108712693793456979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca64a80fde812b4dabafe74f71a9732244740824f6e9d26392cccba26540a6c
Date: Mon, 14 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752530393
