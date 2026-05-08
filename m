Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA6733D515
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778280454; cv=none; b=ShKa5TcuhgWjL11UyVq9v0HP44xX31GghVjWzSJ2YIoNFEBqgPnlaU/axhU5SmgoHA62/xINA8/XWSHy0miXOF6NteKtYIyaxx3FL9vtRFplQpDcViIX/328uC0XnJelD+sbk9v8xPrKzXlNrQL08w+gqjcOTCHIWuAwZEtBD8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778280454; c=relaxed/simple;
	bh=Jgl69BpmPMrKMlCIUqEIGp2bUCKdr4ozq6357j5icOk=;
	h=To:Subject:From:Message-Id:Date; b=D7ZBM2YOqjJ4xVQjby3ZemQgoX+nBgNb8eVPLPpQLZ+hbTrhyNH70XHZ+cevdLCm/DmSkVIIQYl+fn2q17rGnWFEjrs38RQR5LZQxkjLuSmPqiqIwG/o3lobvkzGROiGX+qeGyyarYX0D3Ng3isAynvNR9cqnNynxwrPYykxB5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur8rnubG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur8rnubG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC5DC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778280453;
	bh=Jgl69BpmPMrKMlCIUqEIGp2bUCKdr4ozq6357j5icOk=;
	h=To:Subject:From:Date:From;
	b=ur8rnubGWVa7G2Mj5vw69paDvlhYCPxOGTUGOWvNA0fswgNpzp2n9a6ESDMBrLnwh
	 STclTyKQTFS9GoLJ6GK1EQHb+JoCbO1F8kFhtNRVX1Fsnz/93sKPHpRVY4VRjwzZNW
	 6rf0VlFvOWUFrTIFMNFqFKAgZp9n/wNr5G9aFIKyp1bEblLS6vzAD+ED2h2gQDe56Q
	 zOfr4TDlfhzJz2lHStBnIoRrORIOB7I8j+Ue+4GAdQvSXKyywlxhpkDgCY9LRbcw81
	 YVXgREyeioodq3NaGneBZ68ozLOg/HFfsiNNgRzCs39wpE/DjBNRMAc2NU2BSGTJYn
	 JAsMXzjUyu7OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED76CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828045370.3798.13749169159055409900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1dd5ce43987fbbe7c25e4904f752a97b727ca907eac1aacf87ba83877c8b1d
Date: Fri, 08 May 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778280453
