Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A8B44606A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790289634; cv=none; b=jTuFTaUNGZM93jBYVtnap9T9bgrZVMyshQJ0tiLxhW1fHdNvxq9fvBRzP3x6efr3nGkqxWwX2OuGeOgKEC15JgWvnQoJOzhIeKW8vLhPFuGtII1zM6VBzqmDkF99dLHRMjNSrmdgXHrBKZ2KNQeUYGbT07J9wqiSdzqQxkXUu1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790289634; c=relaxed/simple;
	bh=yOjeZXHO6u+WnoB/Yf3YvmN3U8fMD4v6yfe00FD1Jvo=;
	h=To:Subject:From:Message-Id:Date; b=Q889EpgTMqSQfimak+EzN8EU18k6cDufyP89y6mZmh1JgMTyotY8S+DtOH+6m/ZpIliiU/S7jQj+jhIP/wSlZF6E9zX57rhaSLeF48FEslLcX57Oh3CnE8W1dU63jQkWHC2Y430dB7PWyzKklIrhKIinUoJlyprJC4kzheTDIiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQmjrN3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQmjrN3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDFAC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790289633;
	bh=yOjeZXHO6u+WnoB/Yf3YvmN3U8fMD4v6yfe00FD1Jvo=;
	h=To:Subject:From:Date:From;
	b=kQmjrN3NPC3LfbJw8ZYKoxcgNh505Ui1TH0E/PCTTdusQyh+6ccLzLSnrvxvMJ+y8
	 4LhD0JzDBqLFvClBAzqJ60Z36Y5lzXme4TKThCbQ3jjGORclelBm6rUaFTmxyGETHW
	 K5QEdwtrLPNN6uCSVYWf5lIaJ0MeXV6GQkSsvc+w9bzPYnww1xZce7JdUENdmtyrBK
	 lxQPxRzKBODIsasmNNZ08xGtdT9Z1YfWtXAmF2brzHgnDFdV5vjmRxan2SBDNzFYGZ
	 TXlGwfGhW10JKdrtgck10DfCIEJ0FbRWyZ4z0hcawis43u1JvvEHAH/7Vn933/7A87
	 isd1fIFHEDrGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B706DC98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028963371.19355.2609632804709131898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd8d79b1874bb10408ef2e73fdfe34ed7469e4dd69e4b062a09284e959981ae
Date: Thu, 24 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790289633
