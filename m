Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC6E19DF8D
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760680794; cv=none; b=SiRB1JqSfJzcstTrIlKM7DCCEI/E0xx1+kDTEjRGofknpibzOZ5w5gpTKkqskteypFKSHsDEIjl0MltX5VcP2IVgZicl2xLxdOccFY+ey0jUjgf7CRWNP8O0R/fAnFntZ2Nozs+ECcmTDDmAlwojkwtBBpbUlLwXcSeZP+nhKSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760680794; c=relaxed/simple;
	bh=gk6/D8eCIiqrnBGcnXlhi8Wsqmhj6FAS2TOhq69U2xs=;
	h=To:Subject:From:Message-Id:Date; b=Vv17cKBt3fidpr1RFgGxfqHE33lBwANspFAquS7F+UrpIfe0FiPW0xHHX0iQibltBzmKdOvU0ZzafkvewVkc+QzweVrcX2tIwtDbrNSjGqvsqk6Ye73oK0OvsCidZw1X1iN9ltNaEipsf5gMIqEsGQIX1BFYNwOXcPq3NsgBIlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaRDzQzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaRDzQzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D99FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760680793;
	bh=gk6/D8eCIiqrnBGcnXlhi8Wsqmhj6FAS2TOhq69U2xs=;
	h=To:Subject:From:Date:From;
	b=qaRDzQzShlp/BrIBjbUFNusgSw7T1e0LN6ASvx+W4SI39n9/5peBaZ2GwBDWICIHq
	 wL/w/T5edwr92TfFOycHRG8P6aNvLyBAuqljY6SNiDc8mT8Ay+Ui7EO7Uh1qn7GBjB
	 YuW0MWU/aoLHa4FK13UeUPtzEonBLig/Uzl58V19hHL7ActkBlrN4VunNo63Pf7KQZ
	 8+3raYsoxG1NL+QaARn1f1ICZaaBYqptNJJEM5CjTgHq39E+BxYu5ZlpewoqZACYpL
	 FEzMEzt2ojmy07msAiXheQ1nMPrtlGEOidkOrYBZNmc5gzRI+2radWYLDQlBCWYRpf
	 Qygiqfoi8U4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C1CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068079357.1051.4262858998382729599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d41cf63ed10c5de43219c85ad91ffa86e0e9c8c705082c80caf26bc3a832eaf
Date: Fri, 17 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760680793
