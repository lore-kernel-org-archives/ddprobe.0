Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF0531CA5A
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758616194; cv=none; b=R+3waG3hTJMjRN8ZEPqQ1+ckYVg0TgZA5EbZfbSTOt30sytQPUKcTtCgw752+7OWnZmXlnUUZaI6uPYnglp2I4JScoOmcx0B3CZp2Tb7Bf/VSiMykKoBELeRs49VGzd7BbrD3FuzrFY3k3oLIx6QGTkF+UnLrFUe6BFwib8WuUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758616194; c=relaxed/simple;
	bh=XhSEWO9FhZNJbdLrPsSgz2rfRQ5vWSg2iKPQRqWg4qU=;
	h=To:Subject:From:Message-Id:Date; b=UpEdtVqOj9WaiE5SGt0AjLDs0LuqZtnWwiAKSZc1felbsyCj1iYU29Uon0HDODSaiBRrLYe8Ije1hs6mCedUK1yIHa1iXgFnp7B53fMYNvMxMTusfBXevuxUe/KdMXNceV96Zi67ruKVSkpUIagCBROdVjv1EpgLGuDZFsSBrVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkV7miAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkV7miAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0851C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758616193;
	bh=XhSEWO9FhZNJbdLrPsSgz2rfRQ5vWSg2iKPQRqWg4qU=;
	h=To:Subject:From:Date:From;
	b=mkV7miAmym+pbBuuZJjdU5/+NWPZKSQ720M8x7VD12wheuN1GVm54I8YjT0xCIv8P
	 gXNtF5bIASHCTrVAza3qg69i/XD6qq/spQktFJ8bBPY5J1CwyLYcUncsrAHE+IUqrf
	 CrZmh1a/2BHQEYwOqa2V15TKC3AvFodezGq7NzoXSH301IDHJ/fCOURvkYW1DLZVoV
	 0tpk9YqnhmJiuWparNvHMKLoer+1Q5eIWvT/KQAbrgN5bLtqkwEc7PIOXklT3Jys3p
	 lwNjynVB13IE8BnC4kFjPAPkk6QXT7dyqjSNeSuG+zstLhukY+zC7ZqCDF+J3QGyWt
	 pAbb4ueZ1MOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B0ACAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861619358.28339.11474946306138022744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3539c4c19ade8853b29f72b4976865bbb8bed44049ff2a30171f55b841fb812
Date: Tue, 23 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758616193
