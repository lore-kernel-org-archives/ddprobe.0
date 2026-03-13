Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7702F6188
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773379494; cv=none; b=R0sDKDeJ6ihVjtilrHPTQV4jTjVLVQW1VkpA7uIy+1nFvhV4SDnFX5MpPv1oro7G/Xj0NXHXQ4fiOZH/gKnsPXYZGdoV5+ddYMhEPK8CT2NQL+3mQ4uz/1Xe4gQPvoVYgw6Kdqesen+1+7TRmWy1GD3PcmSepsJSH8CT8VOaq9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773379494; c=relaxed/simple;
	bh=+pSWMjEUJ4To+Ezk/UtYllOhcIcxpprSfrM33ZfGNWQ=;
	h=To:Subject:From:Message-Id:Date; b=bu3JxY3UcDoLXIBdN5P3KKrTgTBWgDIMEwZSb/uIMtOYoUzkZwEIB+JSp+qmwoZHQx8Dq/tluUsLLweyPI/fQ9d3LEFR/RrA7BZlXhhsCNsz08wfZekMVSnWZgaWAE2nxZmmutD89dkJBIX8oFmaZFhiR9kzSmY1tTkmmNbRtUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loWyaR2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loWyaR2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D16C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773379493;
	bh=+pSWMjEUJ4To+Ezk/UtYllOhcIcxpprSfrM33ZfGNWQ=;
	h=To:Subject:From:Date:From;
	b=loWyaR2pd+ZiYKciWYYj02vHZ7LRTlgPbxbRs1pCqM5UBan5zUgErk8sBSMETsXof
	 E1Joe9Iz6ZlrE9d2/T7XuD6qOYcK6nDDVPOSjbOl4dK09RmY8zdnoCdFoXXM92/HnV
	 iTix/jsHOc+ZYn+CNL9J3wKBhzs3odG5MBvTjF6QxNhyvb0XFm8iuiopk2vmFaIIcT
	 /A6Z6JDcyFRS9nP+nAvwv4KbYxWR13zy9q3SKU0exvurwtHyHt2i3DkILGAb3AMYvx
	 89ITrYdG1KcPpfRIMclAi7MxqV5fI9zEqphkQTQar9kEgI7KtDo7HQDWfzLEO/tbDD
	 sWMcFFqYSggBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95559106FD7E
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337949357.21090.86406717585402347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69924d0becf3e0598f19ca0d843dbaa0fd4fbf0f315dec4241a08a6cfba65ec
Date: Fri, 13 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773379493
