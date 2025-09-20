Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB3480C02
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758389994; cv=none; b=MrVzcEmCpQu6+UlglqZMqirHYTnoqiOIAtNieo0kmITJuvYSh4Tb+Qzzgd/TDa3fPzfWRRZUeeIIyesZlGK5f18bxVlONadLQkRTXFAXQQPyJQ9Nt0ON31Ypm4yqruBRTWs6FfLofzJn3XSyHVSOPhK7IZv87OY7rV+ysimefDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758389994; c=relaxed/simple;
	bh=0pVyk1G0SE/sWQbLcUsd9THwImt9Jip57qPYMKYQ/7Q=;
	h=To:Subject:From:Message-Id:Date; b=DqrOdP2o8i55L19+vqsRtPdOmIQZHy5ipOr3U3BbWiK0tVpZ+MreD8r5Le1WCXR3FCWZ/OJhMEg/jKH9JgC8UYs2HkUv1WNCdehZodgZrY5oRqOhRRLzvkdPs5pNFDNSj8O6muY7hniWYldnfOqBdkku6PqthW/B3xL9GxMQTLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FH7qe67t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FH7qe67t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7121C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758389993;
	bh=0pVyk1G0SE/sWQbLcUsd9THwImt9Jip57qPYMKYQ/7Q=;
	h=To:Subject:From:Date:From;
	b=FH7qe67tE9ioxChw/5gbPyn2bL0/tUXodpY5T2okOlxNl1TLskK3YHNlWvGQRwya+
	 vPZhZFoPEFiBHJ9KSjzHgltECA7qY55JZ5QEWHcfV3VPC+543pvE7DJlyeQVpw/Y8k
	 ubT63XzIvcsDoey32iojfc7sILXtM+CmI9foJtAz0R52Slulcp2Vp0LpyrWTxGMwri
	 pooWuCiqrj4SAenQCfCuL2TFxZW5iqgR7/EIc6ax61BCGHS2NMF/Lh5lwky2VYum7t
	 AeH+N8N0MWiH6iJxBq1InlFn5iDY9haFV/YVebSIsiwQFvY8dtbjRWuaoClO+sI7kc
	 /zE2kE8MbkETQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B3CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838999359.30890.4227630188432609293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efae76616f26663401e438341dfb3932c1eeda301fafe705d5b9cfc6b2754015
Date: Sat, 20 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758389993
