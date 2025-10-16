Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E3A2D12F5
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760609394; cv=none; b=dYx3ezjCtnjl2NXow//QeyKbhyvOkYmlh4glah8WY4amGwdfcpAoQ8JBf2PR8Feg14BFG24GtoBO8XAXm0yR+VatWDQCy5gIBIbYJL6y2GnVPeQh8YE8A/FwJ+rvX1RiWcj8oTp4bhdLPEsdEqSEl9tqriNRjvdorU0SphcsvPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760609394; c=relaxed/simple;
	bh=4ribZNzevGCFbiPlxOEM97lQvHzb42/3TQufUMEGgfs=;
	h=To:Subject:From:Message-Id:Date; b=TO4woA/VOH4piDFOgW4Vx9ERhTqGHRDP1HwjaYkskqmOj5OxNpGuxmD0jzVthBGIN0FwV34ggeInx763OqmMHCd97CwSI93hohOrn7qqUhBd6O/sVNNmWVEvrjE1k16p9e366GoLpJ9EQbVkY9P2ckbhaQJuUkVNcFavx0Z1oNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8Fcw9Zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8Fcw9Zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33BFC4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760609393;
	bh=4ribZNzevGCFbiPlxOEM97lQvHzb42/3TQufUMEGgfs=;
	h=To:Subject:From:Date:From;
	b=W8Fcw9ZdR27rrkegrXjHpFoTif/IZ+D0RhrElbIR9P+gabKqQ/tL5AHU4YR3ZgLDs
	 LOqbgaVGC72/ssl8z0uI1TdbdRWH2r267x08UbzDNEGALVU04jJVg7xkGyqh6Rmu7Y
	 6i+6RVlh1fmkYrD0gBA5QtBgKkTe9PtIDLW+g8qCsoOY94Vm32IKLalYTJNHn1PBSo
	 pc3Cym6yXO62cWx/bQF0bpR/nedegxMeDKRDjDhp+RoDq4sYoxA3aK8n0foKlEqiyu
	 6sIgJeNejGnU3U2zbQzTpe8Q252dXHgvYDmBE7p0pc6MUN3sama9W9rDupRcp5stOz
	 I/zJBYiZhKQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094ACCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060939358.8236.9599369519958413096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52212375c6a7c5c683b915d1bc0d4f33535e295a6dd4b2feec4b1749b48f89e0
Date: Thu, 16 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760609393
