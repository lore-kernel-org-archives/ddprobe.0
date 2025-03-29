Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5881A3150
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743265194; cv=none; b=XBrfhxHy22oef3ofVdKDh853O1U2IeXfP+iiLW6eMdXQnKhaH0Ss1ZvCvrkwNhw3M2lbN0x9k4hU0uZHW1qmNkgG4ykHGPjlmIPq2R7gdus/k/H78uEWl9NRpUFs7YBy7rLfqV1EG0VD2u4h7PuVlXA7/VNWQVIYYWtbylUtsc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743265194; c=relaxed/simple;
	bh=R1UsohYEOUG3JPacXam46ZghT3/L8DzfQyyGFXMFDlQ=;
	h=To:Subject:From:Message-Id:Date; b=FciH3JSQCXoQ4apEhlJ8+X8VPUkVy0uuqLWGsNTfrAhHtsgck8anyOrTvwoRmfL729E9CdbibDgfXGyeuhmN2Tn2E89kT/mb4NJxDmRDsYUtsTGMtE5jh03SrfavkJ3J+VfWL3TAhVlWCvwYDRBpa45LNaMfASYU+QYaY1URNCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmVeFbZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmVeFbZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1120C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743265193;
	bh=R1UsohYEOUG3JPacXam46ZghT3/L8DzfQyyGFXMFDlQ=;
	h=To:Subject:From:Date:From;
	b=NmVeFbZI0Yis2PhlEeTZySzWgkCJhfaVxszvm5MIDlbVZPGAgfe++Mc0pKpuZxFWP
	 Y/2TzRVX2x7YAYhQ3xM1y4uNUaIFNH1KFHHIs7GS9a2f9fxpW401RZdi4cNsQGdvyi
	 EifwA0qSdJFuR1J3ztDPHYeWUlnN0wPDD2ZGaxTYTlLxtBFrA8/aP4B4qqj3uohMdd
	 c1/edPoHhiTMhecmkGhjNQ85qM0RysND87znO2JkJ1D2EhGGuOyfRFmtXrynnnEH8h
	 pTVgGUWdyQchdY9yAm5VP1fqK7NRmkAD6o53KvuawfRZ7g73j/3DLS1Q3EAGNY4ERO
	 Qk9IzaKpA4AhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B14CC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326519359.24096.13440813441511833831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378221cb2750edb84b5f1827430ffa80e4cad51a8b9915e11ad3823bbe44890f
Date: Sat, 29 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743265193
