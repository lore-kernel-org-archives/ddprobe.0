Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22886308F15
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773341094; cv=none; b=DKBCTTS9DwWZo5N/RLcSzk2dTfIgCPsBGm9zdDwXNDlfgqSWJ9ORtR0831M4BxoKpfOz8ddGTxKqR9SCGGOudcKJUr3eaUYxdftQiTK9CsamK2nlRtBWHpOkBszSmBQezOE6z1ieQUyp+U3d4Ys9d2orRMjCDBArTV8Lmo/W210=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773341094; c=relaxed/simple;
	bh=laEWv69DdltWpjTLgO9lTvb+Z3wPW0GJMSJKOCpNxTQ=;
	h=To:Subject:From:Message-Id:Date; b=dV3hf4rfC5zXWe8hjZPEAEXuFfb+07dN0YqPNkIv6pfg5RSA6C4yqNr0JHmI8jMUEtJJ9L/8cgn+1n34+XntEK1Qj0gAXlR9+9pDiIyse0X8d5jHlqCHnAZhqCPyAWokYuI0L2iRbaIYkytttVmyZ94JCjZrRkFYNZMrnQJJg/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cg3UI1xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg3UI1xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1884C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773341093;
	bh=laEWv69DdltWpjTLgO9lTvb+Z3wPW0GJMSJKOCpNxTQ=;
	h=To:Subject:From:Date:From;
	b=cg3UI1xq/exP6zpp8UABXfwhaQRmDiKmlY7SoBDIUKNtCE4bmb60oi1zdu0Esy65H
	 OjckjuLuHhWS500vG+Ui2xlYQOqYqa2JowDYV6N6qO/sUEo1FbeiNL46LkIGy2p4C8
	 WLQMSvnbfWZQU4mkDok5Po2YM3RI+f8gHhUoOZ0SDzR5Sf0+Q/xCiJzlMU5W6zZWas
	 WHu7Q7Wrgulwc3P+cZdwd4uNc8jedB7TJl9+EsAUj26YTRcT1QGffY2saWYfVDM1x0
	 kkudLQMer35I3ydaVaFt6vAKeZhRsAsBxQhTf3IxmNL98P8XXiQvUZsNOs8PmnHO5w
	 yRGiP+hcCyIdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA4106ACD6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334109358.12226.3233088341122655443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959285d59c968f49eed141f942f119e9981ad5cab81b7b20abb4826c328fc4f1
Date: Thu, 12 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773341093
