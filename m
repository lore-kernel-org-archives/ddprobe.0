Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6D2266584
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744210794; cv=none; b=NWYhl7mtBQqU0pwR8j5OB38GpBXiTY65TFDwSjtI2WHNVw4QPy8vOmRUcLc4ezDlklubAL6q4avBL5TWegbJLtvFvuIMFc/M3sMyhZollVCUfm3Talrr+ROx39o9h50V7+lCA7/1zzcRv6zBD2yeNxS4JSDcqkbGeixXup+mcfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744210794; c=relaxed/simple;
	bh=O3p50UMmfQ8zpGxms504OuOjSdMXiQcQWw6inX3Dn7A=;
	h=To:Subject:From:Message-Id:Date; b=tfEx+jl+uxTn/yrcj3QuAhq0DRtVbaR+o/UQql71SAnc0zYM6mlUb8miaLthrvRUAPd2Ofkrhknhe7F1Lb27cNuWE1wASkUBakCD5zozpgnNg9rBmFXXSLyF/j+vIo767kq2H4A4GqgAXf8kyrUgeAyxrSzLN6kEpA1bgSn0J2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oM+HLe+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oM+HLe+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9997C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744210793;
	bh=O3p50UMmfQ8zpGxms504OuOjSdMXiQcQWw6inX3Dn7A=;
	h=To:Subject:From:Date:From;
	b=oM+HLe+qs31YVQFoBSV9cMX4EhlyvfNBlDnzo8sXdJNO0iZ0d82coa4AqkV0ci07P
	 VJN5emNQVoJLSWK5ZtCsvAlgDcxrLIjFRq6h2sOBewkn+P5jVrcnbVP1kdSn5pgMk5
	 5m6fssgh2IpzWPAJyrDXmx0Db8GBkuPihwNTQbUAYcBj19QR9zXBcRimJWiCqnbJ9l
	 9KoACjXKWMYpXh8+wPwzosLFWnPHFV55XAH+DSPmIyeRPRa7tEQyp51KnPJX0vMw3U
	 M8CIlPjZDPMWu3tq1rHDfOYm9SrPyvx7cQCicijBHwA7qHMIdYvbCSUSHXmlc2Tyf1
	 u0nd0ATeT/8rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BD6C369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421079366.8180.10843878356690981203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aacc9fa1708b8446f64e0ad3dcf1f33e8479c51368af797406683850cf800aff
Date: Wed, 09 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744210793
