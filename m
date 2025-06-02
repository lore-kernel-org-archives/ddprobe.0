Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F9561FF2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748865593; cv=none; b=e3n1CpnXXM45aW0lWCkD9z6iAKrTRY3hcMkiW2PA2cNks5V6f/RyM6RjJxqE2shMb/n4LwDhTPCnPPI2cPXiSIEg7GzgwemurlYt8a8hJspRTFpDq1I304Klpjj+DxjDIyIHh2ybk67BIk3LakOejBYQyYeb2dfDrCQMs10PJVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748865593; c=relaxed/simple;
	bh=+gQoMYh2yTosk2DohYYm6dUmwBA7G4DN4exlOHmzQ1k=;
	h=To:Subject:From:Message-Id:Date; b=SLvyRus9meoLhU9MHqWKL9xlqay7/i/mGUWg8kiMY4MbaxgwRvvlhvCarM9G2/vIDZZvOoEY89srxpWuHSq7UO0J69cQQYNs0aLhLhUCiYe8Ln1iJ1yZS+IBX4saD8q5LxGBmPf3yNute5pJ0W/pHTsXIDFGwxJ2CsEh09rePVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq9CTuB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq9CTuB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF20C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748865593;
	bh=+gQoMYh2yTosk2DohYYm6dUmwBA7G4DN4exlOHmzQ1k=;
	h=To:Subject:From:Date:From;
	b=Qq9CTuB6ifAT2GwUsY1sFOfEfyHIuuXrkN3S+DKHBdxSUVnMJFxK3tR8A71YcjVyo
	 QQGEUNGX6TPe8xhVXWOYqUdUddYz1HcVOg0RBaxs8PwDcn4nTFywn+USLOgCe2ffmz
	 iTp/oXUvY+ltsRkZTlxCYx/NJlzt5n0qN4A8xPNmk5J3Y703RDPKHFRYEtvt9PfFGS
	 TWqHK+fBNNJiSsDCRrJ/+z7MLNIWJNeZ4vXvIvBrPM3+VDIfNF7RlrStZ+H1a18MNH
	 Afi9Pz1CdXc6RVzQbpwY7ZMFp+o8qQ+Z0MEMF5gLKkLbks34nBDs97/hNXkzL8BQgF
	 ZLYdXhMEWFX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0AC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886559357.14331.15602894652738545141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516b7e8aba968d85efff39481aba8781f26c92d0c1904d856d2954777dcde688
Date: Mon, 02 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748865593
