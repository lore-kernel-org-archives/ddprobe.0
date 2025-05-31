Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D5E199BC
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748674794; cv=none; b=l8UzLQvJ1nSjwPdqOJQgD9guhWzXBSGXAwnlpt2warGzRYssYOeHWlFmlAncjGKDmux1ncks1IycLafWC5NPbLVGIhy4BARggtu9zl15rbo2CVX3Tpu4LRhHHD43JhM8jBWES+Cwi7sJFt1mg372ENEPM/s5Rtbu1kUkTXiUQgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748674794; c=relaxed/simple;
	bh=uWyLZTvhcQnzhwobJzzTIP+S9oQ5RfUgxC6qH+OeVPk=;
	h=To:Subject:From:Message-Id:Date; b=HSxzFLMitrm01uYPKm2qmbMF6hXZf8MNaHdfV20tUJqUYfyH4zTRJEP21y98QduV5J8wXNviGsV1NglP7Ri2/C4JpD8znQF3wzzzDprgiQ9WQxf2W2ghDBj9UkvgVJ3Sp6GIFnsUnYRfYmGNp8T5TjF9e4rY0nWGbTvoj9KMdk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7lu51ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7lu51ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748674793;
	bh=uWyLZTvhcQnzhwobJzzTIP+S9oQ5RfUgxC6qH+OeVPk=;
	h=To:Subject:From:Date:From;
	b=T7lu51ablNemzpaOqcQtOPr1S0+t8yz4TWcLDVQdEBlizPY9COm9e6qtbfM0+1Kv6
	 RxssIkERgtWA3nxktOdB/geotn7MJ67it9C8+cXTEVJpbXPMFOgfto5GAfgTN7DNIP
	 dg3uCm/c6ow+x5kTdrgpA33+Qn1JPnvB56vKVfgdXlLuoBaQOmwzwKgde3R0TPpsRT
	 f/HmYP5Q6Hwt41R+gK21cC22bjQ/z7WOLBnMKddjNyVuWG2Ba3fCJAHAhZKGSfITBx
	 StcQLHqY1DxVjRXwUXLZ1lHg4iesp5yNVhQhBXPhffP16LXrH08r9I8GN9uvz+r3KL
	 gW8obtWAupy/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94165C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867479357.2518.9711212409265440681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ff2e1fa9dbe4a7a72466299ed628b4ee1c23c850447db288fa5338fcc22e86
Date: Sat, 31 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748674793
