Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC05FBEF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 21:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719263003; cv=none; b=QNvCa8sBup3wOsT2rIL/glYWqsVxshcbPJdScGTKBO/0AuiGilgc2EhsrOffRZ9nEEc7oKiD6aWtpfqVQSrNlN+2W+s9PKoHzUrn8N40D4V9WvPofcECxLwR5aCDX5b3PetX4M3cWPYwHbrkppkSLOLLUe7bQcGIVlUplSuEU00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719263003; c=relaxed/simple;
	bh=OSDwSA73XTnVox0R30GWDV7gTLsWJzgTooNgoAq4Paw=;
	h=To:Subject:From:Message-Id:Date; b=f/bUhXHu9foo119JCYc2xEs3l4UTDCRjtiyMlhTgtM/8eC2rEhu7eMQXTsGzIo8ykJXw1/pjr3BJJAev1cn4NHY3SAbp4DF0QyYkTp0dkuYBnx3oglpJHlGTiC3aT7uJyUePvD1IlTodOR1yksjxFuma5HyWk7PYDLjQc5VGZDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojjc9lSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojjc9lSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EAAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 21:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719263002;
	bh=OSDwSA73XTnVox0R30GWDV7gTLsWJzgTooNgoAq4Paw=;
	h=To:Subject:From:Date:From;
	b=ojjc9lSHc0u0gT5lkXBRnONIHB2RVWe+Yz8Tkmy5da13j7HhUS5eviBxYDI3TOSA8
	 36di4bTs4UwnAm+Mr8tJ/ykXke29IU9hU5BvTtMiB0KHmU4ftDCudj17t9qpuH/2za
	 h6ITwzJUbXeLAvQPmw//7Ous8O8ip8KFAyrSBEm9IT7AKOm8QS64XpeDKJZNq4JX0J
	 o5SBhGK86y1lyRA2tei6BpxeQNWIfYRQiJkgf/d0Q6x2ouZPgL0QWq9T4mr1jx/3pN
	 3H7I3jHR3EmpE4Cz+0KnQIGyfTK9V5YOLvwbL1uxR9VT2fIETo/1PpPxorq5Yd6Ou7
	 CXIq3VILXHa6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA2AC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 21:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926300276.19663.4673362925102868513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6b92eff73bc20be9876415a23759a93cfa2d2dc5c3371de2385bdba029b3d9
Date: Mon, 24 Jun 2024 21:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719263002
