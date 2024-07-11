Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AD78F68
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720658243; cv=none; b=bKlp/KRIKnTDcpNRxRAsb2+traAWD0htQBfsJkcDJAoUNasme4jAVdZsnAjmnx431PYaZZrE4wQlr3eTyfLqoK5BniX9RE5pGfFIV2iSpkDq8TbpjuNJ42w53ZLifgjkJ2gXjtO+yN3ikuITD+lENmElpNSCw+8prkBDycj3JQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720658243; c=relaxed/simple;
	bh=lAXvSMjL7DQqE8wp/FfP64xdxuhvrfIJ3ZszDolUYbE=;
	h=To:Subject:From:Message-Id:Date; b=Lxiya4Lebwkx8sioIfEfEiXnTCDOXU5hW9HBXjw6LanwbnDcboUL4G9OzhFkj45YZCrC5XUOY8HSXKBu76PZZggAbhw08VdQIub8QwamSXWw55OeSq+txt1CdfXPOxdLmrtuWd2Yawi0qHdRcOiSJvEZuOETixjDbm2hB7qk85k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sabVjuit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sabVjuit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3ADEC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720658242;
	bh=lAXvSMjL7DQqE8wp/FfP64xdxuhvrfIJ3ZszDolUYbE=;
	h=To:Subject:From:Date:From;
	b=sabVjuitT/NA0Wd72Na+Eze0JQwpbU/zFxa6U5tT5UiNSHvhQrLhVSLsIbSrK9awT
	 sxZzBjrq2vV+S6rmrKqRl1/V4xFBGOXAAzqNq4pmJEjeUO/06pZGLYm9gEDZOz1dCz
	 mlp0DUlrd7Z/sUJt0bJ4+bccPFaxYw1o1adOVjbNW4GjX1SckeMdONOtdtRgq3wxXa
	 15WfB04vC0mkEhIAl0r9vkw1ujd9lHRZ+4qeRdqbh0RujYc5nVhhfDEIZcgT9GtHqO
	 q/AKxewq5I2RT7r0UuD3SWWwmA12y8EOxxqrT9vNwVCzEiDXEA5mlGdB7/gIAEfrCR
	 ITJH3vGinDQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85F2C3DA42
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065824279.20841.17600265559034251300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d527ecc2ab0223ec7349cc44a8b828a869a4fa6fdbefa8dfe8c885755f9d8c7c
Date: Thu, 11 Jul 2024 00:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720658242
