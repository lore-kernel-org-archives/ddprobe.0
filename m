Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5423E3C0624
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781884594; cv=none; b=E+ECCvdke4RbZ1ToL39/XqqDyPR7izOV4QV8KHztDAGgATeSnLzAe3x4mXFieXRuuZPwOEyFj7ClsBZ8k06PSuU+4Jqcungblf5e2kRjc7IEpgdwkXsW3rTsdZ7McamMa9vnox5rDC4c4kWUyqpBxUNsjCckP44iets+UPdoKhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781884594; c=relaxed/simple;
	bh=3LmeLO8hSmJkvuwlCTz+GyaadwoXYkvI+Gqpc7fpZRU=;
	h=To:Subject:From:Message-Id:Date; b=fXsPESSh6j+MCJ7rSbagYiH5Rwro+27S8WWgxnIJTzBh6nIrIh4XgeAhxFVJ7kFAy4cW0sXS9MosxODBUu3I63MDtitBhAEGUolBj1nYzYyVeCt8xk250yXOWkEQacXWpPd8Zlorb5gqH/kYtq9uQwOahs8RoAMzlj75RXUX2eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ah0PCY0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ah0PCY0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2A6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781884593;
	bh=3LmeLO8hSmJkvuwlCTz+GyaadwoXYkvI+Gqpc7fpZRU=;
	h=To:Subject:From:Date:From;
	b=ah0PCY0uOov2q5qoRMlCUZghQoNusGniPVLjhzUxSTVscJ9Mh9JxRoFCQwJ6l/0LR
	 h48oAOo743JfUP4h1WslGkYWRYXVwcag7G7Wveeo12iDPoJX2C/LR4xvlsIK42xjc2
	 SgSBI0kPjfFXK+k1B/yfcu4ySkqQTElObjHNgG4bC7HYpTGyNRD8sRcbQd/uB4crEQ
	 7KMgsbiPWMiDhEBUjrf8OH0cfcBKFS/hK6DkVkonR9Ia4WwufigT0V8R7XktUMCsui
	 w/oXYSQxoeltW1gdIx/rlI9zKKYJPgTZTu/x8HYfARFyV4RiT+TWnAEmlwh9CsBPQ0
	 xjHflixcpvuHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA12ECD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188459368.21744.3455023255787031408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacaf9be07f3b3ef4da14375499fca450392254a6c4a7afa1ba2c6dc769e47be
Date: Fri, 19 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781884593
