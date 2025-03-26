Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C25F24F587
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743012594; cv=none; b=e+8u+GiITzjbHQ+g1M73oSfJ6gWDrFSBp2sLMTBMcJ59BLDpp+lQsH+rKzqkFr6QIYAorRW/Fv2ZaUVIDt2q2hZEuExUHDM3UBqPeVGpjDPWSZ22VnDVjK6vyDF/Nmw+2oJ7Jf4yIFi/cas/CS7GNnyWy5RWq/AjISSkkSRKPoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743012594; c=relaxed/simple;
	bh=jpeLH4z+UiQS7jydaoghgJrsynNkBXLDi9NeLzYjw/g=;
	h=To:Subject:From:Message-Id:Date; b=Vvau8PnWNkYUBTr29WD0zdlJUolq+H6PTOK4Z5g/fNCWyFwZYzL5PlBdL1Drh93bxnK8Ia03164lgudTtp2pD2XZ23Z0iLgMnUNKxV1D5gJgncRwujrsHbRRqfUa5jmZ1gIulLyaLgcYxlAqeBHfz0vSauM8PECnJJVpVVvvDkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyK0MU+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyK0MU+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD53FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743012593;
	bh=jpeLH4z+UiQS7jydaoghgJrsynNkBXLDi9NeLzYjw/g=;
	h=To:Subject:From:Date:From;
	b=eyK0MU+rSw5TCYcmpCBm3ccRyqTZNJI5eQHmvlbvzNFvY555UWWfzKbThzJvH3EY5
	 Ji1eap3KSz+x/Wc1Dv1bDAxYddgSuda0uhPMsI3RaaAmLdX0FPOIR5arwkgbkYHaNa
	 NathRm3EPbXwGnpPIt6ybTaKkou8F7LZKykxGSfyjFzdhuK01kApaz1Zswd2fpHetq
	 Tq8Coan8MxKKU81J1IrFpqRw5VTOP7T8QIPS7chLPMUKaDG94HJ2bMIxliJhtWxZUj
	 mK65bo/V36t6gsatE1ypmJZCCRVIbu8hN26IhUagMG8nstTrdol7AlD6F4C0n1YjwT
	 /zI88rYE2sH6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C233C3600E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301259362.10749.5070629239251431092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e20ec72c2f5e335f56dfb850be72798296633ddd0ed87c9d5d483a583770de
Date: Wed, 26 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743012593
