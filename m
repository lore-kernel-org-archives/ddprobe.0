Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFC71FE457
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745783994; cv=none; b=GPz/khNzlLsaMraM9YhZNgE80KsnQO/L9pWDhlXc2QxwYR1Mwl/rQUQJeTpXgwygIpcqxfLuiD4bHq8pxcBDKoMxMtC6JtiYpGny+k31jN0v0SIoNqw1rre0qYoMmn5ldLWNzXk8JNeJagJ+kSGHm7fjp1cxFUUY6l7JAchlz/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745783994; c=relaxed/simple;
	bh=3lCYoAc6LeUx5naO5DNx7OPp18Ot7oEISzCUKmkfcaE=;
	h=To:Subject:From:Message-Id:Date; b=nP9pnVl7bkaDPYNN79azW46ZBQWt2A1w8Waa7HAgPXtEkWWJKMNDqM2hIzI1RgePqfceQu+wFEjNLyn3q5TcLiJfkz6Ysrw0cnlkJu1HIGRSWlNMANbv++Owugyh+RQ9dEJC9FdGPkm12oTrB1hbW5POTSaEWQeSxoanAfEZa+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Be/SKx0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Be/SKx0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A675AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745783993;
	bh=3lCYoAc6LeUx5naO5DNx7OPp18Ot7oEISzCUKmkfcaE=;
	h=To:Subject:From:Date:From;
	b=Be/SKx0rRpGAqQjjA5yGx8HneL5cudUBeWYrrScBWM1ylKjfbEP5pshboxOa/Ppyt
	 BZ3W4he1ykPl5FvPoI6TxTqz5X88RYtxt4qNXpLnfpIu3LFqSUOCN1+vwUmaY9nRmI
	 ZM8M+XFRrl6krCH69EEcLpouebyeVogxLcTP5kT24RPa9UXLrYX/kgnomdEKc4GrEp
	 KhCQjO+7kopKWQaYOsnTL58icpGD1WZDvpyr+OVrh4UwRY+TJr7eAv3mIeKG2OTxAC
	 wsXXI1v2TneVfp3ZVAhJ1ScDPnSCxiPZQUrpyChlXXD3SKalp9T1EncZP/paR32E31
	 7WMjxYxZN0e+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF3C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578399357.14489.16149166588327128084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb07526a04c7c1d45c81314b2d5b5478d4c8beb7588233afa753cae04e35a54
Date: Sun, 27 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745783993
