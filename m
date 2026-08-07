Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4298D38B7B4
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786119634; cv=none; b=to7cqFNsRwXroU6W9zfDYn8eGfvT7mKr1y+d759VPhNydC9Tst2y4IjXnTU/HAPBzwB3ImVNqzEq5BimTtipQYD6cHkKfvYVj2xeEvXX+PX2rV+LXQCqSVqZ4IPfeJmf13x59NFx8vWVlfYF39gyXElpODYAnmdjXrKIH2BS8z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786119634; c=relaxed/simple;
	bh=Jv4a39b6Ji7hPWmbvlXIvcGoHa1KSPRJvuUcIAdj0aI=;
	h=To:Subject:From:Message-Id:Date; b=haKJuynKkYFF7zMmCRSJt9Y3/oorWolfji6PjGc2yfULXH3JbSvudmA/pFq5GZxWVyrlO0GRk+B5dsFgKf7KPyGo0uY0GQqiX03PVgmSraddmuMav4Ua4WoIpbjdYU2Oh7acvI6/SDeb/7u9NzOsuhS8a/8gsr/XLoy+JJYZTwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/6XMj6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/6XMj6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81BDC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786119633;
	bh=Jv4a39b6Ji7hPWmbvlXIvcGoHa1KSPRJvuUcIAdj0aI=;
	h=To:Subject:From:Date:From;
	b=n/6XMj6gDns0ta7JAoD9WCt/uRu8qMmmjEUt7arhW89WNqfpizsg9+op5+69l+Z50
	 7Yf7a+905Acr5Ci681JxiAeox3tsRUMftIoqo3HnVU7RKaPM8POfqwRa3Dg7M1agUg
	 QNWtlFInvHTPFRniTN5kIgw5yh03c0ChC2Zuw8guJk/b7Gg4/KgIdutevyQ20xkuq+
	 5uRIj4/DAuA9TaQieybnazBUPsZFSIvyD4Ezyl8UKJAi5BxbLoyfxf0tObEp+o2klU
	 ozmEs0Kfl5L9E+VcEcfnmx/Pv9foLdefIvBd03etGnUFD1Pb3UN6H5ZT8/W2/VZLuL
	 C+tJ1v/K5SkdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B127FC5AC82
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611963371.5560.6068449433320662842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5661b195b86ded8e4ba8a6b4455b856cb8ae50a6c287f36aca37789976ed483c
Date: Fri, 07 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786119633
