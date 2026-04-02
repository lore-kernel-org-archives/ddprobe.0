Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9F93563C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775100934; cv=none; b=BRlyn+41brXRe5k8ZYpEfiG+A8ZYglbbRd1y2Y+mfDDJua4csbqWdj9cOy6OUy0Heu5YUxTP6YOXVznvl3xNv+Q9PvTA84+uhA6gpHf9uMb/lc2rYah/dawzV4GhjspE1Kp3rvOKPfHG4O9yeZ6gR1gQHjMK4eVk7NEoeQYxsuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775100934; c=relaxed/simple;
	bh=uIbTATaeqoTZ/HFmbuxHKpomJe5aIiqsdID0yLFRDds=;
	h=To:Subject:From:Message-Id:Date; b=mb8sClKOMWXBKVAh32G3i/0Qu5SgNjKAMeuBWpTi/gyEkqfsMZGxPheQXF8LTLWdn+dLELFdz7PHRDzmYGE12QGc6TgH13EnowXqVjHp5M4lWhkVPQcYrMIW0m3NHcVgkukn5nidI3JVyEEBuAFt/JYhg4fYCHkcFLCBqsQ6zDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p084rFaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p084rFaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E0FC19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775100933;
	bh=uIbTATaeqoTZ/HFmbuxHKpomJe5aIiqsdID0yLFRDds=;
	h=To:Subject:From:Date:From;
	b=p084rFawRAobDGwj40QERwgYHTmygqO0AtlHc12yYTn5jBeAG2baW+9k+6mKDACi9
	 privdUP7mtSpXbaicAVRD5ZKr42QjBBRshon1ykwL6H6lkvqozDlqXd0/dY5u9M5bo
	 v0q8kw8EdMgATrNbBzOdeSQ2HU4IIXG7sqiiyjRlbEAtSfzTipimWjmpN794LLMoe/
	 j+Vuur/U8WAd/6nL3c7C4eciBqCaKAPCZTISfQa9YF3FuIlHELenUifYzLLdsWLyNy
	 pAluXnILxn2VYT4KAQgGQ+UlVcvyQvzW9d/MBFgNZDjwiDagYJAlIoJO7gPLEAAcwz
	 LGZM9BLpgSZnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AF5111227B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510093378.27355.15209430455115320593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28780df92c876ac123932b84d8fcf02d63bd7688fad292bf1114014d251a676
Date: Thu, 02 Apr 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775100933
