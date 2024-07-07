Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A9B3D8E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720316183; cv=none; b=avG0Vn83zeovnS2q2sPIGO6gCbrxLwZtfmMB7XmrAYoCpdRtOgrxq/VriJ9g9E1QhLXyl5iee57jdoXb45BH/L/3zD21IC7IPOBLns+FzK9Ayq+1RNr/V9IOAA9o58ryOcTFYYQxOOvaZi6r+KcCvl+2Oe5pzUvpDWTYx5HNw0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720316183; c=relaxed/simple;
	bh=0hvoNYBS4xlxyI8OWH38D+UELji+NcyTPcQ0NfOU074=;
	h=To:Subject:From:Message-Id:Date; b=sH2J44plsXOktdyXlqan6VGlz4R/M8AvYZwJtXog3u2BWqCraYdaU5/BE8ZttLze0++2Rqz1t9jAmTYoqkF7MUIHosuyePw52CPy/NLnrtduxlZugjfriUEUnM5bVZzIY4HgeiAY5hKyTfQS2HGycy89xbwbUPzYEpe32P/6WPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRgiN6tC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRgiN6tC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3A5C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720316182;
	bh=0hvoNYBS4xlxyI8OWH38D+UELji+NcyTPcQ0NfOU074=;
	h=To:Subject:From:Date:From;
	b=SRgiN6tCUigo4yCUVqYZ/+/EVm2JRkZw1lGoPmqEV4CwMkFQyiaRcwED69bREY6vG
	 rsnLHqm+vcEN7NrYScndMLZMldox3CXk9ZYA+jaHN5O3oFaVRTRxj2KBbLVkB6IK2X
	 f+cc5d7MSXvc2n6m6Khyc6oFQ60g/S7yOC/s50CWbe5rk2T2v8I7MhPnWgQDe7/jzK
	 SJ4FxEy7G7uyQ4atq6rNj+IAJeF5AxRivzLKwslX0OrjwStEoDW52uVFZ5A3xlfiJd
	 YwVXVamcUhLIlY7MAAApex5CAGl9Zv1im27+Pxsg9/YCJkEVXsrh1GO7vi3ri+XjRo
	 hAVTKhJ2Y4vHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4725C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031618279.27891.970495158464473678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0787f7460ab911aeef7b0908e46836dc8c3e4641a0b8190645e48fed061f7af
Date: Sun, 07 Jul 2024 01:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720316182
