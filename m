Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1731DEFE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760257194; cv=none; b=iiIJ1rJc38UxiJbX5CzqWz1vrX8z05z+V2zHnh6KDTf7Yfb55c1gu2EunBXca/dprILxa1RrcOjyGi/8gCTE1PKY7jC8+mWuCPU7PyUV6wqecvHtSYF6epngxlyQCNa6vo2qTUuEx8CJVmi6Ufp2TsPD8B+CAVkGJ4sQMVMRT5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760257194; c=relaxed/simple;
	bh=sfXnPCPAJsoNAlR0IlpYbQqk7ZC+fpZC5RezEmL9P7Y=;
	h=To:Subject:From:Message-Id:Date; b=GIoJ0tcVr6OwfjNV50QG9egCLzAol8rhV4fg6vElkzMNgLpHVG6NyggllOLhqXcjuY2yGIH7e3g2B9Tb99LzdZVBzutoE1cnKuketXeeRwulPAuBWIX6dwl8ukKt+bxTzQ6D9JOJq+bNtX1xAMHWCC0MAyxw3JIxN1NHRJBTlgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mc0n8lSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mc0n8lSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9423C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760257193;
	bh=sfXnPCPAJsoNAlR0IlpYbQqk7ZC+fpZC5RezEmL9P7Y=;
	h=To:Subject:From:Date:From;
	b=mc0n8lSEw08iMZYqkn5ybiIgAIdQo7TYseHwhqNT+lilSbDeYOrAVRWx+z42p5ELm
	 xxDAm34ufZL7rbUYm1ttG7XQ/QHXVm3Uf9kFHZIDwapHv7sYW96EJMYJGInJtaueWe
	 WHIoUeqdMK8suRwGjD2MALUELyIYVrt6GjjyXN7drBKsNRRW2SINj+nAE70TYWqHtT
	 GXtzx1/XnmavkJKbO2mfhjfaSP6cxIayzs0xjtB2BGECtTuvixabJpdxawTpbEwB50
	 fw7kVGhMGIqBZUTQCppF/4q3fKziveg0vsDPKik/pbIKndzx7pZZgOtNmn1vu/TLWB
	 kWqlP7RDx9cyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C7CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025719357.1572.11042128796602448259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92504637df4bbbfe55658a560a87d8dcc52cb53e1f1de86561ddc91ba6294707
Date: Sun, 12 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760257193
