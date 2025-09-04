Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B792C21D4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756975194; cv=none; b=Muq0v/jjw46krhKaQQ5ZW7qvOBHnVXUlcwJ31cmgP0OBy24h8EanCLyuQnpBVwbnCf8Cks+CyCBZCgT89bZgUbkTVtvdurrZ29S72rFdL3d1h+GL9qesQ3/t42MsujxQTcnuc08tTBxPuF7GazJZkCQqXmVYT4n17XdX7VNBH/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756975194; c=relaxed/simple;
	bh=KMyRM+21oO79RxosqPyLlXkOx679QyNe6lf4AyV9F1c=;
	h=To:Subject:From:Message-Id:Date; b=kfwnc+7IrkjSlQSLYtQ0vBxpTIGfesSl1TPCLMQbUfF0qZa5oohNSXk/+fA3a9j46AbMDbeCp07K4meNCjCUqW9dfCjRhTzPM8Lo+2B+u9VdMKnzwpMFLsppKMDOENNq4fmVhToMK9zj0bMFFVOUem4oqDZdfSmad8EXjrqizFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGAbHRnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGAbHRnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4329C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756975193;
	bh=KMyRM+21oO79RxosqPyLlXkOx679QyNe6lf4AyV9F1c=;
	h=To:Subject:From:Date:From;
	b=ZGAbHRnDKo/Vcn8sZqc5FPUSCrv19Tgm3KLL5teUcUA6+8ZMpZvzcS/XY8dodQeIg
	 Vqoym+yCQ+uMh+taLuwEShl/KNzyd1l2fLAiCMfQTRyN2xJSaIPmKFLjCEjs0pFjKm
	 Mog0YoSH7X/+qs2IqRGVJZImhA5b/WejcexnYi5xhuB2/ZH0gaQI0qgcjg85+JBPnY
	 oxwKt4t2AOuBajXCkTkeoBNwWBCtPeO2C+6Hn2iTzsnfMY8ij3HF49dWWwHCoGKXZe
	 5jqa7ItfTARjomK7jwRHUYkaQGOGViHbG4HTrrKhZpEQDBz/3FKWCqHOFFakpbxqZz
	 pr7Y2CBFj5uvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92160CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697519358.10495.17633811642468729133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3204df9b5e64fc0489452e3207dacabaf69859faff50ca2d2e5356ea649d8375
Date: Thu, 04 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756975193
