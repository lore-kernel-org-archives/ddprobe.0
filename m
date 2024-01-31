Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFB65C5E5
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706688497; cv=none; b=LiEkV76W+eLljmVBujAG8JYnTPs2LtPeJa4BAn9BF6PfdVumT/M/EMzca2CVboD6IzZlMUKMJ/o9J9yG79OW9leq/wSwIrBkg+hspcUEzTMUMGXt0phKBH9YG8Ekv6CydIuqDIX0u9bjufU1LwwjCbm3Wl0uv4BkF66xNsp5i9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706688497; c=relaxed/simple;
	bh=R+66WPSj278k4qZYqUEEgVn4qc/GL6szjcLbbVkJyoQ=;
	h=To:Subject:From:Message-Id:Date; b=oTHMq0UMuWtdGQfZYmuGZaanSEXqvXzDCKEaTq7D8mmrnNIYshJSpDdDtp701YNLkUBRwYz58B20Y/GvF7VLf/G/4VYxdwWpTUwKZqlbQIMj7MddugCD3rc98rFnom9Tn88KqYI4HEZEYvR1SInX8BOkfUu1UG9a6LY13xXTfjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqso1F79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqso1F79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84DF9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706688496;
	bh=R+66WPSj278k4qZYqUEEgVn4qc/GL6szjcLbbVkJyoQ=;
	h=To:Subject:From:Date:From;
	b=uqso1F793plpn7sd05qy8IWxXneE8fnaZHiRXI0OgGxpkVhmcRemSf9eubWdBE0tx
	 nvH6Z45F0oKCqCCRnxOUKFrqS8+5LFyyMv96VVTIr8Q3/zfsgkWzpPxYqOU2+4WsFQ
	 45vPXHNDGdq2pZZ1DTIvfggdQurmlz0saJAifXwoh7TL0C9CN5kffr2N3+DxI5IlVP
	 MgXhz6pPLDAqUBg28QtsB1sWtL9KZJMoKFyafVpr79kW3q19xVk+79kz6aSLUm62n7
	 dZtMzG/HAYJH8rNAYbE3WPHhixF8c+bGPJ0y2UOKVf/+rEH/jF7+43OHRVpy/gkcUl
	 yMOnD2DyDDIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D9CC48285
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170668849641.11888.3604886064975514731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b0e59786c25124726938ea3118402ba4616f0823e7babf1fde492fbfe5fd07
Date: Wed, 31 Jan 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706688496
