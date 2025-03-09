Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C521AC892
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741547933; cv=none; b=I8fGGxBOBDce+X/Qc58XAX8XLv6Y8PYOk38E+zQGbYECVuTlvgmZEbNvLzJXrO3Se9iLdx6wd5IvN4h6M/zx7tbXaAos4J4uzP+CHB2WQ030A2A3ZSap2QByKLhrf5VXqHyTGRumQnNQPjP6KxCKzvpF3MGnNuEwjB7xP2X7jt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741547933; c=relaxed/simple;
	bh=JLDBUf8YxVcgf0e5+TR2hypMtM85ma9XaykXTEOTZEQ=;
	h=To:Subject:From:Message-Id:Date; b=tmVpD5r8q0JRIdczuYDVQr6dwSERW6Zh+zU8UI0H24qOkFDv536N3Jbp4a3/fCFDogSjFRNBNliUpGZYvKvDp9VkKShm0OvJ7JvvascOf+icN9AvyrpLdRTTIZ7iLQCgdEw/p2G0SNfs7MWEwUW+50NQ992Dg6ue79zfsfZ/qYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcuExWZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcuExWZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D11C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741547933;
	bh=JLDBUf8YxVcgf0e5+TR2hypMtM85ma9XaykXTEOTZEQ=;
	h=To:Subject:From:Date:From;
	b=rcuExWZ1VQObrv57ZZGtwv8i0T4u8yWul2MZBNLvtd/CQCOPlr37+vK+Ir2O3BRFv
	 gcRH9BDhsNqsZnABJnGh5Og1HsqKp+RhqziLIpnLU7KPrxITAfdEFcOr8s65VZu1Oe
	 B+wcEChvKf/E5Q9UffmvP1u4NZpAm1STsYxb6ER3Via2k3G0ZyK1jjJm1+JcOf4RG/
	 imdGsveYRNiCFeoZML8aewv4v4Q/NW1xh6eDr/J1wcT0UdLu9wndJ/XlCo9AtRq4Su
	 vo9ZQ1SmSpPnJ04+PhqNJCrIC6NrWkPostk8N67TZ7tT98oCBHgkOLxQW6KmZhJWF4
	 aT6ZRTTktECjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9821FC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154793361.17227.17407246787588634636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93c477938f0b435c652add7ffa5bd2f4866a20dec6187899cfc56628dc9d138
Date: Sun, 09 Mar 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741547933
