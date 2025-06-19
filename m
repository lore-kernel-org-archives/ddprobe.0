Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAF430E826
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750375794; cv=none; b=Jw827K4dTV+yUIoe94QTWtAAhE/Vh6Nwzh84zsSWPMdanZClLcAFOvHcXNtdmuL3gFvJP/HL0ggvpGzMLIS3ex2YDXAKL6lQbef7hImkqRH7jhboO9LnskQLTPNCXH6C9j+kxwHJBx/hsTuusaCwQkTfdqLBXQiSLv+BRVH3Pd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750375794; c=relaxed/simple;
	bh=Gnz8zROf+sC61LPN/VqkjUkJRqOVAbhK1yap40PIS8k=;
	h=To:Subject:From:Message-Id:Date; b=XyL5MlFWwGrCc+ces7DtvK+UubF4PPNGTEOhdKJjbh8HdDieYyQlQait+uChNSudhFw5A+bbldyC1+0OmrzhaurjYiviEIEzhHgAsZEipHjWoDT1/2Zq8Rei2SIQHD1nxJ04U6n1yf1l8Is7puRI4DHtx2Q8IMDcNXTEpl31LaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkTNX91o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkTNX91o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C71AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750375793;
	bh=Gnz8zROf+sC61LPN/VqkjUkJRqOVAbhK1yap40PIS8k=;
	h=To:Subject:From:Date:From;
	b=HkTNX91or4AqXPL47S1/l6exfD15CqWlZky7YP421VFsmCXWA7cUpYTyDxqu0b3fF
	 XTBqX1xsHFFFZS5xoVKEhYo/fcUzvzYb9JB7oRejPm9HXT6nxhW6epQ02PRi4iHhKw
	 VgH76190KRZ76OnLmA0EGwq9rKLsYYBiS+Z4/Ryhl9KjyNr+Xxi7PyLMcrXHCXd93C
	 t1k6zaES9lKqqL+puIg2QSzLgYw4jDzmWsvm6zYSOA2Q+oLbRBL+WyOSAQk+/CZNEd
	 QsLqxajlQ0DYhCZ12k4BCN4qezMCJrGZJvDpa9PslPUaQ7JfPNL4qyVw+/DyGJyH8Z
	 3XfbIk5XIxnAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EAC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037579357.8855.6196076145888196087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc0ed3f82877fbf8e7c7bd7b40f9d9b3739c167f3617d6e1c5d41febf52d9d3
Date: Thu, 19 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750375793
