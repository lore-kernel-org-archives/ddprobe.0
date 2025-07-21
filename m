Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6F4225A3D
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753124994; cv=none; b=BdD36bmhRSPCzxy+n1zzkoyYxza3kgZYbUGMd95MRW4FSCSNBYdbwEFWVDhj2kWUgg56KcdHjIIKG7Xfmiy1PtRZc/i8+8W3TjLlQKBHPt/CPOyoMdPbIyDdnJnDQHzyPDSgl60lNg5ZETPpTbFzbL33V+lkqZl3cV+SbOtqffA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753124994; c=relaxed/simple;
	bh=WDhQzUcvDvlOc5AUym5MqJK8VP+eov22saBteU6rrIs=;
	h=To:Subject:From:Message-Id:Date; b=X3Oi8JsQOgFwFHOoRhtQlx/d0CwSoP9uE+ZcobegT9KJVCn4fZc7NFG3qC1ofZRJ0nmTMznYYSNc2Z5ywgAWbYks44MftNFyQTlqDnQaBwAHdioifva6aMcg2DEIFZ4PTN9ht1u7zcNfkp5YWwnjK7JTneKrorFUG3BNFksuHQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlmX/sNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlmX/sNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D46C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753124993;
	bh=WDhQzUcvDvlOc5AUym5MqJK8VP+eov22saBteU6rrIs=;
	h=To:Subject:From:Date:From;
	b=AlmX/sNJelIMbUAa0sLESICb3GIqfAXaU/MLHOBVzrfzmaqJcoOJ1ON2gMr3tZE8Q
	 G2FT1mZ6HkdGZopikuA7Gpd7LOpgMEKdPd2EXTx3PSO+a3OVV6RRSTMvvriZWkcE3i
	 RIrpo/6e8juoT3K0qgqslvDZ5tCGX4ZIcVLLu/asJtFibmiUweLUYtNkQMTw8eskk6
	 YcexKon4fu7amOT0vqTbkp5o8nSCI04dNNjVNcZXD+qtxf778pbmkpUmM9dDrI4Z/Y
	 TLoemo/6IyxB8+ldJIaRCasetfGTlK5eiQdte7jBaRQjWq1gR+ksNnT00yrBzRB6ki
	 Q+opS7aKr8a7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D5C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312499358.24573.11409861024865798094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab391eb456c8e5153b04da4aa78f0449b0fa5949a08824ddd72d7f80621382dd
Date: Mon, 21 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753124993
