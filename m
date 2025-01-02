Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CA5142E67
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735844754; cv=none; b=VvLtfHe+g8Bvx+0sTJhtb8HmOwgzVFh7QPIOAwNxuKHQ5vR621yhy3VElMMtGAlzpKxJROQI5XHLyPYIuwvitnUCDcLex/J97EFz4ua3R97UWhUeCxRiitF5gxuj1PIlL6A2oh4Cck+zz9RwVQIhQ2EtEXhSHbPN6Yw29cr2VJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735844754; c=relaxed/simple;
	bh=mkZzBsBdTsiExv4el1UwtZMLclAWU8fbjbzfbUXR39E=;
	h=To:Subject:From:Message-Id:Date; b=dqit6PBeOG+d2D5BAXkH6zWu1a1RSjS6DHr8g88ovsQc5WFOSXcsbcQ8Q2n0n3Qbo2DAq2sLE9zJhE9dmBfinKCYEk4IpEc0g4Y79HoWDsT0T8PjMp4uGcPM7jDCAfUppKijqtwFLLGoctXTd2f16Uzw+/fLIjqMpmQHu4703+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eucxwfr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eucxwfr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA08DC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735844753;
	bh=mkZzBsBdTsiExv4el1UwtZMLclAWU8fbjbzfbUXR39E=;
	h=To:Subject:From:Date:From;
	b=Eucxwfr25Iwa7q1OCbFzMGR/E+DKV37xEHW1z2wanqkU+zKwr7BdV0rAFwFQzbcDU
	 BpE1O9PmJePV3F+BcDhQXh4Inz6e50UMCulMyi91XkkEX46J3j/YyN3MBflZJvmah9
	 QpgXCk4Dp34LkuuZJ6IWYQALlNtu1SDG4rUBOTJyXATqj7Pq4SAWRfC9iTKu8JFGDP
	 WQ4PvfcPdT8H75zKkxqVaSgcrVKNS7TlYCHA/NyrRFIj9Pk/T2GwZtzG/UBSyORAG0
	 ofHnVmKy9IX7btHG4nXB/+LkhsmAF7LWl3Lfuh6yeRjUGE/c7VqaluTgRDzPbdtaX0
	 6F552pybBw4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FAE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584475359.4488.3295043933585883525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a2d76870ee9b0e4ee0ab3d42c2f854538bb4553b183a06b5c9ff2057a96988
Date: Thu, 02 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735844753
