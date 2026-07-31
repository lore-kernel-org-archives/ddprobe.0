Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A8035AC01
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785507034; cv=none; b=QJcR3FSc0QflwF79zoABps/BswotOlAy9AXzDxWI5ADtX0yZrxS4VtJ75PkKWJ+Kj/PesvauNz5q7CyAXxQXhVHgow/ihOluxWoWraQ0wzVTbj3SBk6pKlHsnE7tqoOpqEJXoSBjmkLf+0suhe943EF6tNjAVg3jZ8n4kU2w7HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785507034; c=relaxed/simple;
	bh=zCsPeRQv2yC0GS7xre8tBhhCxMnMhh+NMnMbi/oxsdw=;
	h=To:Subject:From:Message-Id:Date; b=QPwJcDGB6LIbrGNlzUqHDQ4SgdLVlO805WypjnQXgwQOZiPHpAU/s3hqOoSSUlxgCjmEy9JCrfaxFZq8GPhALwODhnuZDauLuTkt5BdRFBm0dGuQhA44PFN0eRGb6LD18P2ZrMuYHDgK1fCIAfn0sE50cHlcACGwaijHIzaUGi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUivw21w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUivw21w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1E4C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785507033;
	bh=zCsPeRQv2yC0GS7xre8tBhhCxMnMhh+NMnMbi/oxsdw=;
	h=To:Subject:From:Date:From;
	b=NUivw21w/R9Gc+tYK4jpO5Wjsw9ul4daK8UYCRPs7JDPGlYoaH7AxEpgK6mPSYBcp
	 IBRycOn47bAP3CZR1fUo/Ht05AEzUMuQH5FyN2eEdIZI5Pylj2jbxVDnQ0HL02+ZAj
	 AVO1r8h9gWJVNXRXsYc8W5MlZzvOWwPrxgGMlHJLjV6DkMzCNBCd8Zm0bEb+2jtrdp
	 2qChsyOuyVvsYKEBn9AmazZqYnERwsGHax2RtICYfbkJfh7rDKAAz1HNeL3WG6Go1E
	 /tkPdzxmp5bp8SKen+OjPUMQbJuJHcyI1odZeN2ItbVt29oHrL6NPIRaKQ+VAJNQDJ
	 Awc6g1KjJGItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D4AC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550703368.4614.8856506301386072376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6b36d063643451097dc61d2e6d7e47ad85da6142ce1b6151c9bc0f1ae5640e
Date: Fri, 31 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785507033
