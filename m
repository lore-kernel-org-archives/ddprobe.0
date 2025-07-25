Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235AE259C9C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753429194; cv=none; b=ro9gDaudVtohVxzNHdwSsYf/qmVRmUvt/nnIifnuJ+sEZSM4R52ag1y8IIx730FKaDLSU7LLphdHGaiYD4IBiFbbELMg1oHMYHVHSZYjqnmBOTIhSfuWJy3bApoHmml0l9/qlMjntM3sJTLlj92VJ8jcR2H1MjE1ofoQUHNGc44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753429194; c=relaxed/simple;
	bh=wyGGkkrxVw4OqMke95V3gz27urOeV7sUilYdpeb/F2k=;
	h=To:Subject:From:Message-Id:Date; b=Vz+RR3VCvB/NvD9WE1WdUWlF9CbG9nre7T6pQMNSukPrrdgrhHZUtRvdB/a7BcVlIW6gG4SiWUCXYNoBODbt7EiiFmVJDIaZ2tkvAGmcSF6Ls8NlB59834RrcRWYcq/hjkKgQtUgYepwiCKrPnFgvbj9NSzJmKX0pAJc4U8iCRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSyc7CH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSyc7CH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C411C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753429193;
	bh=wyGGkkrxVw4OqMke95V3gz27urOeV7sUilYdpeb/F2k=;
	h=To:Subject:From:Date:From;
	b=BSyc7CH6bkwnbbli/hsxMGzm/oe0YI5HAoQOUQIS3xoPLgcUEmiFscfv0az//YYqC
	 PNgXk0QrjTpdVc2zvzHlEcdQRDeGSOGsa0BM54VWpfmStS0X2lTzYlZqC3xCThJANJ
	 OcU60KgBxUuf5V0p0dQMSVVBfZ9qtC7NJJKITv9sqlZuWGeMw9TjaYlJBBYNu8sdFU
	 eBQQRkTHrUwzBiE1eu8dzP4JuKeaNxXydXzJ0CPnG24YEpnYKoRWC85kXJWzWJTXNe
	 NUnBBLoKZPd+UCrfB7O54Du4HrNzW5IRWVQi9W/LymBX2MQ6nlGW9UYzg4+sNX6jIY
	 rJVY4Ad7BEdhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E51AC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342919357.29184.2893954382728307541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8813a873bec0d6373d5eed451064016b2886b0e7882bae8e45784e5b67bf8583
Date: Fri, 25 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753429193
