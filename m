Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0565E26B76C
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756349994; cv=none; b=PnxAMITBL1yuZfIxbLR5K0rSIT6a8mvLNj/rDjmOuleghhXpn5p6yK/yP16S0rf/ZnR13xxz/48ULF/WS8q/DFScbb7GxLbkfbvLMWw3xKsxIF51d+7ML+ba7E6e6S8ks3TcYFcFnewQR54J5SXV09dNFmGJOVXtNH4j0VSNCD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756349994; c=relaxed/simple;
	bh=OKr1H4Raq9edYhj8f510HjorsJILoCxig+EKlb0fK5U=;
	h=To:Subject:From:Message-Id:Date; b=TQSbzhRj4pHqDKD5YHTffkf4L1LXfOSdZIJ0XtTA+70o8N0QeuBgeoTe6ek5xjx+3uwkf7EUBWgj9HnsZjuLxwU9rcq2RBa3/hOXcRFnmr4SC9rD9cmS1NAQODjKqVEJBDHegYbx52Of9ySWykAYapmf/YDtLSzji8F2dIeqj2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoBkqD08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoBkqD08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E019C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756349993;
	bh=OKr1H4Raq9edYhj8f510HjorsJILoCxig+EKlb0fK5U=;
	h=To:Subject:From:Date:From;
	b=QoBkqD08GuJDyXZP4k8Idwk4Z6IyCJX93CFS9ldFZBrCNG3Jg1zCSMpS4EPJFJvUG
	 o/HmbXH8au30M8pwihOTjtShgJkXFx5ciIh6MQH5ngMdBogV4LGPDfLvZxETbVzbsy
	 7DWvRcnN9KjjlGTotOrLhp5wNr3pzAg54gKzMz27FHv8OLx+Ubnm1GQdgToccJiUzm
	 DoIrGRU5WygZmqPHhHbbq26YcvQY53H24462TkDFlW0Tk+8Atz1fq9/PbybHAUucWS
	 7H80CN/aBgxQvHXQ6IbqkO5/mbR5GA4qU5+wLg3ynpGX9fw1sFReb+9mS/G203qNa+
	 g2RbB/5g7P0iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4EECA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634999357.16280.8938064567495077982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f12c957fd7de4cc3345107d7eb3521de9e7c11d8b4fef29bbb7aed2eaa28eb
Date: Thu, 28 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756349993
