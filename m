Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365163BB5A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760666394; cv=none; b=ctNqTw7q2AnbWutYOlYsBDhJmOCgZGojmfR+6+QTDMxeGTxAiE/00lq/nJDUShlJXJZ+WXo8IhY8k+B/I6gKZ2opYC4wk/qqJHVtduKThE6Mct3lk7sOMnFP0e/96uuLz0Y1uQ0zwgrQcdccgDCdFdmoGcDANeCZG6F321npkOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760666394; c=relaxed/simple;
	bh=2d1kADwedLUCHnwMOLxFL7wqMQ8FnBBgQRoXHJGhat4=;
	h=To:Subject:From:Message-Id:Date; b=m2h9Z6LHzSdSy6Y9dYwNWkFLoT/8rxdtGfkAHojODScABdBB4StnuTABVjKLSQAq1d31WABe6ofLttLvrexEHD4IFeIL4hQKkuly5e3pNmrWcDxIENhWyww85ltVzQrf+bBXlGz39bk4ZGav7Xfz3fVKZQVL3cOmCMZUmQsSgQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cow99MX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cow99MX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD331C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760666393;
	bh=2d1kADwedLUCHnwMOLxFL7wqMQ8FnBBgQRoXHJGhat4=;
	h=To:Subject:From:Date:From;
	b=Cow99MX6LXv+M/erdepXoH6Smt2v8nfL336c2ZqTM06+d54ySlyeRbcXu+eWbhshI
	 LPuonsuWCYFtMBkYUlOPfCV5E2mrbCrKcu0RD0ak0in0VyhQOKgT5SXhZuqAZFsXnS
	 q8DTSmCInxmYAo9LGICxH0F2eFXuZ79Ox9nO34/AID0o1rDndgi6tP6IRDNqRg1px4
	 Arur34BXjAJOrySwBSSHVytzhihFNCY/VtSlZeBvEvVbSgL4GFhUYlNbjCzat1vlxM
	 QlnHZ1LDZ53zZZ7A2pd0uNNsHWQz04KXsPSnLAVsfeZ8cuKi+GrUTZSt/KTRpZwGHD
	 GhIe3oYk48OnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A6CCD183
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066639358.20350.6856056199747534237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25706bc43fcf35236edad3d5c86dee3e7cd57a110ddcd09e78e6a005ef352582
Date: Fri, 17 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760666393
