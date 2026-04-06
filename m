Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100673290DB
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775471734; cv=none; b=fEYFIdA7oUEoK5V4j4TWX7r/EdmCuP4vY0YY+4MdamYn9r3ZXHL5VXluE+VNJiaS6j+hv/KNAHdyK2xlqKlOAD+KfGaXrgLIkVDfuWp0LwF/i2vRGh10y0BzCD7pYaEFAWyEtgFMMarmWB/PIGr/ja54WIfqLwYi8of86l9JOQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775471734; c=relaxed/simple;
	bh=lOLYGfjgurCIS6SnJbh9t5xW02P85AmcAFMbhrEVFq4=;
	h=To:Subject:From:Message-Id:Date; b=JJ2cjuvmXLStMUWLo8O9FEj7Zi70EiQEkxdH0gn0OLoP0i5wDdGxRQqF0mnRktrtwzqhtvSCUfSU/Qze890taa+iQpJmAjRh+bMYL41r3MLv18B2bO4w8/31rubpO7JMphDaGiefCAGuh1mWdMTtPfXP1IiR1eInv2v/2RyNubQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jr6Vo5B7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jr6Vo5B7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA83C19425
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775471733;
	bh=lOLYGfjgurCIS6SnJbh9t5xW02P85AmcAFMbhrEVFq4=;
	h=To:Subject:From:Date:From;
	b=Jr6Vo5B7f1HrbMTMUODGo6WS+8xNAEX+StVLH+au3hFIqMvo/PKF/cmSmYCkRLNKn
	 wwRsdP2BGsHt72hh/liZulJ6eoJi8JmEqOYhpaSUGl+BiExFA4+h1/g5tkFmB4M1zZ
	 f88bwj9jNjHpz+tIkhbVyS9v2r5slfEZSI2m1vEvfT22t7+m6wUW39ed8uWqn/DrCN
	 ktir+KcTReBnsTSadYbyz9QPvTEoBfwz1zsFZ+TbNfK0TVx5a765OdlzLZJBwDmnBR
	 bRv34fMuZ8P/vDwRgrpspto0ByXen9JY/Ud7PTqXyjNsY5E/8Eo5cGsT84WQkdKgM6
	 LB/W3d2NqWlbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC791EF4ECC
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547173369.20096.13370572798821190634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454cc43a958eb122ba1c820ff77245a8d8462f902ced8cdf7e8193f0025e40b5
Date: Mon, 06 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775471733
