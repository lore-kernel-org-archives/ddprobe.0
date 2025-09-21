Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F88189
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758448196; cv=none; b=oVFZ2fe5o49T5Dn13ACfkP2/q/YdHt0IZ8buoZMh1bAOtScHZEGNYsLpii2Yd/9VLcQTKIVbepqd9BeamFxvzrJotxqeQVzHlYTXIqrXRly+ozjcQolsZisBxrj7EtkxuBLC5AslOj97REUJlwGo9wkK4QaUF1zEbCQ14n0cvL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758448196; c=relaxed/simple;
	bh=lahnOtQkyq2rRWbzNcapzvlMwEsIA7IEm/f6hBZrCWc=;
	h=To:Subject:From:Message-Id:Date; b=J7D5hYEmdUnrosDmiJtG2yX8Ejj6vOLlDOrQps8ybbxW0Ew4xTEn79K6CCNC143Abn0RxvBA375qWU8f8XwOsXeTKAnPEhfTlLrNjcFOlsWTiJhqm7RQXHjLL4RgiEBHHU42s4wB+du0Mqdrseu+pb+uiitGkAR30yyUfWvP/BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSV3gVZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSV3gVZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7630C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758448193;
	bh=lahnOtQkyq2rRWbzNcapzvlMwEsIA7IEm/f6hBZrCWc=;
	h=To:Subject:From:Date:From;
	b=QSV3gVZJEMwRMcm3VcakwNfs7OD9QSCkpDLz1Xrf73NxLVn14010UO86+KZCWyucf
	 fgndf/m6KzMkmGjIuV6fb8TTkGcqwIP2PU6H8iz9dB5z53t4lsTTeqIFoySpQdy6kL
	 lFc0KmZpWK53Iw8EgvBQeUWvMSOajUrrM6E2zXKxs0c8q+hg1bbOw6xTRW6GqUjxWJ
	 DwP7cDqNAfPaFCCra7wAuewWSyi8eQujIsGIap2amlUeKFEwxNnw07BAegrLsi2qZK
	 ps1sQarlemie77AE/gqN01ziOpqwBAZMtBjK8gtHShKKrtuZJAndPb16HK6Q2FgRLa
	 V0jUdzi6ADRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD9CAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844819357.19885.14423744213464880678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cbc80f7f64d9a3fbc0b17dfd64fadb801de6fe399b74b7b6769f2e8f8e31bb1
Date: Sun, 21 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758448193
