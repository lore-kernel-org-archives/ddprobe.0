Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD54F6A33A
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710956897; cv=none; b=E5tU8U9VXtNHs06jaDR8EZEJibrGPEL7qT/x0zKRoRdcUks6lqlHNKFgZMzQmY0avClwh/yabmaS1uNsIDljMEudwKOanbg6dL4hMgH3ma+pFgUEgJA16Ou+WLmQqE5gfLS8oR468VNTbla3oK074AxtdEdy7JrjbNvnRj5SD5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710956897; c=relaxed/simple;
	bh=y5yFsYQS6CiKuMBeC9vP/aFrx+2Q2wIz4gbvsNdMGTI=;
	h=To:Subject:From:Message-Id:Date; b=Iep5cubt+RSXcLoxRwfy2TGtErFIC8YaexFjFqSS0ia7m/ciGAOcUfhzfv1Z8vaB1ikIMSY2G0dUWMr0wPhz4deAZmz985aE+7oSXv0HJ7sn0JcMisI3ryLnwTiqbieM7jwUqSnULKmoidQykEWO4zXz7jC8eAdHeE1c+JAVZIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XA7OYJVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XA7OYJVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7904FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710956896;
	bh=y5yFsYQS6CiKuMBeC9vP/aFrx+2Q2wIz4gbvsNdMGTI=;
	h=To:Subject:From:Date:From;
	b=XA7OYJVp9S/P7FvTjo8rOVmrNgvHjSGxtPdZlS6fhcpkbQfUEIRnK28BZ28CSx1VK
	 llri+RuGIuCqJWCQotQK1HUV3xwF03YJHdNlBuXumGr4OAWsLtfq1MHn7UPLTIEgc7
	 4bHPD5u63wRTuKBhkoNSVaGe5v9KMEN8ACdYAcC5BCrfx/HBgkC+YYeKbO8q45znCp
	 yAwD7y0YkkyEnZ6414rUe/m3F0HjQkYdr/emMxGAXCWB3s69wQnqXAxSb+OUB1Z0gh
	 OpshESjcOtLn5Z22V4tiFq6upYHR5F3TBZG21qO1pTyTWBmXpq/UVG+YDZSs3Zs8mH
	 CswT7tVkqEMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64567C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171095689638.21426.15861378574442163043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fffdb09ff72108e1edfcbc35ee110e1d10ec934af08d932627a838d0abbd05c
Date: Wed, 20 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710956896
