Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AA952F288
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791991234; cv=none; b=Ewrhn4mzEHg7La501k+MnZ0Pw3ImupT443jEIesxApeoRFFIOpQAO2nFzgqtg9oSDD9HFPDNRcs8uMqRWLy8FrB5vdZglBdQU4L8h9SRvQkjTAiQlZDYvHR3ipNbvZqn5qy8t9OXMgj6RLMUndrXNUWWTQMqdAjs/EvPzV2kqss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791991234; c=relaxed/simple;
	bh=iJ71repVkf8gJXL+8mhHupgF8mFTbQAFMp0gIlEYVqQ=;
	h=To:Subject:From:Message-Id:Date; b=NqZpfExtTUspxmjTB/L1dtYoLbgc7fu25OrnkdNgiAWfjsmopwyqET30rLL93OniUHz7z46h1Ahgb7twvYrhLHOmn3LrVpZ0l/dIDrVYrtDVcVzZ+Rb/6NcjOQxGn7Vo1qyA8eOkB1lqSu+xxrSnPPu480fm1MtWHkA6AxNT9lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSrxZko+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSrxZko+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02E4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791991233;
	bh=iJ71repVkf8gJXL+8mhHupgF8mFTbQAFMp0gIlEYVqQ=;
	h=To:Subject:From:Date:From;
	b=BSrxZko+W9WeCbbIAB3cLFaJNTVrCtN5GALkf9CV9DfH0FNzSvaobuxzRfSVXEjbM
	 3GZt7yjoTwFinWz9gEDF9wbjCukQAT3mZDgkwhJaqLGwMxG1oD2JNOZSpFwaQUyRLI
	 hMeEXty5zzAg8Hi06h2h9ATx/U7YzqjiGcmMUcOK9fnphH9anoeYKmADxGVWpue4yY
	 sifIRcCjKWLTn8VwmqKA23ZIq9OEINRyoJKNjCxK1fOSbG3c8k647/q98Kf5CUHRTk
	 cHLIGge6QH85nEWxZP+El0rg50vwKdQa/oJwGlIMPDsRib0A9GsaaN7QGus+R09/6m
	 sqrXENOZUEZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC00CCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199123369.20809.6840340816997448951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae58f7d9a911c4a00a8093326024fa955daab77123716455e4a9ae5f646a481e
Date: Wed, 14 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791991233
