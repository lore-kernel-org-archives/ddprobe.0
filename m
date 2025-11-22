Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C8617E4
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763853114; cv=none; b=kWZjuu7w6Jdq6FgL9ib5xKbAWYUVog/7mjLzMzodAbE+NnmI3L+lmmbL0sj8YFjNtTkZ6Vp9RhLPBkWpB/dqEZ2c8gvEtVISuMyX+Y/UM4xrbsHQK0S7ljECDAXZtC0RjlX3Q4ZBSjwSrFtFnuJ1ZM0ytwThwaTctUWnTCy9jVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763853114; c=relaxed/simple;
	bh=MMBpExAov8ZGmlMB+oWAdYh9xnONGT1+7+JqoPpGmCE=;
	h=To:Subject:From:Message-Id:Date; b=gK+tJ2CimA+Zxsf9DdvnEVVsx5OCcaklnlr2bpVkGymcVgGI3kQzosNu1pkmuguBeh0Qk9Rf0MP8QOmXkebZJ7hwWPBmh7A7GfisnZwpHkAieedf2Oe81mYseBGRE9iy66X+ara2df6a7yGdGizcvKm1Gz7mjebLaEgA+AFnbjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULRfyV5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULRfyV5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A795BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763853113;
	bh=MMBpExAov8ZGmlMB+oWAdYh9xnONGT1+7+JqoPpGmCE=;
	h=To:Subject:From:Date:From;
	b=ULRfyV5RnyBTl+ujn/3K7M67zKLISIJSQ3DQLNt8+6cSNGQDk7/ov+M7HC7hP7yYq
	 ED4iwUAMhTr5/Q27NuVSQF2XcdeljMro6tm7n8NrGau5mKVhjup7gmuczrdLz7uUV4
	 6ubU1/LeW8HJaFZY4CDJ6lJn5efCYmPRM75Ve8ddDJdd4N3SD9lab9eMJGmcAR5S0l
	 +y98o2SlhYgkdCABbfjzVQ8RBLy7CY+oeEjsz5YpQjnla6a+kiJbMnWkPgOqTVSaqe
	 OUtQ7ul1IYwcq84DJHGXqUNQC7IuXINHtCURaS6a4023G21xM+dWTZr4wkRHmEqz2l
	 oZqtmdOmZE28A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C19CFC53F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385311358.21522.6800188832697189410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28349a7ecceb42b19f076a9faaed4d72d80cca885d9ae7c1f2f569adedd8d5e6
Date: Sat, 22 Nov 2025 23:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763853113
