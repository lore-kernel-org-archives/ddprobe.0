Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661D54499B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787155234; cv=none; b=RRQ4EHHLLkXqZxlDTU2Fnoq4p7Xz0OICx88sQGJU52d7NhmE38shZYu2Qzwt0UiIGZ+BbVStSpyxrU+02CKE1dOj79qtiWGZtCRZwtRYeaQrdGyHG1OiEFzkBCx7+I1xUv44F9OfH3ffLexHKGOUNTomLfYwqU0PM6iNz9R/4xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787155234; c=relaxed/simple;
	bh=RH217aO7YH9ypeL9K31o3D2TkYzh/jHeA4GEgXjyQIU=;
	h=To:Subject:From:Message-Id:Date; b=WObH/HSVbtL5V0VUSvVnMROy7wiH9Z6XJ8W/rZVPoUdEw8yrAXqJZEam+ujnc407k3BL4ZlP5cu/oJmXeJ0R6faqDdcJrwLI0xwSscH5gSC6NCW2OXVC/FiSsFyX20mKvcd7n1A2LkkCNymIPDvLTMRNBgVpijVOwc+yIBIkmhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQVwsdg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQVwsdg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04D23C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787155234;
	bh=RH217aO7YH9ypeL9K31o3D2TkYzh/jHeA4GEgXjyQIU=;
	h=To:Subject:From:Date:From;
	b=qQVwsdg+98/q31ySuIULb7qVHSrk9z/gQapnaTOG/Vxri3NbfkPrZ87M+8pxdU15g
	 4iBKk7orByEzO/zx+jqtzoPinmr3KhsbgwpI8Y/T6x1ph2vzMAa9segO+tYN0/KLEx
	 eLvp7Kg/wLH2lQ517mQbk52KDmiz+cEVK1jyRBvAw9pIkYmk20AtklIXnOnmGkMYKN
	 GysvysHGqzFX02f3B3B5iowwTso8/e9y1PgF9MqOmA3Qp2wGIA0Zmco7KfVLP2IM7u
	 uTKaLYQG1YthiUbah85HcEWvoseyP+iWEDJDIypQMBo3NemfmDb6Iei+GPIPTKoXsC
	 8eGh4iR0Kgngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3A7C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715523376.5180.17398868275798983180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51475f3ce3ffb4a7b7e17aee9f9bfa05bc36bcf6da9a7245434204661d1fc0c5
Date: Wed, 19 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787155233
