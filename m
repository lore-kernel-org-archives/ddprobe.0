Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7FF17BA2
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770149034; cv=none; b=ro6OA+4o0YdBZV5P8wJ/3aaHu3DiyqY6SJlZSA2W7IH6HAO/SPDLIMl2iwhJOm4T7qvflFnq5MU598C/hH5dd6g0Owu9a/TXWouTNkLWvkPfPRtQmebc6AkMO6o001f9XeiyapNT4trmWxRM7mjvBhXTt4XozQI0V5bU4tZL75M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770149034; c=relaxed/simple;
	bh=oems6D9VXztz2arQdn5oiyLLcBn0gvAQdRKi1ciF+vU=;
	h=To:Subject:From:Message-Id:Date; b=ldjq2iCxFqhjj/ram07++4sD/vHr7apYq84c2xXQUYmCrUj+zOcCpEZ+pCeyEqCbJ/A7fd8VlEd8Y2LPNFtZrXo3wVX3KcFZiPUMXyg3Y69vzzSSPWDdoPUkNeCXQ9XYMiAKKBYfResmxeDybNTYx8OKv8mPGfu5EJDbegzf+Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ug3WJWJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug3WJWJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEF8C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770149033;
	bh=oems6D9VXztz2arQdn5oiyLLcBn0gvAQdRKi1ciF+vU=;
	h=To:Subject:From:Date:From;
	b=Ug3WJWJ3SYcldUmH9OTZWId8/FedPoWJC8hb1DrhJclQ4/YRn3tFMEgHAJqbXVDHT
	 Y0Gnscsy+/En9/TAKTxARShFB02NXjMuPQfDwjOa5my3fvqtz/SyD0CZMiLQrkR2/p
	 6SWNzUnNkkyvMNaBoy2ldsIQWFc8sWw1uR4sUuVpRegOG18dlzKYpf4yMjSLvw+hb2
	 PxwjUno+b2CRnAWAsW+lRcOQNcgdw8UWYsihgPM/GV+NWuhOP/WFLzSGKMgjm0Opu2
	 Z/OULUQKdfMyuQBmRI6PtuDZyXPk799NQLQq68HfmzN7elZwqmGghrZjLkBjRSQxrj
	 eZELrPBu78Jqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E6FE8305E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014903366.31785.9734569215183369598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79546c66820d43a0a1037ced25d66ea9fb7deb145acdb45b730a866ec06d382d
Date: Tue, 03 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770149033
