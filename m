Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE32238159
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760190594; cv=none; b=hqRf4VPEfOSOoX1JT88CeD5TNZMLrL4891/MsRfA7e6tLXAxbYHcEUrHI+zBCsKDz9rUUUctMghPnm+vBu3KtfGnphanAQf4p7slW6s5+2S921oQLWfTubRPJq7OkrKXS7QdXLXwJMhw6sNuMJOB1dlveSo87L0s9dXdggVzhfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760190594; c=relaxed/simple;
	bh=/hbPg5MERF8JZ4ttt22GX0wPDCVj1ilgg0NMJZYouOw=;
	h=To:Subject:From:Message-Id:Date; b=j8vRT6PGE13wJRBLx0zQhtbAavGrWm0ajFpgYKgrKdl3y/X1wkzuTFZCIElJfqW/sBbhd8GMPKWefTOZrHnm/NalvpPQm/jt0jJ2lDRX1j4wvDTg+LygsmG81e8uU4bic9HDGDqrHmGkG5jIaeNeTACsBYenldUhPJS2YIXGvcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIYdkk5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIYdkk5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F52C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760190593;
	bh=/hbPg5MERF8JZ4ttt22GX0wPDCVj1ilgg0NMJZYouOw=;
	h=To:Subject:From:Date:From;
	b=TIYdkk5ofhzIbvUtDkmSGlre1koCL6c6Oh6Jsbq25RHcZkIgEfGhc7kV+z/pVK08I
	 0Y7ooz7CUxGMiSwOeRMLhDQkHLSVk/eUO49KX/4PKd9Xb8IMqZKyvaP2Z6auJJHZTm
	 NBRhdQgVfhbPhRwJB8LFas5zcEaX4KRAMfDSuDr8z+2gOyXwXumPpXAIiIveEQW5vI
	 8VAzjdenS1ewl04qXV2DDGV1fWHQzIcT7TucoVQUX5ZJSWWOcZj4syDxq3XHFsD1+t
	 MGiQjj2xIAfgB02TlLhIEl7JV6eg37ALabVzoOiD0TlGctSZbsob7wd2vyPKW4dWhy
	 sutOla9x0IDKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F149CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019059357.22718.3990978409026361545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f95aad7c39ed241776a8d0102d05ff8cba212ae3d474cbff1c6fc3c2fa4e18
Date: Sat, 11 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760190593
