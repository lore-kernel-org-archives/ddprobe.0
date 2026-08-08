Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB12B640
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786202434; cv=none; b=Enfe1EH9sQdUsB/S98CKYoodelZgmk4mQp5NWYp3YBKb+/9OdasUtyITQ3YMQbwN3o5pBQwlMDWJAW25e4QIoqyffzgj7AOxYCbTi7KMNUDEO1MMugaSMJYOqPhJxBVw14qXyMFi0r6yBqNpsa+K5Qe1iUjJax4jzH5gKAGxMlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786202434; c=relaxed/simple;
	bh=QPLEXAx2EsPK2py+Au9MSXAarSRmF6kmOc8gZ5e1eR8=;
	h=To:Subject:From:Message-Id:Date; b=TOB/GGVoM4HR/pBKAcBUFDcByX66n3A1etVpzaKVA0DhlqVbHGNhXG7LtTiOnOVTdQuyDHv4bigei14/PskJPNoOi75mYoPqhmQiTOafcw7Y+4o9RkkePtTl4uMeympmPSv57EzcMzKf30gsA1WtYOTUAEmLB5VupEui8pa/enQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlCNhedm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlCNhedm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A62C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786202433;
	bh=QPLEXAx2EsPK2py+Au9MSXAarSRmF6kmOc8gZ5e1eR8=;
	h=To:Subject:From:Date:From;
	b=QlCNhedmVQAXIHP33AgS54juVxF8280kLWE6gAUNdpD5Exy2rCO04SbJ7pF/a+UwI
	 NhSqTKeEuSIwNBkkhLZDwtGDECkQ+Fk/2fHo3UNy40kP6HG6C0i56+i5tiAVwzyu9J
	 KaRd7Pbx5qWyosTIkpJlDlp2pN4Yxg4DJnBpjFe4GpMtMhPmbOS1BXzpg3PKCEBHf+
	 jPaPPM+B4P8v+vkVSYhjlN0fwLgrJnd3C/GDGyYZNtKQ9tf4xnWzphUr97tCri3kR1
	 Ue77/6tNfWPEcjnPqb0TUkkyCFz9jv5I3txfQ8A+/WjYgrGUOKYPkCN2wG+Z7x1QuS
	 CxVgnPBRihYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE6C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620243369.31347.4465011449857092204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe7834401c9719b6b2211ddf0046d96a178f3ed99bc45794b77838eb1b1145a
Date: Sat, 08 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786202433
