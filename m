Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2720B344D90
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784957434; cv=none; b=jaBdZ5Eh4CLKDwV60pL3Y31pRjWRB6R+RB0g9A80a9q2CEeND9HO0BLnlC1694G2IGMN6lzlBlHq/tIzOnVmp099zvJ8A0pXMF2rVniz16scqhEQ38vPV2A8sh2KNZM/UmZTsnMYi3OKZiWXYiIzQGBItthJLrF/QLfuMce0OYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784957434; c=relaxed/simple;
	bh=E4biZotBaV1Uti2MVndufI7lju5B3RxgsgiECRJzvMU=;
	h=To:Subject:From:Message-Id:Date; b=S9j5tcCD2PFltrNYFqLZL0bGLmP0+mGRb4SAMX079nn0/+1DgrsEtiYEdzJzS0OohqSQS2irUXqSE9USDqnJtzZJkK9+zvdoL/lnsQW+RBpJjbD4IAbxtTn5Ytra5vTHTmiRFEQB4gqHV9y9e3xlOypiOp35RhfJqAKpUF8HF2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acjEgDjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acjEgDjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E7EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784957433;
	bh=E4biZotBaV1Uti2MVndufI7lju5B3RxgsgiECRJzvMU=;
	h=To:Subject:From:Date:From;
	b=acjEgDjozIKlc2WC1VUb3xYweNef58snanYrW0j+ZdBdOiphTZNoB34hlEMU4uAJz
	 gPyE12LlDMbPLLl4fAcdpac9djCtMiRSeDKHVYQUlSDfhb10mJQTPrfTtghf+QIBT4
	 z4uiRjgf+XPhxDDoSM59f2OXb6TWgMBWKnpEUbQ/2ZbbauxMeIJAb9ILzhgerGjc/A
	 TAc9q+ttndY37md1FTe+v3ATMHM/MMKDW/pPWMuWpKLkjCrLNuCEoiz8CgHy5Cbwnl
	 ExNHmJHidlwm/yg28oyABWw0WDr4gq6ur2RFu6507JApR6ozuTeRZZDPNc2mY9k0Va
	 n/MggYdknUqiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF123C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495743368.6861.14554524172552602415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090e80455ae939d296db9a89f4086e4ce21256c022ac1ab2df58193f3ea13d0c
Date: Sat, 25 Jul 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784957433
