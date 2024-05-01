Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2F383CC2
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714566143; cv=none; b=kHaybmpV68GSnTzT4/8xKidyu3SmpivkHJzw9LrTLPCYrglHcem+cVT1DmLEKoePiAjqOm2LK/bcyYipwBecYuyXhtijpSw6pG9Neuafm/umNI89Jn5+lFy/OgU6GoQOHg4IXe3gWDdSYI0aUXr8WC8QVATXdpCrWFE80VvnJRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714566143; c=relaxed/simple;
	bh=bo2FEdgLGM4+7IOWYgTxGwvhQ99/TFxtTlse05CWDVM=;
	h=To:Subject:From:Message-Id:Date; b=Rwk1K4936HDtMsf67K14m88N4lidXW2sI7kC2M3TdEdUa2tXO76lDpb8LlvnKZSuxgeltApYYG8z6cGBZzmOknh7QoEV+SmBa7Yenf4GI6D+O1nxMVg/Twyyf/KBXvK4ou2JbCbQ0U0FluJXcTiMViBwBckbK6xcOp6SctGDIoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNDs19Ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNDs19Ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EDBC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714566142;
	bh=bo2FEdgLGM4+7IOWYgTxGwvhQ99/TFxtTlse05CWDVM=;
	h=To:Subject:From:Date:From;
	b=mNDs19PhORNn3uEtjQmwzB0rP/DY+1uXhCH9xiQGdaqO+pi4CRTK8KIpGRmKQaaTn
	 nTsmf/pRYa654SUUz29oXhmQEWcyQa/9UFLGrbQRJ35FuhUxifLJV4IFIwuHjb7h7b
	 wv+EwK3vt9to/DMFPxEqHzmuCuhEi2xGQ7LQf37/XuOrl/OGR1f79bkOM2xSkRk8/f
	 w3fMSTjBrx9IhZWlSCBZIXA/0J0JZuOh5UJQjg0IaN/shnEQPErTlQwvfhfOC0I6rd
	 5axLQ2XvSxqEvyFNUgqopuTKhspyfDVbsMUANode6TIrP63NkuPpb5uve/ClK8uM+s
	 BWb3peMfo7Jxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF20C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171456614275.15453.2170381841307195892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ff179fe47fcedefa2237d76df173766c85e4d2449ba3882043edc5b5fe15f8
Date: Wed, 01 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714566142
