Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AF535C19B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782968314; cv=none; b=B2SP0sKvLSrj6EJXlWxMkQcKjK89W3PYumVHbn3tIRkxojp6nknyAzNr7mRAdab3B/4AgC28Sk68MHcdSxYlUBQAjV8okm40QPxPwprPPT6+sofkkSNKcB21GeXOw0fkL7Tfr6tdT1umXTmH3EONPDJTTPFs1hebzLff59PVkyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782968314; c=relaxed/simple;
	bh=F0iUyPRTjz9BzQUY5hyetvIsOJ/bA5WMKcXGnVkhFmY=;
	h=To:Subject:From:Message-Id:Date; b=GyVoIZP+538u4gUiNqoIKqaYxJpNsIvaPavJp66TIaTEJBatbEO4zmy3g8cNa37jj7HtNzXdTYy0OZKPIB+ak5LcrJEEvCaEb0nNjOglnOmRrLoP1D3D8TmIr3r0w7esXZOBF8V5xmSodXxmzMgFl1naJhLL9XChCmMta6UH73Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BH1yGgtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH1yGgtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC85FC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782968313;
	bh=F0iUyPRTjz9BzQUY5hyetvIsOJ/bA5WMKcXGnVkhFmY=;
	h=To:Subject:From:Date:From;
	b=BH1yGgtpfc7u+olg1FkrHN5O3i7AyGCKBjUpd927Z9SoZCGuHbBSK6Jk/Zs6IXFZi
	 msp9LEArhDivGaIPrBERvSqgHubdUxygWD/oY0EVGKQvMQixc39SrTIgm0wQbRv8CO
	 wzYPDdzn9EAA4HTD71qK2fgPYbe6+ZCsBgfQiApL1UJE/25GU5GNiAt3Ch9BTDBjP1
	 CxvtOj8znWFCJp5QBUfjsMH4K/iJNcffpEJuOFbJKbLXTzklgs074D8rpfhtI6WGPJ
	 Ff5AbbHt1XJeSkA+afRE8FAyu3dInNjBpj9yN1EB0oebpP64QvuF5KVRxScSgFZJ4F
	 7HuH4THC8Pg3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9752C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296831368.32462.2686804434441808597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1202d26dffcea51c5deb0ab58b3f02faf53a1439ddc7c1b29f447480c800ac
Date: Thu, 02 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782968313
