Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB99A18893D
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726871153; cv=none; b=CpZWzBp0OJ23ePCmpc5Mc1dWaiCfJ/iwzzf/6Vuq6EV5forDvdcgRA+mAZpYgGysdsdDQhn4hJnQu5BdQQk9EvK0cqpBNhbdTcIRv/JScU3NrYKkZUPsbWzn2YNIpO1RkF1zU3zg3YhsN+yL/Yk+i/vX09T6+4xfTC0jbNpP/fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726871153; c=relaxed/simple;
	bh=Kf3YWsKK1jNa/Fju/cVPbAvU5Kr7Dq6TX7Vi7QSORmM=;
	h=To:Subject:From:Message-Id:Date; b=Usjjq/k4yS6a1dYjZKt08pli6QfteQCyoOk5jI3un1RypK2GUSC6p+4Mo8Zu4WKqAzzNHa9IYa/uhFkvkyvoEc6yMYjJ2lrgyYxvAuZHZLQ9MffmDUIp+98uyAlQ/oXxzery2roN5NrnFqcBzlq8vUdp1AxyBxZi9WF/zSLpHss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdZ4u0V1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdZ4u0V1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0196C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726871153;
	bh=Kf3YWsKK1jNa/Fju/cVPbAvU5Kr7Dq6TX7Vi7QSORmM=;
	h=To:Subject:From:Date:From;
	b=AdZ4u0V1kgKxnYEdtfmLrtz4FdR6gzPhwbHxHIp5/ci0iGZPO4lX5eD2bXUCrMYmP
	 cn/7MyY0Y1Zd+9cbvPHi6VXet16C0rIdwAeyD3zoStnZK2A5htmysTrVPyxchobiwj
	 ONxaWGIxyZv697oyf9Q2EreLBIhLSnEzXXVI/8fBqK4+soST2Ev96w6F6zXb3joig8
	 hNqwc88lfLhM+HabKFyP/1j6OiLFVRdZbZCGto/ApkUVtFUp54SbCRdM81y+ccELHx
	 +suldzvKHciRSVNJs1cTVLw+DAAddVVu/6ZgjP1XdxHZUPVh2TkemWLuF/u8ocmt1/
	 7YukNj8fMkh7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D73BCF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687115360.25304.599620988928771921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf32ffba9cfca0c64bdc1431401a5005cf4e6cb6bf68c2744961930ac946b2ff
Date: Fri, 20 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726871153
