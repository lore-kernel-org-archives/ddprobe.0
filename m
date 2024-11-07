Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E055218306
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731018354; cv=none; b=Srh8EfWmaBOAza4HVWlhy4wfOU40WgsSvkf+w29lKNysRxYlb8IrLBAESyXbmzJkSHK0On/1qUHPW3XY8MVEOONjHtBYWCa66CkYV0oHRTIKhpaGLNAnzsSauQFnf50540ndjlSjKq0FKFfUkeujEDlqU9IUu8s6EimOUgJVEwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731018354; c=relaxed/simple;
	bh=X8tn6nbPiBAj4vshZ4EVnX9one6q2Ef0GwzrsJuPUHs=;
	h=To:Subject:From:Message-Id:Date; b=bTuPMiGGR6DestRARFQ3m9/hy0I/5MOwD3VooyuYFgjkfLO/I4IDDyFi5X5JY/z7W8TvtGfAmObvU0MO8e+mnFh6skBWV0CGmmbC5N7E5HFA438nbsX557Qmv0FwtuXBA6MhYwtnYmm4GvcctcBi2mK01GcOKotVu+l/f/+N9uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLpQzobU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLpQzobU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FD0C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731018353;
	bh=X8tn6nbPiBAj4vshZ4EVnX9one6q2Ef0GwzrsJuPUHs=;
	h=To:Subject:From:Date:From;
	b=oLpQzobUCxr7PgVc2Qj/kSvnn5VtZA7gKPZvr41tLQLtmJS4MO92+ioC1iO5s4MQX
	 JqapiaCXdn1eUeAI4YojQthjfiDEEtt2pKY0jzDksd+4Zlet6RSfcQI0bHtN7dvchT
	 MTwfhYMkicsUMT7L06zwq8QCyz191LztXMBnwWqyjDh7O1KfP/GXEexxSBEf1pPzNF
	 jpb5dbk8zpYylL0HxuQQMIbJoxmIqg88FKU28cLIcYKx7prXW+U1bq/1zP7H+k4mte
	 68OOWdR97pNstIbHvSNe94wcbnk7c3Y2+LPPzFBLM/4+CRjgmvCxAyP2JvXb32gIyh
	 yX6LFahhUEWCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE7AD5D695
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173101835358.18502.14170770001622483208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60841aa0fbb7ab82df44bfbab4db44dea987572ef81eeb83695f9999a505b23f
Date: Thu, 07 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731018353
