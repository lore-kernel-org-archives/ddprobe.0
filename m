Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205A72820D5
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747765194; cv=none; b=sK+smgZsNYUl6jmE1F7l2IekgyFcIAXCEiYgDLyyzO8Nla9hxZYT3o/4b69wZ9XQE8xNJx89i1tuws/z/1cMEOLR169FZikFKPaYocqVn3rQBjY8bXc3DaAGkadu3jGtLtivLMffCbl9vt4oBb5IX4wc64mm9JiCQ3vFSeH7czA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747765194; c=relaxed/simple;
	bh=MA1GNgwH7gqVNT8IS9w3LY4Nte9lb/Vdq4IyCcNrJxk=;
	h=To:Subject:From:Message-Id:Date; b=C9kMwx8JEyhbm1nbAkSOrxivnS6UiPKzxtOprqli4YFaH0FUVO9zd/FsdNi+rUg/e3wdaQWQxoDJB12/rA5k5SkF6V7HoRFzEjyWWX5Y6YNQX6KanY4wV9DgWQ3zsyLRK1znO3J/7jpsZtmwk5qzgQTQP8TT9DHagjBkt9m+Ix0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSiNfzSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSiNfzSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AAAC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747765193;
	bh=MA1GNgwH7gqVNT8IS9w3LY4Nte9lb/Vdq4IyCcNrJxk=;
	h=To:Subject:From:Date:From;
	b=bSiNfzSusPuGHivnZsLJ3vxo22oJn1vFx0LJcQt98lPSyqKrtHXOG48hQnVsc7/jX
	 HqWu8TDAkZo8BmX6wLLOXpqiL4J4g6Urq7he2Qt/URVCQQ4d3c6syUJ+7Eixc/SWgo
	 hugPZPCFLLt1qVU2ZPZoLuOErff9ivQxG7+dw4dk/iNfs7Nt10tVXbz5f6bCe0V6du
	 rFvFeBCrFJz4dOYrWDYQYSmK8ivlgpV+qF67H+hYcDxhHui8odL+O/f+RLi6HYeHR5
	 iP9a1aV9QzOLksOz0HvtKStPmi7hXF5v540uLq5RxTevMtFSsVJPChL6mjCjanqyla
	 OAlMjyGcWFX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB4C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776519357.29978.3808314711095132802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e439e724cbb27b90dab4f07872214606706419ba4f3d55b57ecc15f5be18ea
Date: Tue, 20 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747765193
