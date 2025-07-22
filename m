Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ADA28A1D5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753185594; cv=none; b=hBjuRZ7A7LkQjXD1G4mcWIhZwiGql20hHlc6gTuWD5Kg1T0jJ8rxBDvTcct9bDLOFczCtzA/rLwdyCU0lI4RiOYY1LS4RMi+6hDU/P4wjJ8RN8Fk4Bh3jyHBnLkBA76x1QZLllVEQfcr8dngXC0eaBpMLqrkTXiJTBmvO/YzVwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753185594; c=relaxed/simple;
	bh=ZoIcHImQiRkKAqKhPjQfURoPTWQHgxK9U9FwC1TWXqY=;
	h=To:Subject:From:Message-Id:Date; b=TwqFvHyPZAZK2mSZ/R8Acm4AJgU5MD4QqDU1tqZolE4k5zkRVrMX1u/f6VgF+tHH3e0OfzMrSIEzbEMdb3+lLJw3YehAe4dAolt+dCad7x5jgs9uy6hh5XbHQrHfRC5773iGvHY6XePcNLXvZQBuz3f5rcT9iBPwCTFAw041jLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9HECsJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9HECsJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8EBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753185593;
	bh=ZoIcHImQiRkKAqKhPjQfURoPTWQHgxK9U9FwC1TWXqY=;
	h=To:Subject:From:Date:From;
	b=c9HECsJvbgFl2WubHSvPd4P4YkEjd6xBchb6WGZYY1Fh4tDjZCZUcpkYz5P33nOT0
	 0ZNOENtomkcE2HwL6/sKb4W2ypAxlOsRzPFDMc0CjeikHwMTNXlw127LvzYLO0BpFn
	 aZKPVyQfi94jAJjbFCAWu3F5srE8zl4PSVtwB5onnDvtG7DubePaZw4Hx6ENlmatP4
	 n9Tdx6i1VJ/wglIqNr9af3fe+YeYOoxsc4+El9h1v0zc4ej1WhH6fZT9FGlv/wEd2i
	 9ivvlMtLxK6c3GvHghC3XgBs9TfdTo6wAM2iMHAeIFoy/rDIQncb6dCRE5c4M0N+DT
	 Al95k1ThPCoXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA99C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318559358.28726.10191196801356783928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63799365b779a5c5c9a6982b591d1f35d470b4088bb4a487079dcb98b817a043
Date: Tue, 22 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753185593
