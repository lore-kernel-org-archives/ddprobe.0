Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D67143C48
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722085554; cv=none; b=cc2JQp2dTvI0jNKP3UUMfaBp9P9gjBzYIWXPE22nscVW6nBqRs+b0SHA9Mc1bRHW5Va0mKVhS/h8nufV2BayIVDbnncuNGhwilZN8IfXNctVShP8HI1n4O3krgJVJ7qva1f35Y1kggNghSR0sFtjf7BDBQFzQaGwoISG/otZuXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722085554; c=relaxed/simple;
	bh=Is0LWVkg/9EYY7sqq4goYA6UUwZJlJpLe4AwV25Gvgk=;
	h=To:Subject:From:Message-Id:Date; b=sPZrJbT5J7AwHid/9tWLZ1bYNSGyIB41PVAgw0JQXY9oBOjr+9JWuJGxJMqH4NK5sw21F2zc9fXRT8uuFHYUFvLs0Ebkjno8Hr8+OW99nxq7aO1FhfIzotyBD/Cxj8R6P1cjr8Pvcxe0ta+jLuoGJXFR6SI3XDquUmw6ua3k+HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hjv553wB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hjv553wB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CE8C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722085553;
	bh=Is0LWVkg/9EYY7sqq4goYA6UUwZJlJpLe4AwV25Gvgk=;
	h=To:Subject:From:Date:From;
	b=Hjv553wBuprj+ClztZvPuTRJSH2MqrkLG4AlNe18JXvKA2TQTcXHG8snKJvvVRQbh
	 N5c9Smgs8R5T6TSyZhxf+fwZ3pvyCbttKRm/WHIymcs/sRsIjqfE+tGeCRngPTA9iH
	 6o/C7H1NWZCv5i9E8T8r3T5ak/jcs/7kBEGX5qWBtduJyvsmAorUxK8Nbcw3TZzlNa
	 1wDFkwydRouzDxMtO6Sv/x8/NZArJIuebSsNLbENk9HL+YcMjjlbhIrO/jWNPfe+6Z
	 UzHXSU7aCHhiOFUq5Je3/aYu5RViCm5UhyIHQVjmyXT2RVoIftScL8p1zNnkWq8B6A
	 hQTcN16npsMlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99143C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208555360.13542.5535355081966449299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f16a619d4bb96c60692956ddc961e792e34a201ff889411ece70554b0a5a9df
Date: Sat, 27 Jul 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722085553
