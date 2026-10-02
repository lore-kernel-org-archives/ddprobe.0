Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD21F298CAF
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790905834; cv=none; b=UaAT/+17pa6T04/D6fcYCKAIh0cdv2cpQpaaYB5lYHLQhnOX8qRYowc1eRuEIMmPvfZKGdPx9m+OL0mnny9hnL3unGRViAIiAW+jIy6ojs294kglZOgnMpJFnBzJ5uCqgDoDEVaogTNr2mGMTOeYmnDb8NKT7niL6HlvdauZKIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790905834; c=relaxed/simple;
	bh=cBGH471AcV95RZPd2Ln0OmduyScly36oKUBoXpGpFHs=;
	h=To:Subject:From:Message-Id:Date; b=VaXjoq5h5eEyFsjpa/qIyelC/jxYo72CFizIbufNe61tovSCMw5VuEJecFZyPrsXdLwSUolGquerpQOixQGgeoWytL6UH4XvMTRsHGgNx6RKMt+dPy7c6dylDKCGmZ7+so4T/AUd+8BZX/NsoZeJ81tPRtGcVcADYAJBqFjWld4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rx3CTkkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rx3CTkkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1D94C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790905834;
	bh=cBGH471AcV95RZPd2Ln0OmduyScly36oKUBoXpGpFHs=;
	h=To:Subject:From:Date:From;
	b=rx3CTkkG7Jz3wXu+Vt6nEwJtPPlfkOkUhjWrqV6TpELkdI23+uAxxBaOPqqGlMxYl
	 rLBRV5wrz+MBgP4gnRgRDFvo4soqlUQ9JaUNjHpBmi9tpCtv5w7LyFbXrtMM+32P3Q
	 9YdIXQoRnHLxjWSwqxXxT9H5zqhhBsAB6yxZlN77NXPcMRealdecvFH58Mk3ut4lJ4
	 L3r6jLsqmnu5y/5QoXHQxBCZy1kKQE7qUUu/rUR9k6CM7AUYplvTkIc2BNO6TGf48j
	 ZG4BX4q0zmIsuL4A9hil9DqTelzKbUcmb62RLuwG4UWY7nLKcbN/3TVD+F4A8RCr22
	 rn0e7y3CGRKyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB89CA5FD6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090583377.25729.16516556726709285376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cf3633ae02b0a89e1ab61274ef715f66798bf1391e799485fb7410b7125bf3
Date: Fri, 02 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790905833
