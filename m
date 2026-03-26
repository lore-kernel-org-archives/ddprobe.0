Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8721EEA31
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774498494; cv=none; b=m3LAlMJ9CfBx/3eCKoc8mUII989hwIqBdPC6vt8YZywpcZ+eXoXLlTodab7DWVcktAJiwGo8MN2+0WpP7LSaFtHOefoCu88s/GVRtHn2dfV40f0Df5Rp3iUlIlKz7PPADNfXvU3MTWct+lUHQHixZEv+XTJXaBvdbLSeBPj9UPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774498494; c=relaxed/simple;
	bh=TBEqY7Mo3Dk8+3nwXg1lupxU/SQIXy5uTY0eRPSVdoo=;
	h=To:Subject:From:Message-Id:Date; b=mauBRmO8qZjZjt9WFL4KXjzUyFyhwIP1ptF4ZaS3G1BF279ahl/jzdSEBfLiPSiZfsR5qFapMNkm0MncTpqfau4IyepaargrzJDTzV/0VD2uCEqszJf3tFnfcAw7GaQa86yKLgtqvHtuPIhQEyisaBRx31bN/xyEcdaNFLUgUFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kg7/fFY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kg7/fFY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B54C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774498493;
	bh=TBEqY7Mo3Dk8+3nwXg1lupxU/SQIXy5uTY0eRPSVdoo=;
	h=To:Subject:From:Date:From;
	b=kg7/fFY8VbtRk3Dndt2Ne621ZjWG8zIqVVcejJk1nq42KNyzu+mgPxZlZQSfOiCUB
	 EmtadYUz1S/ThFJK2JgddPJ22E7bA/jJgzUf1V9OwMZXwGVH2F8JOtZKR0BmQvQQpR
	 UrpUbTjeNsLeE1gxAfmBTMzIrQtKdVSqTSwbAZaTjgej7/qbsDWz72/+F7pPVKoojD
	 cvokpMgUB1pzV66Wmd0kA6BjesDF1XcdEwRTz3QaMvMlyxfhuo3nPiAl2ytLfxf7FG
	 qDCabVFnwLQ6fGTRlnTOwlQw+uZmVrDDC30bPpPyskdXHoPf8XMxs8Uw3Pa0ga5X+9
	 AvF/Kz0v0Z1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BE109E543
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449849358.16258.1767101715692909405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd619d36ee53cc68e624998b780e0b27b974a42f2659c2446546f441650a2333
Date: Thu, 26 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774498493
