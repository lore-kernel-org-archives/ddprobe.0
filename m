Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B6F3A8730
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775827654; cv=none; b=f7Y5cOG5YCvWE8jpBRDNQhaNDIgH/SzliYZbqJFonXQZAZ19PFAy1CZssG0aDpuUW8qKjoKB2u6E/QS4/1ZbPfCd5+hzSoCgfZ+bddqx5Ikj0VARLmEz/ASlWcDaFPia7OJuS2WTX+zei9/GRP6xi7NfivnfaihnuTDXfjXSFkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775827654; c=relaxed/simple;
	bh=5niXo+okw3UUKacdkgvQ80P3LYxnMuEd5u2SfYHVua4=;
	h=To:Subject:From:Message-Id:Date; b=XQi7D9mgSej4P9lnRG6hWNJS4NLE+ebkZDLxZDHtBlCrYirUJjR3v9/b8fbAJcCxbh4EISAwoC9xWG4HwV2bY6aNBZgUcu5aNsST3nSZy+vnmxmxdU7MmTIfHrhTDJOlWVC5Wx7NggOKW3EGIbafeOMD+kmHIp/vsjFuzdi8/gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlHCM9Nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlHCM9Nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8265C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775827653;
	bh=5niXo+okw3UUKacdkgvQ80P3LYxnMuEd5u2SfYHVua4=;
	h=To:Subject:From:Date:From;
	b=UlHCM9NtKvTq27hP7AvYiEX/4Q3cmLz7Aei+84NHZCAn9ZvB/STDg/2DpRXwRPOpM
	 3zFNcgORiJqNvygmG3Ra8uq9uKGSHrFKRcadsq89ilBvsZ1mAl2qxQdY6HqgUA7KoF
	 Qe+yDMbX7bppd1xvzVAFYxzZt0URtOHRgNi4nbzJ7oxEpw8xMie/v4ou2MT0TDtrUp
	 wFzTeY4b4sjb2xdT1mXsq8n/yJwescGthW4uApCDWFUr4bcwPf4G8fwE1sKsd+eeOm
	 3I+e1+vJaqCXjGzT7mVtiZPqk+5BTLw/qAHPDPmbSWG++Ik+v3jQ5K6ulq1pZRTd9i
	 E7trMuDVRcauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB3F4485A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582765368.25592.16192643838618514729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f3fdbc5a913e7056bbfb83219d56657d455a7161f552977bd33e5d75c7fc9e
Date: Fri, 10 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775827653
