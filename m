Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506683D76
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744184394; cv=none; b=JJ8PwYmYF8LY8ze8Nwp5MQubwa77Vj2zL4OPl9QxAunsvH2fkD230UW5RDWvqtTxLS+mnLpwPrX2plZGYgLc8Bmo4eiAHR7axHdqoIm/dbHxVZFUd7bg9PrOoB7uYpLbhwAIwpIQzYDNLQCbCe+KXz+xCyJ6uUIQt1v9nPd+YyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744184394; c=relaxed/simple;
	bh=eGpmXDXyvwxU/nJpxi9NAENJ6IA+lOUEZHpOK9swc1g=;
	h=To:Subject:From:Message-Id:Date; b=CHTpZUFhe1oD6r5fQQJI7GMp/HDhg6y/3RteKFzFoeBoGrsej8UDjo+a40Ap46Sw8XkvHX4qjd4zAKKooFkjfGk81jcNsLXFYpH8kLJaTwZSca0NiJUq0gKjBG0Vb0RhaRgy2GcHtKMKjXXKntPtQtuNrJE9WviG4g3+sHa4Jtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5PsC3Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5PsC3Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82EFC4CEF3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744184393;
	bh=eGpmXDXyvwxU/nJpxi9NAENJ6IA+lOUEZHpOK9swc1g=;
	h=To:Subject:From:Date:From;
	b=g5PsC3Q/szYgwmR23pmgvU0lYFMPz09x8TQCsZw8SJUom8alQ6IW9edT6c8iZ4fpc
	 8Ur5LlfvF89ZegIvDxckMH4pIiMgpQoFlm0m0tzNZohb4VD3TZcnIhZX35HDgFjpfj
	 afr8SaXkVFVKy4r1bypc5yN7MypioMTqGDP0iBfpATQmEYdVe9/+XB33OIWb1idChu
	 Fpczfvli8VkVbOVX/4/+mfnDna7eIeJdwR9p6x8Uu0NX1gMU97osr2shHRg6QcKyvl
	 wS1dBmcFVR0tm4a9knALO6xm7MHgm/xL5w2HB/1WNGv6x7Ip2+2U+cHQ1dSVyjHp3U
	 xaKUOdbufLaVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E76FC369A4
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418439359.5487.16922594432440791852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bae04c3145c15d3ba0af9f414e2331f61953cf6cf6638c44dee6513dd8acf1c
Date: Wed, 09 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744184393
