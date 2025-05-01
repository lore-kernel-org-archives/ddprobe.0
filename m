Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AF720C005
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746122394; cv=none; b=Rn9lj3vSvdWBvN6+SvqF45AJE6D5PANdr1P7YqwR/EsL5kG8P26r7VuKRVSU6I0vg2I4GxPI5QH9/Nm/5D7iBeYKNPB9W4U7EN17/iv79FHOr5Lv5H6JHuizhEZy7glV6JlLxTemc7TP7Zb+AzwIqeY++8HxjdwcqbbH9DEn0cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746122394; c=relaxed/simple;
	bh=pqiZS4GCboDzioYZk3fvs4OT0A3khhNziramldZ5MUg=;
	h=To:Subject:From:Message-Id:Date; b=teTfwyEWt9qcQpFpnzNeNwnmI2CquZnRsHWsO8U8IRq1Webf/PY+7+g0Zi86vHjWk8uo+skh1h53nifyIpIvuQJqUt90zfd8ePNIG6qZKeDxYbSMMZYSBEBP7OfdntrzWYlCV3plYgy0Z5K23D371Ehn5IBMqiwxtVYYcFz0Jyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRqeXYda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRqeXYda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0154C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746122393;
	bh=pqiZS4GCboDzioYZk3fvs4OT0A3khhNziramldZ5MUg=;
	h=To:Subject:From:Date:From;
	b=fRqeXYda7XmSgMjP6NN0UAWn8zxLAVRC/pM/2lFJpHElDL0sdVvv8uo9dYVHKvgD8
	 n3fMUr077WoMzXUuYndBVQlkpMPJ1FOS2p3DV5jba0OLSf1XwE/nYXTSFyj61+fNGa
	 ucuFZ9ZkUZXOdel2+aWdbvuN1+RsQ31k0KCAxkfUaF7XNbKurzKRo38cfcWzfWecBd
	 Z2nTCYO0JlB/Qn8L8lKjR2ex91LNJL2KotFd7qkSHBlJW1yJUvCTr8jCVeoCKUS63r
	 BUPChP/cGR1cSvTWBaYLd2brTtweDSdHvFTSHbKQHhAJt0zhRoDaaOXHTKL9WxI4Fe
	 zpY2LGD0IP4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5AEC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612239357.12625.8363447666566622504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662eead816934aee86bf7f5b73dceffb0fc89735b8622df7e8d5f16474656e2f
Date: Thu, 01 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746122393
