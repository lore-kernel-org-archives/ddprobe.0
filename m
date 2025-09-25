Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112FF274659
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758802794; cv=none; b=DSmbH8Z1DuUClDsZ8tPUa6wWL+JbXFugQTLXpVIMSDDmOf6vLI1QXtDPT+iK2b1F9j2PT01GDVOSicjk6QkMfxRauWQqRzX8J4lFQ/gbZd+BKmHZUF2TxSac6NPjeBEZqZD8k8NuGKzTifaohsKYSScIc1T90IXjZd6EsWzz07o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758802794; c=relaxed/simple;
	bh=rfS8CJi9Y1eyur/45szdiFXWlifVl/+BQpd6dVsyDbc=;
	h=To:Subject:From:Message-Id:Date; b=dbfQ5cB0ApVlrsCkxJIqbDskhzkjbxRXoyV1Yd6uwJuUrO1BJTV/4ot4259UfIKeXAtp3wqHPDJQoGBR6poj6Pfjj9i3NdkmkdX1kJT0ENUSB6qgbRZMYLMs4MqHVg9meXMw/eSMFAIhQbub1mN+gCXZpdeG9BpZWMyIfsYGe6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fau8jIsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fau8jIsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1402C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758802793;
	bh=rfS8CJi9Y1eyur/45szdiFXWlifVl/+BQpd6dVsyDbc=;
	h=To:Subject:From:Date:From;
	b=fau8jIsdtfJWySQVc2TzTuiBvjVlGzXmzw0boZgF5uHzXL87+XVlady+HElroOGKY
	 bQOGP9HnnieSPaBagJb9PYPMZ1HMNIiXzsQ0rfDT9FVNNZk47cl9rmIBHWMigIAGBG
	 TkFBmuf+2d5B6A3wfgNKRJpdiZzlivXop+A9A+R5cQCCvyNj/TdMiUMlDQBspEAPB+
	 8IgAHryoaMdwCFV+9ML/gYdyb1rpTf1LmMH+C4kA2r0R0kxeEoQx8iScJ0f32aFVOX
	 ocX7BBpH3VqqSNpdLO7PypvPvB6HzBQhBaYpLJsgLdLSpO85vRWb5zuIAD+/3OcQnj
	 w6nHc523nrJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F1CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880279357.8071.13660615765051564832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e950175c1e637e202dae7bc667396bd3133ca33fef2d8c134d542d353d1334
Date: Thu, 25 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758802793
