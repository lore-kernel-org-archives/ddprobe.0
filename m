Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F72747CC82
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791372634; cv=none; b=okbLSxLEgIbG8kgPulR+/rnEZMJMBEPFx5HpsGPraym5oVOln8+MqTxVNpg2a/8lepmdvcMLHMRH2gOIQitwJBRdcjsF/56pmYXWSPySTFRWe09ib1KW0JE0Nej6Ljw+crrv19G/+axuNGEWrE3SzTcxsBpjY0RzWd7yNybNbnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791372634; c=relaxed/simple;
	bh=Ypug+aIra+UdDNgO+Q4eJd8G9aT6eTaE5Mwb59xGHq4=;
	h=To:Subject:From:Message-Id:Date; b=O7bofUVhvPqS7vQn9XTOt/g4PO9cxxoFRvfnYXtXsA7iVUDqbjCPVqVMqUBjzpvcDoq2HrkKlacZKMA59/KSB7jjhQVgOjMI01YZvqyy1QoTB9qssnMMrMepc2fLDGUXiM1QjllWZzX9VYUj3k+GWqwAFoeGsSiFERl/tlb+9ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwVaoMZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwVaoMZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3320C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791372633;
	bh=Ypug+aIra+UdDNgO+Q4eJd8G9aT6eTaE5Mwb59xGHq4=;
	h=To:Subject:From:Date:From;
	b=QwVaoMZ5N7CyVcqrNGu/Cpjaadhpd1wkTACSGRqOREvmUa5+bSMQ+iVNRLKacFJRq
	 FGTs+fb1Ge0LQfnVDO6iM+84HXPA6IiHKM41p+amtaWqokYW3kPkM359gcoT60t4uy
	 aJ+Ej84XZcu1xjAQOM3iy/0D7zyrzop5jIQiXnzJOyfS0D/OqwmYzmyFj7MjSsggtM
	 d2ftRJiNvXckQwklqlQ6SyZHCXlStuksGCJ+RsXGOLQd1HPVPNSdJkM4aDbklR9+WH
	 3bdPP/Zi3tAvyVYp/ncYg3eKTswaYloNHAzFey6W6CDzVqIHHZuVyCsKBIStUsaS3L
	 vn48WRv/LFC/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD94CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137263368.24563.11075382757798873183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9baab47e8c71e996900cfc63ea91b35d62d4e7d568a63796c21e7e704a4c2c5
Date: Wed, 07 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791372633
