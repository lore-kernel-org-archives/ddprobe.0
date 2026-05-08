Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F7438838A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778274454; cv=none; b=XDVq3z5j0w7DsIk4NzC/O/nh0tfZLgtLHd+fDLZvcIWTqxOsqiDb38hkDAN0e8UOGem8qLqeo3LQXADdAi4yPEskGFe5jy1+vNPwO2ImkDzF/FS28bX02AwH06ZczYi1p+T3MbifePnITKRR43lJRaaUHsEn9buRp1kxnuwrbDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778274454; c=relaxed/simple;
	bh=alR5wmwbbpVOENczHvG0VlabruZ/zusExt/YN/OBflc=;
	h=To:Subject:From:Message-Id:Date; b=hF3gq4KaFHcXMvHrnp9BGZQh1mY3EzVlGCOTIaVqYd6D/zu7PwHxY/CC31Dmeri5Fv9a5i3L0k4SIj9ds/6der/B5igrjg+IwTl1Q6XDre+Wqf6wPOzp7+aJgHuOIGbpewyOYe5nwMdEDVFOsX1hEaB6PmXgaCS60crUAqsfaNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4zrKzXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4zrKzXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5C2C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778274453;
	bh=alR5wmwbbpVOENczHvG0VlabruZ/zusExt/YN/OBflc=;
	h=To:Subject:From:Date:From;
	b=Z4zrKzXIJ5AspuE4Nef6LED8g+nnWULu+w70QbinDgbgmbSR0T+1S7KgRCCukZFET
	 /otZdDqYRSEYlooEZW4MttFhTJFiKioU8+qYIPcwhrBdTdDlpb3kD3bGgXFi55YxP7
	 ABo96ci1sSGVXbN00/mz4FpYhx+DlEcRYQedWgULO43IXr4v6ZpL7VOYpC22uYJMF4
	 AK9oTsYnMJ8uHHMVodXZu+Vlys0bUK1YHajvCPMLBX78hGrL+O3E7PrTdY03TYpN8e
	 wXToaq0QbKblDbrfWBP6RdpOi29/yVqnySTtUEgIIa0e2J5eZMpdvUaZHAtLWNzNkP
	 6BMjSB47I+TXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC38CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827445369.14300.4106469943670909613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd314b3a75e29e6510da46cd6d95fb48bf2a73b7596bda0200a9eb2aaa5a0f89
Date: Fri, 08 May 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778274453
