Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7627738DE8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717802243; cv=none; b=p0vVE62p16Ma19DxO2ea5TH6UB04NzVZ10xAyh4PXIw+P5vi7n8/aZdDCT59quGYWb2iV0c2kelZOWobn41ew+MsUkKxKrz4gZUYFhB/IFpWkwfwVQD3tmaEhYEKumM51uq9niIUvZdQg1p3HspRyFvtwwnzoi0dv0OWW38WHSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717802243; c=relaxed/simple;
	bh=aVshmgldAXsMIf8R/3x3jnc1eXEATQDamPDqPyBIBMM=;
	h=To:Subject:From:Message-Id:Date; b=W1JJ6BJp9/NulfRsxE5fxbPo8QIUdplgLJN59i3RjyfgapFC26crekhMDIUoIv7PlSGAEV5pHDTci7qfCf4unFImTy7b6sm75PgZYgT0oJry72FAGXgMwWryaUdb9hCZvIq9liWQV1uZWzEonlbcDFIt+lXHA7xAQokyXbFt6N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ok8jWUyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ok8jWUyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF8FAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717802243;
	bh=aVshmgldAXsMIf8R/3x3jnc1eXEATQDamPDqPyBIBMM=;
	h=To:Subject:From:Date:From;
	b=Ok8jWUyZZKmdtWQ8ccghVlzuFUgXAM/JLcH+HARX1ea0k/kRD5+O+p+AePy3ji92X
	 IX+ZLHvr5Q0fiDBpO5NmG6ecHFK/imcZ6NFXPjwv5hfSOyPnZb+vk1V2TMDGP3Cwyu
	 JMTOAsXTgHMa8SW/tUk/7qrPAvg4a0EooEUqgCrvI90C8vrRXtqlixdc0N1hAiw2nw
	 snEZ0s60i9plqvGmhohv7WPUnEyoaNfD6MDBh2ILorBpydpJrgMIYCcSfD0gxQ0COf
	 4odVzXwQ6hfGygToAIgOSLFpC4uU8I8LjGYMK8ObrVoqHabHPWi7QopNM4HAxV7Ajb
	 BIwt+vDCvGtnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3D09C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780224285.30906.17659900675559426245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19f9739ed914e0ec0d1e2173c551eec33bf0c48602b70fce1fb2a6b2661cfa4
Date: Fri, 07 Jun 2024 23:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717802242
