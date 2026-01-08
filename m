Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA82D212542
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767886434; cv=none; b=fbvnmZ+EwXk+/gbSEQjUnDXFRBXa3AYe2lTRMYqIkko/s3dvrIsd/+R9eVwFG88kuTMR25eovQG875AfwPrEVIFnpur/mn5u9fhZQjMBjn8CMyP20HSDHHYck+JJXG3Iq3JxDwWyOl04pawkcXNKxaJF60iVb/x/ywey7/k650U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767886434; c=relaxed/simple;
	bh=gbSpJRhGjO2YdG7lgDfTHznNOovIVm1lQVQVxaFY+ts=;
	h=To:Subject:From:Message-Id:Date; b=ln4R8ArmTVk4mhdrJlt8s4O9IaTxSzaZIV6N8IidG24hUPE3iMDftg0SBlhU8qOLIbg4b1b1gOZS5CP1bdMJXORjWt2kFRXoKYODIV8w0fmwGJQpio86ZSKXvMWAK1Dn9Y+N4RgodZQZgIE3wSZAyuBbi8UjGd9syhKg+AbxK4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWGaX/9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWGaX/9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD31C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767886433;
	bh=gbSpJRhGjO2YdG7lgDfTHznNOovIVm1lQVQVxaFY+ts=;
	h=To:Subject:From:Date:From;
	b=rWGaX/9X1CdQ9dqTyGfIHLtk91eydH+QY/SDMRSExc3rHf18++qONtOIVIPADKRLQ
	 8d8iUgsZo7agYHid6ZsXPnglJsguczFfNxH/9a7ZWhu0ba+UT+wQAyRFFVpU3WSvuZ
	 WFP6HvC2BHbuQAs5Yvljhfmeizdu1QffpQIJSGHBttXeu7f0PH4gGP4Iz2ZQTQvJBX
	 HDHrhsWMaEw0AIhTqcwZiUPmync/pcC7Es8RMxW0ltSKro5D93DyXY1ywEQgYmirMb
	 vm5YHo+K2dmZ4Iha20t0h9BG9110820FTFP6XIs6hOEIm4GM9WDGZYvlXN/1Ov2edy
	 CdojasAztCFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3B6D1D47C
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788643357.17936.13727465030947431829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d566a9afef6ed73d8dd367adfefa92a4239ff5fe535d0542853812f969ea7a8
Date: Thu, 08 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767886433
