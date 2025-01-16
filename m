Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E77192598
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737024354; cv=none; b=TBS9TsG/ER5noYIO98e70FzpC5ZraFOIWv0efS1RPOZbB2kTAb37J2RqLJ/DdruOGhYUZU8UF64MgX/YZIOLf8bPBcLoqSbKvcJ6bdhXWAznBQntnKd+5QjXBMslVFnw+TKsrYbgD+qsRQcXfyqP4vXnTbWNG5u8lBAlGtzaVac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737024354; c=relaxed/simple;
	bh=jLKLkp0mg1+vs2bpPJlmXBaSifoyBrohPOSZVWYf9l4=;
	h=To:Subject:From:Message-Id:Date; b=Ew8JmRyHiOfJUP5fPxdPqVl74fo5R3At/duHsilN2h+UZokjLSVRpbqbwCGin6Vqbu2yyTHzgdBWwU4hmA598v/17XvuclirDYI8PZVNveWUnIRWJmuuTPJ7cKvGpPMcbR3q4umedTEuUPqXYeQYUUcRXCl9bMzbkbgzmnkR3Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTbmjiEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTbmjiEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA885C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737024353;
	bh=jLKLkp0mg1+vs2bpPJlmXBaSifoyBrohPOSZVWYf9l4=;
	h=To:Subject:From:Date:From;
	b=bTbmjiENfYonUl34OHS2RyHzxvMKwmnokmCwd52JHKXyKKHv1PfSwEh8M2Gbw+SPz
	 XcYZASeM7euF6ODF59UVGoLef7dr3Rwj+udGG7N929aqS+xY004b96F5wWMH2aeycr
	 goLTG5Fmpk5qPf27YvolH0n805eAIfPYfGlWsPAU9G/ZN1Ej6jYxd8DbS5Se+Vyxh1
	 ydTR3jbiny+xQJs1XlLjKGuWAUz8NE/RS2EY2h9isJ0zxdAZrME5/gM+jk2fIfq1rr
	 dfOMSmhfz4PO+CpHVCiPkVNpT0zc8lm+V/y92EJX7/gYaESdIVDb6ZBMxQg3ydrvL4
	 HCJSrOrS+4o8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D6EC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702435360.29237.11199523191107475867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9ff740b4d0e02de3129c97ef59b2a1c641c00a41ba31efcfea3fba0a8ff1f5
Date: Thu, 16 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737024353
