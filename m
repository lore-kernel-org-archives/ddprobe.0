Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1351E40DFA3
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774704894; cv=none; b=bL0gRi1MudaAjn1B1jneG2AXPexmuDBJD7XjEn6loLJsxch9J2OEK5GrLJ642YdYmd9l7ZGnLn3OaSQayohPXOUigmNXnpD3IgMDEVRBdGhMciyqkaeQobERQzrDd39nRekgMq7bcEY7dXH9nJlmci8+3BA2vYli6hTeeQcFEZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774704894; c=relaxed/simple;
	bh=MDDs9MBhZ6UyNIXaRD8Dc/6Tkf4EfzjCRvu3U9d9DNM=;
	h=To:Subject:From:Message-Id:Date; b=APCLxVrd1asmSWU0IYYiJ4UrIc27ReCNggd4PNI6TnZQIxrVqfx2lnXxDsO+R/xzOFDnDTelrWXa2w1mCucprkhnd9ytNXcocbXfAZdL2D4tPog51tjBzaVd5wWBGqS9bZCtG/iEn8CIm4DMK6cst8gogdY3xAJAMzrbkdiLYnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuUHN3/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuUHN3/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABD1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774704893;
	bh=MDDs9MBhZ6UyNIXaRD8Dc/6Tkf4EfzjCRvu3U9d9DNM=;
	h=To:Subject:From:Date:From;
	b=iuUHN3/O/KHUS3nY6nl4O1Rwhr6jEfCqFgpbaEpmXZjMov4GfBjrRGZ9em+2KgJuT
	 ldxpuwSHXq95w9804ONiLDOryLhBQYXNj5czmlTMuZr5P8qzkbrPGVXdVfepkEHLOo
	 G1+tA/PaIilaty8ybuhDFlkNoIyLct7Fd11RkG7646pZ8HaPh+hEAhXfKfTHbiG33D
	 yu3hOWwv+wl/DKz7B5Z/kFT2x6h/6y9uL5x0snOVadMucR/LswDiKuGi+gxOnvYwTg
	 8Ju8C4nG9xQicZrnbq1ls+jXVn0HhZZz3Po1ikPvg5zZKhjpqeJC1m3kZeMBlPBK7Q
	 59d6BJuVGW41Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9867510F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470489358.23827.207532847965768357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac83087d7d46bab35c8574d2640ff1e62358bfac978c5b6cd65ac23f4ce6098
Date: Sat, 28 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774704893
