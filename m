Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4261519E998
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743806394; cv=none; b=AlI+sWAJWo7TGjjjsXM0jR18ZXdqOH3hCaftbF0XZP5fCIqvxkeIehhWVG29pUAg4+tM7xQdLfN1WMCK4MHyMlrSvuQZz/kWG/lnGUoGJ/lApgcxB3dD67mg6RR1alrKqRUGcGbH8o2EmewNpSBUpH9JdUVGawPyY5+oGu+MobA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743806394; c=relaxed/simple;
	bh=EZkOK2BhchP4v06HAr04KBbhuxfhhFgkwM2okRFuayI=;
	h=To:Subject:From:Message-Id:Date; b=FU35038Pov5MRDoPJ1bb7xo+hcvdNfVeDuf772a/OjP7koFv/eP+knfHjpKVbss1KBOWc3ptp8Wa1KOXlP6F0FoacNbORyLOoxwtD3/NA7vXnSPKqqojsY9gCd7XMk1bVDKGxX7NNkwGPvLrsIoQnofEfkyfqATL4ogRh8FHDYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbkiICQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbkiICQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C60C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743806393;
	bh=EZkOK2BhchP4v06HAr04KBbhuxfhhFgkwM2okRFuayI=;
	h=To:Subject:From:Date:From;
	b=XbkiICQLh5Vo8OYmthE9PsYB3dMdtYf6kGB0I4L9xndi9ZsA8gBEHfIsGN/6Rjeuu
	 eaRbfjuSLioR7VQqg06lZf5a0Lh1VO7R+BrH0yFh7wUExdBKREhE6LS6xb6V+M5oz6
	 BVdUOEmmcVaa6QmIH+rtUo3tz89CiUKjYj2O/dHnxQWl9rOKnPWPtWsEjybgrHpsRu
	 ZMWikv65h/rRdtjTV82KQ9qc2482hXGowHq/bT4pfinyBYXcOi7v65K8SapE+B5VgC
	 Q4GhS/B4mNa8uyciUJ4EsMleCRfywN8rJBu0YBu2Tu/NLmCSn+nHI3kJ1kGNJ1LjAF
	 P5QeOE4cWDYuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95020C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380639360.11854.614064971296697636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4846f05eaae01161802be1f54fc55dab23e6058323d9508c2ba62a03e2a4dd60
Date: Fri, 04 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743806393
