Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462D23B28D
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788491434; cv=none; b=H3MY8Oiw8+97gJw9oiKYqroT9CkQ5jxS0rkGOe/2ShsdrJ7LaReK/jwKWYfbwLOoSNUL0aCC3jAVgfohj3rDXTMQAUjriImoHJcyDo7WhEfYV852jiFzj83F420Ra6PFV4PYfCl78XiYu3g72V2rDOep7WJFDnFMTJXGq4IIFHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788491434; c=relaxed/simple;
	bh=W8TkZLYhDa7CcY4Jfo9SHUJuMkJwVj6KOSOPbu3Csn0=;
	h=To:Subject:From:Message-Id:Date; b=P3xQbse/aaP6m8hnbdRSZqdjI5t0YtuhafCLkkKo/dWsurZQP1hrKo6yTpIX8wvEMXxAqxdpdopm9IYfiZ7Am2ZRqFF5mr1Tm6hB2K/7VNOg2kZArHqEtcR+KX7M2xPEe2gv48poJ9QRPXgo3kXob+QYX3+sa2sYZm1ujsiFBUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMP6HAp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMP6HAp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE92AC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788491433;
	bh=W8TkZLYhDa7CcY4Jfo9SHUJuMkJwVj6KOSOPbu3Csn0=;
	h=To:Subject:From:Date:From;
	b=bMP6HAp+B+BqUDBBOmWWa/+eSnhn+WLcW0ZrK3qy5XHK5+fES1EnfS/Af5CGoLg7j
	 COpYqiPwp2R/TgKIDebegHHq/DNDJzK010UW77iumx8Wf+EmZRDjw95mEiDuKsu+t+
	 BT3IEAcXMP+dgkRvOpdKlBTBVa/cDmLb8X9hvSdtRqaej/HjH7Cg+3BkoPdQtabW7e
	 1GfxLEVYpx4hgdOgUptoHLD41pRzYXBfB+utOV3tHeDdPWHJVj6S9VqFQD/h4RRhva
	 IgYcAsl2wLy5yEVC0mA9hizrjFrcmdYOowQ7LvHwtO7tOKHtnlOYrzptphRN4mGEcO
	 AoGdfOCZOcLKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC818C624DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849143369.29474.13576205409155631778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a860bfe7e181c523dc88ea3c958dd4e81492571fc687f8663f6e0fea12c973
Date: Fri, 04 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788491433
