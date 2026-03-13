Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC873321D4
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773443094; cv=none; b=tWvrWC4SIhRYQWAuoqDwFYstzcZ9unGdCsg+Wa1xLLtnp+2ovnOrP0YG1vxLGWA6ZvCl84APCAxY5+H7rahHlIwldWqLPqB8KqkQg/IoUxPebEg4l7TdJM3uLmQvBov7xGx/LEcaT4q5eNLcgEcnDUxQEmz0kYhTnd+TmUZhQsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773443094; c=relaxed/simple;
	bh=SuUyz78UpXHbALd7drGSt8yvIcKVJzpCiXUEGYk8C5Y=;
	h=To:Subject:From:Message-Id:Date; b=bbUWXtC7TVJMKB/F//odvpeDrK1jRMhOfQf5fFTYjqY03l50V5mkb/ebE+B0ydapMj6vDKjosgpXg7zyKg0tpNssN7LDOGANRLssR7HOfraA2azoU4dEIzv1lATBlCQ2hO39I9kyNftNGwrh8YBJkzBQt4M+iiw8GTbBZe31LfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dV2XOlnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dV2XOlnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95CDC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773443093;
	bh=SuUyz78UpXHbALd7drGSt8yvIcKVJzpCiXUEGYk8C5Y=;
	h=To:Subject:From:Date:From;
	b=dV2XOlnUWCdLhyQwYD3g078Q+aWv1j1hGuxk1nQ7c4kBdB2iIRzVnMvlTw9nN4tUg
	 Hk/LLf3dWWa6T4og1fFlGAclikqWVuHQPNYZ/RulpJnGjqjsvkiVR5ssQFOXX5Nf33
	 1b1LTrH3sPR9YxJTNq1V0USvfoe9cZwAn/hb2tjbj+Af6bE8B6L+zGYf1AfiNCG3D4
	 G3JsdAv1o7vesNqjESNryR7WGW0vP4bseb6O0syTO2tmK39zOleGwjZ45BmMYa8CYP
	 itJcqo330FUGghCLZLhcV7X95e5hBdmMUQgW8jIuDFfVLOaphDB62KNzaNN5O1msto
	 WkcqQUG5IontA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9642D107BCEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344309359.15779.1487833881341039533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693920f592da9a56a64114f4400ea746e21bee19879f882dececf1c93eb28d41
Date: Fri, 13 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773443093
