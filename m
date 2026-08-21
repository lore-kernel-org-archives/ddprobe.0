Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378A0368D45
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787345434; cv=none; b=PpkyKa+XeLId1DIclyaywINl7+ZMweOt0H84nYBom/rw6V1myKqEBfZWvr2OYWqasVCvNPVqfY/HBwcPIY519pgOtf00MlIEETJRsdDcPkQL4Nj5duF6K3e2UHXzeagicz1gVLTl0xDHpLn54Ru8juRtYO6hgxXB1Tx9mc2GqC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787345434; c=relaxed/simple;
	bh=7THR6h7x+N2kbDQ7tZtqlLjQ61WVT/K8vyGkdvDmM0s=;
	h=To:Subject:From:Message-Id:Date; b=r7UBhV4eRvld/cVLrLej0LNuPJ9/v/0xoUhjzJn5LB/TliSwge9WsnrZ8/desnUXhjVAyJD//OOggVKprL8LU8uaN7KgCs2Mscx5QNzajdsSSQRra7Ax/kEldSWnxpFp/JEuMofWrIZ4VFLSKqvIMSGwlzOZcwV96rILnah91uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJri1K1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJri1K1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED99C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787345433;
	bh=7THR6h7x+N2kbDQ7tZtqlLjQ61WVT/K8vyGkdvDmM0s=;
	h=To:Subject:From:Date:From;
	b=gJri1K1Qkto0eecNJr+ID8emZ9p8xD4fkUKvhp+K7b7/NvQwajoWPrUK2XbG0jLQL
	 Z2+a+xkicJ9CcpvsotiQF9c+ST5DOu449S9wJFwAdjRnSNJWVOzvcpza1wd6XgGyxk
	 9g81mo1NAOLBDkM5SPjEmxLWwjHy2SQkU2eQtHdoJ9w3AQBgLZomQUqaHUJymUA1Kn
	 Y08eUU8vK3o+3I26pX2FmD0nIrh8d6+iGPEiWOg7k8nUUt9gicQ1NcIP+g65Gk4NmV
	 oSCHT+7bIZnUWX4HYTwq2Z1D/P9GNYqqpP++qpUycrhXAmQlX4n2jhlm81UZTweHwC
	 DfenB+BApvK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A33C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734543368.14170.6718802938883044726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cd592d018511b6d9bfb59aacc41a894383234c3584fac80f0d676f5bd4fff1
Date: Fri, 21 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787345433
