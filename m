Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151852E8B8A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768406634; cv=none; b=JKmPjmvkzrYX35BeuNhbWePkrDFhWmXHpw76pE098QpAtTVhRgLdGg5oGZcwb282WY5d57Qh1VpT/bF1jYqJTSQR8fAWiNN2uxxojICJ9BuOnjGlCemlXhJW0t8bTGTfEuvz18xLyBAYA9Ffyet3qn4uWm892SZHHmL6c58ORX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768406634; c=relaxed/simple;
	bh=ha2Dn7wPDeKXMH3VUi/rHZSnLGGKUc5SvyBvaOIOKRc=;
	h=To:Subject:From:Message-Id:Date; b=dG/U0yKyrEaSdoHS1q9m6l6ztOQ3Qo78//k9v9IuIh4DawRb/l+JmC+qv1DtW41Mm0uACUJMU/cPlRFxuyGqvpTFtgsU2JRILeNh4QotoJ43v2CbtyW1zABG0RvCEeckGP3W6qrsM9+/DAflw8UCUqUcovi86/jLMH0RabNqjfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMSlKJ+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMSlKJ+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768406633;
	bh=ha2Dn7wPDeKXMH3VUi/rHZSnLGGKUc5SvyBvaOIOKRc=;
	h=To:Subject:From:Date:From;
	b=KMSlKJ+HHmhl2aQgXk9x0qxreYSw6h1xEbeGgi1Y5wlzeulkRXuWyuBPvt44NR7N9
	 eHI+96n3ZaDpKOGt909Mq43U28Ipr/j2lDw2l9elwyZT0mgvliKprg3j6YNKOBD2Qi
	 AhwSCo0KsmgAemxrAjQ1JSB1pifDpgTFCjc6shPhAeRPRpWR22ibRTAW/7rxQoFQSl
	 TG8k07ZPoVW/Otl5qkW59yOSJXb4i+ZNNlyrUhs5N6DKMlnG+apUPUfaE+U53P+nKd
	 9GbEjGC/V1B0iG3WPWE9KfzdIoLWpROyybXN51q5NUP3Ta0D9aY1rOc4VqccGEx/dk
	 E11KQY5Z8RIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC2D30CFE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840663358.1813.15237567867268132220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041413982ae69a14d52ab6271f426dfb2183b191fa61bdeabece9b6bda9381a1
Date: Wed, 14 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768406633
