Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67686176FA1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715383943; cv=none; b=r/JXe9SYSJT9icpzj8q61kFuvQ6SbGAIoWzP6+aY3exuowNorHVj4CWMmX1G9q+qOJjpJ1ZrTcF8j9u19UTZTwBtd4eA0gOuBR5C9BNohfHtT6VQzQY5+/JUV0Sml6rUwWio+bRNltp0WXZWq7sVzLByEA4NAoVhhTeH7sP38B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715383943; c=relaxed/simple;
	bh=kNV5RE52MeK/Y8Vv7wlA8eAg4sxQcHsldOWchxE124k=;
	h=To:Subject:From:Message-Id:Date; b=cp+eWSjx8vImXO9SCb471V58AQ3N+LTVx0Ljgu+TbJWIphFyfApjXx1pcUwKf3m4nqdq77IAGDDSHDCSd4fu3KDEwbxn18JeeBaFQ5rmnUllzXM+LlgMNQqZfTn2FybUuVlPuHsCl7jApGdnNKouUQPkuY52MVcOAMAbw8/nvo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ass03tqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ass03tqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98AAC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715383942;
	bh=kNV5RE52MeK/Y8Vv7wlA8eAg4sxQcHsldOWchxE124k=;
	h=To:Subject:From:Date:From;
	b=Ass03tqR4iWJsk2G6FwB64sH07aspouMiiSJXCDu2bDyiiDKtNBngDpOQt5bW09WR
	 TuWg+0bOMrAO2UbBGnikdmiMm61HH8SEnEgtSDuRIvxg7gbbryC9oi+SDskHnuhUW8
	 Smytx0vzqr2FFlEKQqmkZNmE84iTqwFtsIigSyCbn64IuJ+yvccLr7o5Enwaiz6Kh8
	 AZKgUiuf7EJHpsHV+R5SNZJVwEL6MBkJdQqVotlMdTpP+d8mloZD3n5MrB4OjNosnn
	 ++1XfyGeTJEMdcJ8FMFgFUZDVBrhir7k2ZLtJWWQu8g+1x+2ObamV9lOgczRI9mCyL
	 D6MKbhGa63o1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42D4C25B5F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538394276.15677.10232209810158257920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146ff93584d36db767d1d3662a05dadc3615a35a0951b26e3ba210c01635ff0d
Date: Fri, 10 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715383942
