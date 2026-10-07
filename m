Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2422F5321
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791334234; cv=none; b=f0oFaDoR7v8En09eLP82kARE+k/tb3+RR23PN8ql+laoz8mMJfyORBrtgVOX4JI9p5utnfHaZEqpAu1iarQD+yhinniMMNMLNc5pvP2NTEMzkZi26dGadlevBmPSUi3hvrUXwqsw7F4Zm8pCTrB/7EQN7AkYM/EM1O5ZbCAfrx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791334234; c=relaxed/simple;
	bh=xZqBTYt57G6ZJg2/B2sCTQ3+9FNu7nJM0wWXm6D+6+A=;
	h=To:Subject:From:Message-Id:Date; b=k1jORXnCPdK+hfmA+Tp3U/+bcSlgCO8Fv+qNgxUyLLeRUhMeqhSO3nu3o8tE60ws8d63jLwkLolDlWKe1NKEzWsSMEayGdovTwKjGC2FL2AtmGNMC4z1rtAFZoOIFVrsVCgosTZ+iMAKZwAY6jm09DPHUra2QJAcizdGRFP20f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNuWxiF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNuWxiF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EDCC4AF60
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791334233;
	bh=xZqBTYt57G6ZJg2/B2sCTQ3+9FNu7nJM0wWXm6D+6+A=;
	h=To:Subject:From:Date:From;
	b=CNuWxiF1OUPBQaMvma2Gxlm32wWkrLxmEthzp8NYYEXXYgK7OvzATpF5pUrMQhu1q
	 f6ku/gcYX6x5esFzkUrgMNfY9uqAG5tV3PVQ47OxC2BxkTtH3RtvMVvI7bJQMkjpc9
	 SjXkCrd4TKvjUEt0oGuLS5Cl4AeMUQSgVD04vTq0bqQ6Tti7Fan1vj0StWJuxTTxek
	 zHNK+1rMJ62dTz/aucWpZlt/j1yKI9cxLo8XSJBsBF1hnJ5Ck4A+/r2XfQmXUmQYwa
	 1zNpL+WIP+HHt+HN8urtIyz+GTdof+OYzTs2uGvqJVkRVNej6GVHX25wXxy0LRfCK2
	 55YK0p42RdGvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C3CA5FED
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133423368.2289.14145371996400179084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701f462092979d4e2c28d6efc2d814ed7c0b4f98197ad4d7732bebe72291f90f
Date: Wed, 07 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791334233
