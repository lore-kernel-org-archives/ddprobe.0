Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330BE382F14
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779723754; cv=none; b=JFmqAdKIPWClfjHs1Kr8EJCI0l6WvWLd+qE+B7WvwXdotzE/fmkFpGLgZLu2wi+6WoaL1GERChG7A7CSf7mYOh87PCet8FT5BvRiXYQGmW90t+MpoeNychhzwD9xriNgD/LZZBZ8I7WmTmCBaTGcp6tmyFfwztLfV/W9xh9GXn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779723754; c=relaxed/simple;
	bh=WmItrLM383mdYDBxWFfy5pxOi7TTn9efhv5thZb2JO4=;
	h=To:Subject:From:Message-Id:Date; b=iVkrCH000+wAVup4JJjqi9Wvao4mE4UvxcOSyYy8uid4HiwR+E5TgG0FTFMPO5k3+g5/uY9xlBjDRgUlOmZMG5QEf965XwDREpYNHZZt7XA4oRkgkq4+p7ger1BvlgYjLIcE4tG2cF2IN+3YZP54vkq14EvfG90uF2mZq9UiI8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7bxm2UD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7bxm2UD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CD4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779723753;
	bh=WmItrLM383mdYDBxWFfy5pxOi7TTn9efhv5thZb2JO4=;
	h=To:Subject:From:Date:From;
	b=r7bxm2UDprUfDeGNVEd/fnFXrhbWxtE/HHXVJksKmH3nA096VXpjUHapa1Ykdl/ME
	 sQMz/VGTvvHOZytM+1JOMvZysJt1QOtMlCwmxoLf8rbyjfEon4CktAkU6l5PmtjsAZ
	 eq86sepGJ6T1i0xIVfHZ6AuyLoCf2lJeKg4GkJKFtTAAoEt5siwJW+TOpRiIi7oL1V
	 hG8hS72QoVZKu4wS3KeuEMollJx7KlBIc+ix1ZvVDpMpAxsIssaFcNj4e8PJBntuGc
	 Y+dnH2aUM0N4rkkfFCxzl+S4GYp1lVJd+c/opf+ADHVF2uedEl4XxDKQh2Vv24DxLe
	 naTvqkRgm1gzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE63DCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972375370.23897.10739401350284368028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676eb32b625829819a60f4e1f8e7b9c230e048e85df00cc1b0bff9a247d64997
Date: Mon, 25 May 2026 15:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779723753
