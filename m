Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFAA32C92B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760715594; cv=none; b=Pw9XCJTMivSvnc+4Wdi8uhLOnjuwMTZ+ikKa/GF8KUzTo3cATZGngLrw1rtxS8TjrxnphZCxuqOAxbTeQBpa6KK65KkUhRO6L+E/eihQrD4VEP0BijO8VlfiswX720IvaK47KyvmHPLdnG9PJL/+Jw+f9jOm88OH5/ZGHIqXmww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760715594; c=relaxed/simple;
	bh=TRfin+SNh2XLjv16PkREc0yf8vmEM+/5pqyl5/dHtnU=;
	h=To:Subject:From:Message-Id:Date; b=Tat8h54XL4LtE+ZTc1Z+8ZAnNSj4wplpHOo3mpk5q0QpRbDQy0d+OnGvAcCkrFhufSx6ReoZNeSeDtswTZkSRrGWmC6GNgV8ACUNxLXLta9lfX3rF/Y/fShPQhsn/Rot0280MZTfUlbuhZ/9FU90M2y7gaX1AAAEf207muLWsRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z76LGeVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z76LGeVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F781C116B1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760715593;
	bh=TRfin+SNh2XLjv16PkREc0yf8vmEM+/5pqyl5/dHtnU=;
	h=To:Subject:From:Date:From;
	b=Z76LGeVBoVv5P1vdlJ1wIog6pLufgWMaywChMEPC13Fgcz91vdkSlyOazugPQxOk4
	 XUE5u1QmMe7xZkGRqiehxcl5CaTcGFBVdZ+RALPEyV827tMXYxQaO1eBHRrlPe0f+o
	 tyhfM2CxgurwfE0dvkRJRfIKMuj6ZgVcjhGBHpXjF1WOYrcR0+6LscZCRSfZifwHjQ
	 m2mkPjki39rFNjSaQtJe6jNuihYRivKOl4YzxVYZLyIgxAlaflGQd09I3pURESDgMd
	 fZJJZXvD14KXsubnqNO+RWB4CfBerYA8jLJT2K7viRQ4gUT4ZfhJ2OjZvUNb9G4Ecg
	 3puafeNvv9PbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A1CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071559358.20972.7905960344013264266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61cad427893ebbf4839e5e797a16c9b3ee8f1dd57279ec08c81fa00aba156f2
Date: Fri, 17 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760715593
