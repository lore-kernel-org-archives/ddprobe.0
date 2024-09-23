Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0BB7DA81
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727108154; cv=none; b=kEYaklj9sXSE5BxXaLV3FzU+DmJ1ggqmwDFYGamdWkbGgAWfPFTK/oVTkhYhAYdZv/tIzyzXEAW3c27sgzlW9Nnscn/vFuPPW80aR/6rKFBWWB5fdYEycMXrAOQDivWZfxFldgp++wxdTqFMEN+KajLiI8yP0T+uPl8nOWclF20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727108154; c=relaxed/simple;
	bh=zj3vbdPKXD29OxL5Qs1y9MvD7a7BiSokf13+bbFlVGM=;
	h=To:Subject:From:Message-Id:Date; b=WBtGOZdecsxxOtBZoABseWjJ2lp5Zk3VT7IgdRUO+ZfmyRSHsSqH0AUeWUSQJuTMECE/tXqcGiTs6/468BYAh2N5yvlkaSSN5htMm9yEWPIfDP1+rOoe9qEzMOeVbYUTn4nr4tKjSfeO68viaJIjUwyvLMuLnJL4OpOZjJ+BCe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQXlCQL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQXlCQL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9705C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727108153;
	bh=zj3vbdPKXD29OxL5Qs1y9MvD7a7BiSokf13+bbFlVGM=;
	h=To:Subject:From:Date:From;
	b=VQXlCQL02JhDBRMvbrx40vA5isu6VaAlvIDaMLOKYTgBh9gvVOcubRqLxIEcMgMJc
	 lfEkRUPAE88PdOZW1iW+vRTbvu6TRw21NrxuZk9WqueuSHY1Sq4R9WSXyUw53gsHDy
	 roG4PZx0AmHCl3biiz9a8zIKPp5O6eJy0Zdnr9J7pPzOA6vVYWOwzP2cqGVZhgdiPU
	 3tStJzAeWkNumXuSQB2usf8hnkVJzbHf4Sw02MjwtfXff+6yctah9jx9cEEssQ6DkC
	 qcy6g8cjQhpxG3jLO05OvvLuV/+utwYUKDL98VWgRXZmvIX+6ekw0EsRo0LwptDomJ
	 KpHo23fdDmyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E6FCF9C72
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710815359.10555.11801317407334029826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4f8b02d7a85f78bfd28093f37729ef414d304836dccb091c080028dab1539d
Date: Mon, 23 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727108153
