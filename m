Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AF617C7CA
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738770354; cv=none; b=iBIq3RTzJYkY8QWFOMHPZvodzcXQucCw+2c604okCR/P+bA5Gfi2kl9yNtR5wJETWzcTEPd+meImzLH1kt6HsP6PCOSz4hy++B0WyuFv+kXOqN/Jv10a5oh4z1fH1KgWnyLRd4OrDEhrsPIrjrx4fZRFKD1KqbfHtlLec9KXCB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738770354; c=relaxed/simple;
	bh=KCbeHebGkTRbdyI8tNhpt//07qZPKFoUWJaociZqC6E=;
	h=To:Subject:From:Message-Id:Date; b=lBRmmiVzfTyrRGGZ3jl8zNjQEHPfpLx6lCJF8kj8lvxnIrQSke7mL1l0LzG0GJf2zLKLCzmUi+A7+ukygeUwcg/g33dz/J6475ZwgjbVnypiUhn3cMfYTFFZpzeA9H/QmopPHG+BtuweXUuzwygFfyPNVaGd39MNA6bcQUJT2y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtpA9HFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtpA9HFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EB6C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738770353;
	bh=KCbeHebGkTRbdyI8tNhpt//07qZPKFoUWJaociZqC6E=;
	h=To:Subject:From:Date:From;
	b=BtpA9HFmAhMkRhMGqgYx9vVJqj6N50a6zuMbu14yuMqO1jXohn2mG51G2+j8bTZX8
	 DCgdZAqMtUmMgvDxNGkNWuJ0xM/UIC1fgke7OzkIMJtIWvf+gy7846qeKKnyjCEMxL
	 oA7UOXMToOGileHNJgRhcDqxlFn6mIsOww36rW4dhmlViX/oeZYCcIMZwWhJ9W5t+y
	 Kb20SSbbasQPZby9ZaN7JNFiMf5UWcolUryBmrNpRQMfG+3LEmvznY4AHDHR3atTDx
	 8932th1i67kne1Y6mJEVYCJxaJAYzkHTYF9CUmy255Y5PmPaRdIPTvLmw/OQIfCF9w
	 QOmXhNw/oDtHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E615C02199
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877035363.23058.14691641261577667741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efbf327259d6ddedb4219fc6d25708ded405c20cd62b8f0ae3902c3be2e29b5
Date: Wed, 05 Feb 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738770353
