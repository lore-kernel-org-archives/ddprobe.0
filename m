Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B4F3A1B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706739497; cv=none; b=LWOtxSefrHuZ4MK/JaLCRmP0RvyxQjVfs39XOwIuIIHTwoVF1FmaT5aQjabXp7Vs1FAVFC4Mi6vEhNaXV4vBPRti6zNtoeFsOTRvkrWtwW3pAw9G6UQJVs1tueBhIFwPkRWnQkTpcJxCqCR93c2Xzqfvd+Xn+SMhlkS24A1b0lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706739497; c=relaxed/simple;
	bh=r3I5mXe37UrYCXWJKJmm+ipOWoOwfxxLhFQG0TqWDTE=;
	h=To:Subject:From:Message-Id:Date; b=ElxAkxFZ/XMoNfecYANWTWB6v8ByvkgprA6LBLh59wUoUJBl7TQER5sTcYOnU5+xQPGQAe5MrR1iFqfZwHU+Ml+SyRAj8ItuCaefxgvQhJ6Hd3LaE4xfpS+lSHayWvkMgy1rBwGxkm2zPwsKuLAUcAYe5/Pv56MibV1q4S9HPZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Km+87kYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Km+87kYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DA5C43399
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706739496;
	bh=r3I5mXe37UrYCXWJKJmm+ipOWoOwfxxLhFQG0TqWDTE=;
	h=To:Subject:From:Date:From;
	b=Km+87kYblXaazTJhAN9Sn5oUmklo7doNIDBT27Jb4yz9OGTgSRmmMYa3u1AzVooWv
	 Ec+2dfRz55KE0wP38TqP09+aP8XaDJz0G3uU6gXoSitXJLJz/XwmStFV9lKJXLCdIt
	 rQSyy1l5xK19iKP6Y4EUdI7OJ0jIZlElk+PrSg5dvi2rvikhxHRYttYhU0F7+fs32N
	 XhvMAGEvXxyhZoVW+iqyvCmU2DLExAUqPSAJZbuZhawjMpRUFSAc2eelzy+UKPuXs7
	 g9JKQZxvkLrIeVZTmH1qR5nyzHDZORglNG2d2apbnEzpq3DKSb+n0ChbeJTu+7uVbP
	 LVUuQ0DHxKmKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D155C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170673949637.9770.16490110729772876815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27f22c71ad4840b3d1d93c08179a38933f6e8344942a95c2a19291f2edd8ba4
Date: Wed, 31 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706739496
