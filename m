Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2222119F133
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736349354; cv=none; b=EIxBSLm9ema1m6yLo1FTVgNGbEaHDcSK8yYdf/f6H0vhNPKhWce6UBiGDogTVcuct9egqPG8Q0d16gkF13K0udi+V7qyvalwfV+6izJ6og9WaAeihqVUPGIvJaYWT662twRHj8KRpMYTp7pimIhsLE8kqGdhOtZTQiHQikHSNW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736349354; c=relaxed/simple;
	bh=v4nC4jBCY2QiE0jBHM+8pDFLg0489BPmDcJT23TkNc0=;
	h=To:Subject:From:Message-Id:Date; b=tjXu+W9LSQgy6Klb3XPQroeMlRLzqcMjRr0i7VB9lZf+NRxxsAf1roCHTmWnjRBsIrZYh/xjQAhttP0nEycDUWEz6BGeLeucljF23imr1UdJwerKtjTfBiRxyyr5oqAy8+VeR0C8/z8mA9NLT6JIGeS/Y18WLU9JmQh11XAXW10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKrNur33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKrNur33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8671C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736349353;
	bh=v4nC4jBCY2QiE0jBHM+8pDFLg0489BPmDcJT23TkNc0=;
	h=To:Subject:From:Date:From;
	b=PKrNur33picTgzEBdtpeZm+k4oLFga4jVB2eGKd+cdELH3tIjR9EAoSr0yiVnc1M1
	 X92+ZBz+ghN7I0Moo8wS8PsRKfVmI4hF6fN3sxxu31c1ekq3eBJ7DQj8Ekmqimk2eC
	 qfPg+9WUgEzMyDAtCjHoHdthzOyN7z4E8hmgBYWs0k8KPAyzANco8K/zso3v7Oiqkb
	 85rId/h8GY/qadSuc+ni6DMbIOTuV+vF6BUwcUGaqnsVnzE2A68gvxqLAnTKw65IPl
	 OZyYNzzpmicPdXXrmR2q/nhoVuw+MVYLE2C1m4RrwVZ0Ql+GREDqTKjIIEcaYAMc8G
	 6AhP+eTJkYN3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95299E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634935360.23657.5545058821002373425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc605fe3cfaa65165fa2f43226c207d804f9eee0b57c76f80722ba230a3151a8
Date: Wed, 08 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736349353
