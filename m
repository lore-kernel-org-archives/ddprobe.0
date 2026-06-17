Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37593364EBF
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781685394; cv=none; b=MN+JIpUEpjvimwi5kL98X4PQBuRIHCIYK2AnqzYQFKHzDLDESr3FmwS5P/wRfhKsW5DF2t+IQ6uFLLQJE6lppurC3oum5WAa+hf2h9a47K5PBiiK7eL/bfOXHGP0WaGaUhbtuoMwcZm0nU994GM9HBrViQFKmbw84buqytKNsZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781685394; c=relaxed/simple;
	bh=OJWV1laDhb5NYXSdeY0LyO+cHDpqaQSMGqJ3vp7187Q=;
	h=To:Subject:From:Message-Id:Date; b=B7+zCL3yGncgI8Ts/O3M07B6pFven5T21i+wDsVu18ozeVHVforN2GupkacciHteNV1j4basQg2iAK9xGrQEzQoU13WN/CWNJjdsx72J7AzjBnQ4qCdgGa16opdHy2Qa1x+xwiKy0heVHcYbZ+SrknWh7TOofgYwpeXIL8viLfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwUw785J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwUw785J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C456FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781685393;
	bh=OJWV1laDhb5NYXSdeY0LyO+cHDpqaQSMGqJ3vp7187Q=;
	h=To:Subject:From:Date:From;
	b=gwUw785J73UvqRlWOxbKAyTU+4z681KZXEUQtDLsd8TkWhuDtWSalnorGpdww6K7B
	 8kT35WUFFPPFogNmBecTLUmagamf6bH8fhFT77ECelDkDVCa28sGG/J7vGrmUvTo5y
	 ReqEEEDPgK4RO/r03BhNOLvtyX0RUFaI0Nw/ZOeGTlIs+w7t3xtR4NjI37k+GNTzo9
	 O4xfVZzkQZ6iUwoHRO9uQXz13OE4dv2Dk301Q75mK7T1xQXqRcY4G37F4QLbewwbgg
	 ifms5aUastVLck7zmpRQkl4SYitRp0/x2ln6XwE2vu0tkL/r0KxCp9wfFfv0pzB/1D
	 ITF7bLc9M7GDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB883CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168539369.4710.10501565890873287225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07206900e464d092570b97a870ec2f4939748da83f77a651c0feae73cfdfe170
Date: Wed, 17 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781685393
