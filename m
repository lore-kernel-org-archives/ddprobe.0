Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB5D1EC016
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742542194; cv=none; b=ADgYyd1BsqBjA9oI9bvbYwgIV5vu5qT0Y9zcbEeOxn3cxQhkkplrulitE1NKBTxZXA249Qp3LI8bTHsmVMNOJw9NK7nRYLAUjQrnmzpo6YUvAfB6g1+MoPkpum581s29gRlioKecNk1FEYZx35IGgI5MOAeKyVRp7eWPfnhOkO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742542194; c=relaxed/simple;
	bh=Kla77H4mfLTeGK1GGGhKehPwDX11VVr/gqjVubKar9c=;
	h=To:Subject:From:Message-Id:Date; b=gNzCuBwGm3NsCo/GpzGpLgru3U8Anxms8fllqA7pNyb5INul0TQxFt8KPYjeO3AkWloCI11cwHjJZbIpw6N1GOrXGSr1pIWIuIP/Rg+ryAJ6neNQxdDur38ZVwGy3hl626kF9yogsjffUKZijuS9ERd8v5eusA7lMieGBgojDZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZZsPhD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZZsPhD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7749C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742542193;
	bh=Kla77H4mfLTeGK1GGGhKehPwDX11VVr/gqjVubKar9c=;
	h=To:Subject:From:Date:From;
	b=aZZsPhD+QQ7+xlxVbf6PVte8FNTWqWvsOEsoDqn5tYHuypOiEJcFBq/0NcmyXjt/4
	 Xo1KTL3pdaOD278ZxA3IMVCcZXMdvXVGqJnb2fZtZxk/Ada3dOKygkyeaEvFJkL+gy
	 Crl6F2xp8GgAlSuHT07EwXQzhd9reO5wVSQR/bOqe4lqypSc/6v7F5DmaB05O1HCca
	 Z/h4A/j0CSwcFvsy+Mqwxou4kj6bouKNZAWbV0afWQyt2VHaWOP/sq8y0D5cI5gkeT
	 C5EhrFvKz2KDW+fP1PKMlL0dQSmrQqZEgoMpZFRPh3zsjKCdBkC2YN/suuAH7Mro4h
	 JObB7m3VDKXHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B6C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254219360.23446.8802751857687208938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fec40668f04164b0ae5fd0014fe6a51997946ba0bc927e80d5c96b931549e9a
Date: Fri, 21 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742542193
