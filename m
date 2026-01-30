Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E97030DD3A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769773434; cv=none; b=vAX56IEtZCl3k0KWlW9Wq0cvNR1j+UTBa/Vax34KEDrpL6nAzMsjXNfieG2Df9xmaq+aEV9uUem2xmDaF1Ti0mOgSqesoTI8UKqYlav+jlbqPWvFD3we5JQJ7Z5hJiU2TfQZZ2HCySCx1y+ZKOJ7QwU1CmUyVE3/M7EjRy73JHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769773434; c=relaxed/simple;
	bh=AjdXSXaNx9/wvhlHcs5z9wbx5htPaN8rfw5hxjcfSKY=;
	h=To:Subject:From:Message-Id:Date; b=FregyB53lNGn8wBy7ciVmni4jTWyK/mrLGrtJXqxrGIhrZUj+tsc9soHdLi3YeGOjzH2Op3OGBfK4H/9b1JVvOMeddR0KCrsVwl4cB0wB6mWviKWRW2pi6Xu0daXqoobhqfkAeJvTpyrhExR+Yom04njjs8bKU4wnpF5NhMqXkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFJudoZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFJudoZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769773433;
	bh=AjdXSXaNx9/wvhlHcs5z9wbx5htPaN8rfw5hxjcfSKY=;
	h=To:Subject:From:Date:From;
	b=DFJudoZqrPO/KM8I7HPObtsrc9LWpyOz4hNuhXtuwlbk+eDA7Tk+0BuQRVIoVshHV
	 KPn4Jicwh1uF3I528OBQRPh38BoBtTerNO/2h49bElDvBHGwsPTV+Xm/sToCiO1QEf
	 J/F+4gHpi47GtjjO2OlwsR6254Jwm/+nORAePek5g60DSS985pKlT2lDKO7D3hh2Nh
	 vM4BjedUUk9K+JpVAhgg2FDovtsMBMj4RxCipM+OZi9X8UKVhAbD7zTxd97STVJc+a
	 7POic0WkdgWbeCSScRp3U6MmFw6aepALEWevqGZ29n9L9/reW0thYTEBBoNUpSeszw
	 5zGSr5vaQ2YEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90584E6BF03
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977343358.18049.143745732224749272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb610442ffe8928a6a48821ffb54b921b8aed4bf278b949b4a18a38c1678a08
Date: Fri, 30 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769773433
