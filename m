Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2CAEAD2
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713446963; cv=none; b=CU4dA81wbSkjlvsMYDkLPj+GskF9HYjBKGjtx+YxJS1HwRWEqbf9JYu4FCTheK+TL1+TfcUW3ovD33NHiWOWEHH2Xj9R6N6XWsrM+l7uxkptSWvQnR0LmR7oKnieLYPFNgnuYj2fxwQCkNHwK8cm1jUXuKwPBupDYWYdZ9XQo+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713446963; c=relaxed/simple;
	bh=/XPQ3NA3c9y0Ox9r9M5drSxPCY82SgRV7veGFpasjk4=;
	h=To:Subject:From:Message-Id:Date; b=dze4PT/S2HRw8HVoc9nPFgC9WvnHUwqLatkQTKYFFqwz+fbFaXodvWBrL1GLzsj44ZI51PT7eZCt3shLldQ/oh3mNqcee8Rz6FKiUqzgJ/1Vvq0jDcukAhwu9WpZvYfHLlQQT5GG8AkpsJ0Hb3HflzMEMzQSddcwfoCrxz8wy0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuS/+cS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuS/+cS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81B2C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713446962;
	bh=/XPQ3NA3c9y0Ox9r9M5drSxPCY82SgRV7veGFpasjk4=;
	h=To:Subject:From:Date:From;
	b=BuS/+cS5lu/SDVvp1AH0wxrQWl7ypqKNhhqgG5H2c4hfuPxa9kDINj9jYtZGr5RRB
	 +pS39SV9tddu+wX2X886iyNyHx0rdPvdzGvoNN+QX3hNOvqWw2yU3XkguaE+g+KEIA
	 FOxXeVgNnlfqEk6NTr3NOZ2UojUGLSyt2nDXqOeJorUhfSuRXVcjvufLEkwGPNse5K
	 tq+howgVCOQuW/q4zLewJfIlenzvHrDEuwjM+ZJmAmH+VAA+fMK/gYrzIaTdYGm2sV
	 wiifC0rFy6fauJJtaY/ep571xO3s70PEXVB0W62PMgW2034jQRN68DfF1Mo8ev3SHL
	 S5579TaePJ0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64CBC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171344696280.26161.16584253882007816028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b995ed67ad140a35b063834c5e07f3575e4de7b92f0231b2e49842d3751bed
Date: Thu, 18 Apr 2024 13:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713446962
