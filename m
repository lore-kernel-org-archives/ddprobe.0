Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A50E1C84AB
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767281634; cv=none; b=t2o0WCLL4wyzNuaIPN4+NRnNQcXgZUN6NT0XYWsaQCxEWDGb8d7sb32seYfVLqQbVXB8g4tZ8G5Mz4rIqDnbx+KUfcpFs8Sn1MKlgIVdSdm1ZQPf5xKpi4PlbYVeEWyY47V9uaddPxaAPhRYaIE1ihYKBEO9YdBem3fU7p/2u/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767281634; c=relaxed/simple;
	bh=Tm4mCaAXr4M2+JhgCy4DhdY5P8jfamVBY9xcrVnEbWM=;
	h=To:Subject:From:Message-Id:Date; b=cT5fUa+vtblR6rPEGjoAX9NEC7Sojwj4Skzx9B5oerFMGriVe4iHciQir3XguKcPjWrXeBMRU5rgizPJObk8d4CZztLbCq7b7suR+Y59G3gXmQ1Y0s38uzTId2cJ1C3vxZ0ERMYiCung9AcpxgRMxqLPBPVhaY3/84SZfX1mLlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjXMyPYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjXMyPYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1740C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767281633;
	bh=Tm4mCaAXr4M2+JhgCy4DhdY5P8jfamVBY9xcrVnEbWM=;
	h=To:Subject:From:Date:From;
	b=RjXMyPYfCsoP5tJnTyMcRgYRpcjkwlxR/Sjd8/4J1sSgn+CpNGVgaWZdJ3fknko+g
	 UZfugk6KsfPLMGEZ4LI7lL9OkDkKJjIyehhlGB7vHlujTXhS1IOqOlvW+c0EocpRnC
	 pL42kP5huKaZdmQPWVV6E/OGSuBOeNqY0bOu0TzRph4NKwRPTlXkdo88BMsS9YbRSy
	 iGCsZQpbxoqfvyDYg27UKC1G1OwsrmVnzM/Mh7gUGhsWRzcOSEcziex9LtjR6DZBHk
	 HQc7OMeRCl/tJAR6e5Cg/UDaILEyaZyIlxldjJlrWOqqxO4ZJO5qFnfNa8YDldkLG5
	 WyG0ecoNhuHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91629EEB57C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728163357.2335.7162300324967280164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efe050c4b1cd5f50c9532d7abe09abca0466e905b5eebcb5538edb5fce3dfe4
Date: Thu, 01 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767281633
