Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92030100
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744768194; cv=none; b=gq7SQdfPlK6CXVCEQuwJMlKwrH5FNPUiNSug4cQOjqXBhcXw5xjtgrzLiTJxQJhaLAlMVbSvAHQZz0m3gVKXXvJi1lEMA6yg5yIbQ7pasyj5ShGotI8oHRbjZqJF8UTQkhAH9rAXaODTp8fa8kBgorE7oN2SOBcbvh5Sb3Kkrd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744768194; c=relaxed/simple;
	bh=rt+G7UwA/R5P33z+OiHU5VVjvHgPu56mUFAv0/uq7Jo=;
	h=To:Subject:From:Message-Id:Date; b=TBO244aEKf8DsnG8Ll7W4ZRDAVtDFkjOCwLat6EJGDkf9YksN8oGJQ4IBbiYjvvxxDjshIk/JMIMfTPMDCvSUD0DYga+7ZHH3X52lOnCtDcMmZdmWKqp7J2fURCk8OWCJYUKaOvkFzAbq+Uj1hvkquAz3kJrJAOdKXhwc8yBLhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALbkY2kT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALbkY2kT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAD9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744768193;
	bh=rt+G7UwA/R5P33z+OiHU5VVjvHgPu56mUFAv0/uq7Jo=;
	h=To:Subject:From:Date:From;
	b=ALbkY2kT+JuzGlGcksdau46gZvnvEYgmr3z/++mmTuMCw5qSQhRbYYuNuuzfkc0BD
	 XJghigwmLuDxETHQ6g29T0dTJsod/4+13NEU7o2vjv+r1FvIQfZoSQZXSAP0Pn2VPk
	 wqP/aVOc3SCO2jpIT1yUbjBJHNmaPhGcoP9uzOL+igv48DsSK4Fh9G59NGHKIM00bA
	 rWXQIbVRag6p949FFgTIplCbKI8DzMnbcgmUF5tVHpVjUwbaJSE1tEjKLHltAqXWjW
	 eoWQdzn/MqvzBfMkwN+sv6lOy528Oajbh7XpjzEAlFbuohaLf8oi5tvD4CD+boP+RZ
	 7Kx9hC4GmpaBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA9BC369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476819360.31021.1719811158940499785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1081dcc675e9b3d039c024708036016a3226aeb6729b2affaadf3929b50d72
Date: Wed, 16 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744768193
