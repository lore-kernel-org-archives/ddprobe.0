Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8258147011F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785523234; cv=none; b=RjMQ2VndLWzJoz7shpQ+k/KlLsV5GmiOotZG32HqPudATLHwvwFEMT9pYwrzGH9RoT98cMRwEE6hnKLh9jDLVme/7plIdtVu+Bi/EybuwZm1SXljO0fKLWHK1vTv8Jkx1/7k3u7imDiX9MZgXVTaIGeLpXFs2KgQPA31kMmPmuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785523234; c=relaxed/simple;
	bh=smDI5L6y5OtwOFvcQ/YSRNbQS1N9BbefbWsEs9EC8cw=;
	h=To:Subject:From:Message-Id:Date; b=rR2iMzIxqjOJC3D0o3WtLm2GFiccnCamPceuU/RDEngg3Hx5K7ln55lr6yeqOfFceDqq1Ct2ujRcfWH0AnbvQbZimlcE5+pnFJc7Tv4PN9Rp4e3GcqNbTJR+8ffB+GtyP0U7fucLTdHFhs0l8NtOjQVLypIomQNynroLjV0vt1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLwUx0dH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLwUx0dH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D262FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785523233;
	bh=smDI5L6y5OtwOFvcQ/YSRNbQS1N9BbefbWsEs9EC8cw=;
	h=To:Subject:From:Date:From;
	b=oLwUx0dHqfcbtg/A41q0VqbtcrJ9sI8m6Qyj3Z7a21oJ2K2kLYJ03nalbhCEyuKmn
	 jOANgoxFqhCi2HVZVFtz0jHZwkI3SIzMS4dVWDxeGrzlq7m+Vvlq9sThbBtkEQBDuB
	 UAu9LS+FingR411WDju9BsNkk6u+f/VFwOR8PkME0kdHCQpJ3RJBO/UuaN39oba8Wv
	 GfVcrO2R3PvIoCtWA31ZPIAC3Ms3J9g+vcWTZdGSlWrKNLidUeUdVzn2bE+qnZlMMc
	 EOcRKjWplud5P0UrWyXrX+2wNtwEG1bR2TdS7MxEOwwgY0DFm+UwJbMzKR5Ofx8pDr
	 LBDnYgGp9VIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE19CC55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552323370.10014.2168596203626494120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45160f28236c920c0f52d2049c2e7e88e2560d6d7253f61697746d3411284686
Date: Fri, 31 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785523233
