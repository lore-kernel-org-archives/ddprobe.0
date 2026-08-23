Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B1449365C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787522434; cv=none; b=MiW0cElC1j5HBzwwHiwR6e9bwCAx09cOymEeN/8KyqI+QurwQ6Cr7wgD3myItAevfEtyrocQXBQ/SiJoZvcF77y2uGh1AAu4ibpZznUkHwdReKasABTYPxBMofLOYb0iTMrVjUT7LX2rXrBVo3kEEKQFJES3/3VcY75fASBm3gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787522434; c=relaxed/simple;
	bh=OABmWrkezoYahUkC+Saycpew3ijifvwTEPMPjnnRvRo=;
	h=To:Subject:From:Message-Id:Date; b=WafTFHvhkvms7LDvVSF9xVvcm7S+4qLidr8BNtazaqdbh/uJmXsj2WU/jyC85cu/vE+COkHJFhpr6wxywksGiUDO5OVAOzT9DYwoGqiruanUCH5xIxgoRgGAn9QVUiZJSggttIhQDP79MqT2h/pzBibIoLvCkWZxn0lx/rqlvWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdyW8+QR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdyW8+QR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93B0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787522433;
	bh=OABmWrkezoYahUkC+Saycpew3ijifvwTEPMPjnnRvRo=;
	h=To:Subject:From:Date:From;
	b=MdyW8+QRBfk1o364KYqXVo7RL7AKcWaMVSe9BwMbwqZUq5Y8ekAeXOHR/9OBv0qig
	 kfkhKyY0sAInNQHB871oH1bGbB5nM0yW1qWTAkiddn7HVfi6Nqg/dGXb4cQt0SWFRv
	 BCK9Y4/JexFvGmpIICnti9xsKp/84CuAFz9+DIO0PaP6KkPZFl6IMej/+GpUTGGj0R
	 rY2IAvE0Qv7OqS8ZtabCE0RdmelRvnIZBB/EOhQSadDUISnO8u3nMphBs9HEwrrTl3
	 6uUhswYfHRrvM8KNuBr0TpluMIKTfsHEW+9lzKq4HSiHVx+nL973dJONHlljPFvs8d
	 U4BsAZgockCUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE09FC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752243369.29783.5570713831116736518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da92b81062fcf12d54ff3800ff0e52cb78fcd5a94540c8964f3feb96eecf673
Date: Sun, 23 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787522433
