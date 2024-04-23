Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2932B9CA
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713860423; cv=none; b=nNkHG40//J5uqYq+Oh6XuASk9YFCqzybiND6bDd3IDuSTa4mvp1QnQNijfcJzzxYdeijWPD1aJy0QrrubUMm/IgLkUkW8PkaWwbLjUrgQIQRYGwYzKUnEMi/RUYDwYGsa3SncwTrm42I6qA5QsjvI/B8/uUyUcI9xAJzlG1T0KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713860423; c=relaxed/simple;
	bh=ZMN7gVe2d/xL8uya0SVsrkKlrDLFzhCo2530yO5BUS0=;
	h=To:Subject:From:Message-Id:Date; b=AKQU/OfA3BsGSLQHVzRgrFKrLHU96Wr7kgLlaSqTgSIfZDXJR9aeAqAy5JeSP35KLgz9Vrs2LfxdlPPFBATxNXYDgLngNSxJoj4oRIcxldDufUt1OLQGREFpELrhF+GgFk15Q7Nwnzi4KrJJA9zZkcqSGZp5o3qt4MZ33U9FLNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBn6TwnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBn6TwnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2653C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713860422;
	bh=ZMN7gVe2d/xL8uya0SVsrkKlrDLFzhCo2530yO5BUS0=;
	h=To:Subject:From:Date:From;
	b=tBn6TwnJQwVj+f8AfUTFEPlRSs6FBm2bkKIQDP2TNMqmq3GKU/O0jxZRUdPaiXLoc
	 BITUuFWzFT9mfYCNrBBnlneO/nkgmFxHQh37Vd9LnXMwi4lK8PrrUzkjOuTbFQkxeq
	 1nqOCcMfoAOU6jh1Y6kWgmFMDPz8YbW4vcxAHXeOQ5AYx6rdBhH0/ChNuy64nM5vE3
	 L+r/kawP5U8rUVKpXHSJ4yBzsX2KNUPfRzbReJEqp/CipSkSb46YQjI5hwWJZfgx6G
	 muclj4msL6dNljWhn2/z0C9tvkLMQ7Z8cfkIHdMgmix6SJGAdgOKm9oaURhTTT31JD
	 OrzWt2A+51ScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1E6C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171386042276.8734.2304048366803011421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cc92f08222682b7a66d0d52388b12a437179eaeab6d84d9d8ce58ccb33a9a7
Date: Tue, 23 Apr 2024 08:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713860422
