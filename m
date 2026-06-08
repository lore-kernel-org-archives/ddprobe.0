Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9D733CEB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780937674; cv=none; b=MheZVwenXud74+A/vUsZd62VGRH98zRKDguKpQbFgewnOhx1XZAcHDlWMTw7gnZcl6jfueNiszQYLYpy8QY4SK316qtW0i4ylifHgDmOdrN5vFnSYpfwPW1X+xdaAWjsWc/uSROgIeNKpBw4C8AVI9t5GKgeyHFwlRX61PdoZvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780937674; c=relaxed/simple;
	bh=v7pDs4GotBq1/RgIxFw77DzTX5cxA5rqGIiu6Tai7NQ=;
	h=To:Subject:From:Message-Id:Date; b=kLZ5a1j7TDWeXt8dWaWjCGtes1hqV+wWzkuGRJoQyzKlEzSeTPtHsjb6I8S8slcz9ke9vqXJYeKppARBXbT6EvfAEhlCxDddnoYFuVlQQTTHH+LE8k0qTZTzYGz43Wu+ANddueg8fQMDCvEUKowxyuIRmWLmZP52eP3rkgJTKDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk1kpNw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk1kpNw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B38C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780937673;
	bh=v7pDs4GotBq1/RgIxFw77DzTX5cxA5rqGIiu6Tai7NQ=;
	h=To:Subject:From:Date:From;
	b=Xk1kpNw9Dk31HOMmA/r3pH3WGRdcmDLNSUcEeRog3V4vGHQzBZbPlujlKIAMlOs+c
	 OOol11cvHBDmVPkARxz+n7YrOOXaaHGff1R1gofRKf8TQ9Gcwwk+ijqcFiiZAQEWLI
	 +w4cePmEhWtFs7oTE+UylwwdQ8j5yU5aoDoP3Q51AJpAtq9JuRxdQrRrewM0L1aF4H
	 VJguOU8aOVD59w2SQtzK+HW4iLAxYuwzpXt66N/0rlyCY5v+q11zZIH3wPnkBZjDVM
	 DkdvJHnuoDbNYOpmUE1nkxeawzzpfnlBNqk6V2YnHzmKRwuYpGG6IAqikHVCExTN81
	 kbLa2vktUsNgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE41CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093767369.5804.876904083168747436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f3bdaddd81e2ba994e3ac7ddf301c3439c642abb657cb450837afc10a64a59
Date: Mon, 08 Jun 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780937673
