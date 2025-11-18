Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7520D1FE44A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763470314; cv=none; b=bAQGyFhsKESSfLwyYKr/l2RzF2Ta3fK5L5mv3i7JyZy7d5FkojGSdYiToMynh4K7h0tqg9rORIuptmU44e0/11A4XeA+JvV/zUKi+YWFMX+hXvLnvp02+j+90BOsk/EIK+f4GTaM01P6AGKS8LABSCe3rUPeQOz0r1uhmXQsftQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763470314; c=relaxed/simple;
	bh=OKLJL8lGZASMDJ5zzUo32T7OqvaK4ybS4gisy4Bn8r0=;
	h=To:Subject:From:Message-Id:Date; b=rnfFRzXaUEFPet+SpdVqsOR6WHcC3Q2Mipk6TipCkQf//f6afvEUH1eK6SKU6U7hMCvL89mJDx8nPeduArR8Y8H9MdArDsxPqKLKIQ+RGJZDNPfCV8vkYl/dS5xHF2Gt/HzBPCrfFYi9hfgiTWfrUHw4Zn6mLnF/l70eko2pOo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4VHfv7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4VHfv7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F95C116B1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763470314;
	bh=OKLJL8lGZASMDJ5zzUo32T7OqvaK4ybS4gisy4Bn8r0=;
	h=To:Subject:From:Date:From;
	b=r4VHfv7F6YGk0I3ZSofxMKPaoGQqcte56AxrrS2/SulDrT9YeJSX9aKc/r5lhFmoW
	 4VhOZEmt42JD9PkdxJ3Nj7xseLcjpYPqnL11XTszFHAc+WDCuY/ZHvXlK+n9/6yrg/
	 L5XRPW7SUdnzWAKcdWxVXyIQ4dPeR0r8vPepzoeVg29TzGGXt0S0cECJEZxhEbc/gc
	 9K48fk7+BbP8uqMz7dFTVPDVOKgUy1CwID3Fou9+obpbE3p5MLfT8987bFbqfZxSuj
	 wcGDOn3dLqTPdwJO5ELRWw6SGiz8q6e3U6+gNmPGvImY+UgmBEIQrXl1ESPq9LMqVe
	 1Pg7vb8SY8frg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DCACED63B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347031359.10736.7656807868928752352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c2c068b4297e0438ec6ca038eaab373cc37f25cf205ac09b6f3543802b3bec
Date: Tue, 18 Nov 2025 12:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763470313
