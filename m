Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BBB43634C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780575274; cv=none; b=rRs1mnjUbZ5Gir/S222S4KTzCDzCqBVxIWfyqrcoSj+t4d31ZXU31SI1fbNtEriFQFQlHGSVqFfj5Rrzfo/+Z3tdqpEeMVpD4fTTSS8zI+gG9RuDXNqAjL0dvdmdsKuWAti7BjDhN1zGtqdaHRJkJh7Gu3B1SH6S1c4+liueKaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780575274; c=relaxed/simple;
	bh=r3vSY+Y8aCN4cUA0vg4cZaNHXD/d/eiJ33whU/Exd1g=;
	h=To:Subject:From:Message-Id:Date; b=QEzME+2rEKkj2VWXlTUH1FA0mcn9VUN+fPP/z3oBYAyorqkzzTs1T5ofPoz1QUCUq655U+2ELqPOCEPNmXt9xTJ2K4UtgzzbcrLZehm6+1//k8zFV4KprwyT3lOmqJ3h4lMd7KGqxW2220AhWzPINii1nG5Yi8YL1OS/c3hBR04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQqG4e1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQqG4e1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FA9C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780575273;
	bh=r3vSY+Y8aCN4cUA0vg4cZaNHXD/d/eiJ33whU/Exd1g=;
	h=To:Subject:From:Date:From;
	b=qQqG4e1HQZ66THZo7nHZQgYdwiug/I1X5ZRK5wH5k0a251DzwudbnsgSexjJ4U0hv
	 AIXr4wAyfTmyZKJ3K2lWdz4fvL5wUZMeWAu7uwNvTsSZ4wshWcPrEi6HfVFayIQe79
	 coobUCG39gNgTJPhGdGsqXZPRace7d6IGgvqQOtMY15UN1xqHzDkIyu/3WEnWkqgRx
	 scbZJ54d1/Zuvdk4BQjYF4JOrcromT6HjGuMqWM8Lt25NSTHeQhZ5u0U0nTpj0XZ+v
	 MQ4gIhiSA9uaNuUcwI8+4PNGhArbXw0q7IfvPL8CPtOf+TCUIRSqJwnTRlG18/5FY3
	 HwRrs9SzZLa3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E84CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057527368.32391.7638035630164962568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1027378d94f394647322ce701c7d18b58e200e3a8898f09ee66fb353ecb86ab9
Date: Thu, 04 Jun 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780575273
