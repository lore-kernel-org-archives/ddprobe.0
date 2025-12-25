Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2109B205E25
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766681034; cv=none; b=Tw73VNgUIxsBDvZnnQ5ApjKbjRmL3ah/nob1mRR+ZgL0s0elmpz05fRKkFRgVnD75rBT3hk+SoFhw7VMAW428X/+DPxHuG4+u85kotBGV+pYFxSKeloOxCPAFusUm3hlMThpKOOyqw3krsjGwd2Bua3PIU3WhvIA+QsnxPc8EVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766681034; c=relaxed/simple;
	bh=mdBfJutYv85qJE1gI94qOVByRf/EWKfq4LJB4p7slE0=;
	h=To:Subject:From:Message-Id:Date; b=r//w6BlSG/03W3bEl4ZweJHKISQ9NSVNF/TzYwBbLX7nLxgLWOb7m53Z/vHEDyhVxOLTPitolLcGJyHAGEag2Q/FEo2sALFAHA2L4FAxVUHvowrt/QaZ5D5GdEyps0SvXXrnKfECQH+4cVylNp6VIuPVQT6zJDFPY24FtpVS4I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST+pis9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST+pis9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6199C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766681033;
	bh=mdBfJutYv85qJE1gI94qOVByRf/EWKfq4LJB4p7slE0=;
	h=To:Subject:From:Date:From;
	b=ST+pis9YcWgvG3tjJXstGw4RZ1MCaD63c8H25zTTmeSY+Mo39QOdWISMrA46Wskz4
	 WhFjQJ3+nVbWBqULDvVh9PNJSUV0Z5ZDva7uRYV4qHnBvyky/mzJO2oZfwMPTacvCz
	 fhVCNh9yuoqqLVg++JSNpJ/fCrDXVIsfVFRPr+QSR0b2wBr6D09HEaqEInewddcYvh
	 Cnc3EAdbAgcnaJDIHmPUEeBS6Orf0DDdiLBUdroNbJhSHnJpYLJjd3xVC9CF6YLANL
	 UZOW6EBeiJrBDwbGxjlFwRYPJDV1MpqzZqveneO3kB+a544uuZtY3hDQ2Syb8XvUEC
	 QwjmDTHuTekjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97930E7AD66
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668103358.29923.15224160509980698934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb40f3cca569b965d82d0ddf15841234c0be0321d8f1f33a622e57ac43e534e
Date: Thu, 25 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766681033
