Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C671389E00
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768299234; cv=none; b=SofZ2XUOn4UDNv42kY3dW+qjxQa9VF05DSM75H9Hgj0otAptHk95u8K+mBWr3q3Whhe0WPZOZVRTZBJzkib2LDA56GPZCyB+nbgbyjEmf3kZ9Vd7apEEK6xNwVdz1fXvv+YAPYXA263HH5nED6tamLZeT3QM4D/l+y5CtSgh9S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768299234; c=relaxed/simple;
	bh=ObDEkusmuDYr2W3TxzuRSOcWcfZaQcs54W6qSfMl5IM=;
	h=To:Subject:From:Message-Id:Date; b=gux+eRxqdSkFWr0/r5hE7AGgdkKCk6RoUCbkJej8dvXWvXmXWKb9as9wiIbYi8acaXZqxLuOrmIeWmukLIyFf2iCgjQVn6hvqAGy8n4j3uIPgz3d5vwwf3AUWUefp6T0s3g+xVgyHDcJ1h4TW/DQ+qsqSpqFMQAFEF+n0UviMVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPaNvo8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPaNvo8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A511AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768299233;
	bh=ObDEkusmuDYr2W3TxzuRSOcWcfZaQcs54W6qSfMl5IM=;
	h=To:Subject:From:Date:From;
	b=VPaNvo8IdoX1VpcPgT+fZSc6fS/yJ48E1kpi29SlDbRhasrG5N31uZXz86pvpXiky
	 dSzntc/++Mv9BCX6vXeD51WGEmKkBEMEz2fXBM0S5zEm3FzG6ChV5ICMwsxZsA4sgl
	 R3v7aUQozEVif6iDwoHTmRXEPgd7KtLZSPOzFB0W5vxVOFPTDwHSSotqtZ2K5utFeO
	 OKtWYQCbbstWs7PZsgjK7YgAaW/SzoNZsTTsCoDyeBpV+veASVjWz+HDcdHcx3g4eO
	 J8gonvxeOGuPSwd1a4NhvDFg9KOg8WQCI13pvYa10GqJO+mQAQLCtsru9A8yxOlUZ3
	 F/8NqIfU8CFmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9366DD29DFE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829923359.11591.8038595897938746244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9081f30b529523609ec0184bf84002355d323ab221260a9f8d8066e6d32de6
Date: Tue, 13 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768299233
