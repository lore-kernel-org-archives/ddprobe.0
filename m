Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FEB327FD74
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780416874; cv=none; b=FHAgIvNGAzaCCTYv1ojLW4I4VGmck+c1RUHjctFyZDuRh0RvcSR2Hjx0I710GTndtiGXH4p4vra0lHFC4pnOGLd2TbaXSv0l+OS8iklzKeO+mnIWsW8M8YOBYpCZiQRYnDffkygsbzbFvXIsbf4KqfG+dgJosDMhtXKwqUD5Boc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780416874; c=relaxed/simple;
	bh=BoscPj4RvDkxgkg9oZYd6lHqIgSbUWwSKXyQYjfRnmA=;
	h=To:Subject:From:Message-Id:Date; b=R38ZMcYioy/9Je1AioVId7Qh05IEF4B3ZOn2Dd7SVM/v6jLOMMcmHKmRoUOZ3WzKu0+QxFvbMCxfBkbYDooHdmSQTfEsO0ddgMULmokTP9QVscJ9KLnPnNcHPmii6feoQHoLIFyyHxVdFb8CJgjbNBOHI2wQ3UU6VHn1CAZY5Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7au/jsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7au/jsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01C2BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780416874;
	bh=BoscPj4RvDkxgkg9oZYd6lHqIgSbUWwSKXyQYjfRnmA=;
	h=To:Subject:From:Date:From;
	b=V7au/jshm3LboVX4wUEyb5DlnnRq9XOWwORX+DFyRgkJY7hIGoYBRkjwYHbMLMYmp
	 wQn8xofIh3r59WovQvtd7qvXKW2jNoQY+phRuoK7LljsdAtvd0YZQenSecHC32cT+r
	 Nsss/66W/n5+dwVwuTCd3ZJYbZv06gnCvyYhUDKeJhGVzsmN0SzGorT4cdle32Z7A2
	 pUNgp2CrFi2FePoVEuiXWLHN89rP+3OtSZudxIYXIu93tob0E0Hx1+iVkASQYt/+0b
	 Hu+9eAcrYP4tXsK5E7FFME1GQrZMja3pc7Dggad9mhFUcN5LjuxWwwkPDcoPJSD55r
	 S9Usr8nMO8GVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC65CD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041687382.13195.9432605342167033032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0624bef6bed24b9203c8f95f5bc96cd9af2e81d9c5059d9aacbdfa453ff50e
Date: Tue, 02 Jun 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780416873
