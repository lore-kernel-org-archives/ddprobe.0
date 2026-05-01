Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461E83A8F7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777676854; cv=none; b=XI2t58ndGSZ7WBiw7r49CG1ueU6Anb3YDyhSkTjwDFjX3LcRfzkxIcoj7dQbURES9Me7F4E0m7dMtmhIal55NPseevMglmTrp41xaqw+kEUBQN6D3pc52bRok2Eoc1wMrDGzZ5nzfh7XNR1rz2ibCTRcMvJphkN13DHwBUj98MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777676854; c=relaxed/simple;
	bh=oZ04Jrj3ui2jryHV0RU1/mU3DjDVwSrouf1AbBxAWvE=;
	h=To:Subject:From:Message-Id:Date; b=XsUB32X7o8dp97w3v1P3Ir7Z2owsyJ/hD5E25JDoAmGGgOVKw/hGNtkpv777Xf+8UfzfbPperKgFmYa49BrsPksOew1BBHtdwJ74924NDNjV0afWRIvdU0BV9I4LwWbKQEhF++ARMZotC1Z2ZTRNTd7YIpy5fW0JIa46S6Zwc8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/OLxcfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/OLxcfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F2FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777676853;
	bh=oZ04Jrj3ui2jryHV0RU1/mU3DjDVwSrouf1AbBxAWvE=;
	h=To:Subject:From:Date:From;
	b=a/OLxcfmuKHICScJ2yIAGntUphF7jM7iKuITnsKVO5+UrhMttRDUUkyx5k9AQSb68
	 PXEAtO2eGvKOY8jUtfxhQpjkn+N3J/xIpP4FgQ51aSjyp+XU2P1b1FkF3aA/zjqcWT
	 TplnOFsiMLv2s6NOX8K3C/iPOVSeK5bx6N5cd9FuSiRkpVtmr9VBA40UJs0UwT3XnS
	 +KDXMllhqmWaVZVcTBZKGWNesHOoJGBjsJwRoYqdQUncy+B/oi7OZBTX0tHLlzPL3z
	 qAHwLSqoftKZaFXyU3fubouMZta28XeaGh08GatgRLAHPEUmiRzEvHWBjvIyfXnnPM
	 kpwtacLCc1otw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6CFCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767685368.5322.11769778331630524050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd369c004b2aad7ee41296101f0f74d140fad6bb78dcbb91dad2a486f6845add
Date: Fri, 01 May 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777676853
