Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319D01C84A1
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760782794; cv=none; b=i7GVLSaIcugSpxsvdnszYUnZaKfOz0EGddey8vTb0U76sLgUB//i7cR2cwvJdWRyRB0WrpRhAlgGtT/Gvz4bTkc/m90c0CVukjDrMVrrb1QZkkPz5vnEQILI/HG48YucC2GuGzYop7C1Iamh1GIRF910ZgI6r11JHK8xNl7FW9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760782794; c=relaxed/simple;
	bh=FoYYZXlybh9I4ORfa19I+ytG29coMSK7+hCYiKY5O04=;
	h=To:Subject:From:Message-Id:Date; b=snQ6h2GKuDQonD0dDQl0v0kR8yMeBH+truRcju/mvfVFVxJYNgIN2a5T9SxR8XeJilN8+gZFn25zNdVmetYQzzMTM2nGXpOMHcEm1SPi5Ciph8lqZUSWbNrTs/O+oXprwDIM6qHOyh9q1kHp70vaX+/NKBxH7RRe/tq+Bq5POEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyhfvbP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyhfvbP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D676C4CEFE
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760782793;
	bh=FoYYZXlybh9I4ORfa19I+ytG29coMSK7+hCYiKY5O04=;
	h=To:Subject:From:Date:From;
	b=YyhfvbP/C8ggnIQqPxkt/XBCIYZoma5Mm3WZ3eOrum8kdMCOjv101abaPO87PrvD6
	 crjYpATRNdd6mJRwtatQHC2G8X2hdfTcX8Bx7l/t4VzD2cOCoJQYFKBZ5OYF1xMOe1
	 415AFfak8zaukJufaIn4gTGV75+KjijQCCxMKvAf/2aHmNWjNEq1aDFTPPAtAuwkTX
	 o3o31Up5l+79iXMa0hQ6jJm397WwfSv2MYeWhzUimISUIQRjSgIOcYqFk791vcjDu/
	 WaynAuzf9ce1PHSnKR9uXPhMvOzt7zWtxqgnljCl3uhfchpQr7Trlg1R23i9kbue6O
	 QPvKSugKUCJrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52BCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078279357.32462.17148493776696916547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7518aa436a93f633482581c7851ec7a8856f179f49c751379de2569d9ee4791b
Date: Sat, 18 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760782793
