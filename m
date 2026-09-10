Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45221343897
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789081234; cv=none; b=HJkn9zeHuNTVFHqdgE0mgWC83QHe6FPoKqcXHBvYUO5q5r+NVBgBl//sTzlVLJ/NZH2iu4hMGY+J9GcPXRKTPa5SLd9VDri9cv5wHtACZ3CU8g9DB87Nst5C0ulKlGqibMfTHNAKdFzRUn2L4d5x2GOV31v2pHhUcCArNih8SUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789081234; c=relaxed/simple;
	bh=SOZfZz7Ta1Q6jIV/dvWaMlONgnHT4V7bXZRJ6srCauU=;
	h=To:Subject:From:Message-Id:Date; b=eEHJC4g04lJoXXURv6aBWdo9TV0J+owybg8LN4JvgVqrbCv148LW+3dPv50ZUKJJk4yccL43JILJqVc9y8HEuyR5k1NM+Mcc15aUTAzg9TL9TvAJuo0u+hqD7ZAXFQlcz/QcOwmWC7haQtDB1UoqYZjuxauAMuajfERl1FrqRSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8XJGVzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8XJGVzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B2FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789081233;
	bh=SOZfZz7Ta1Q6jIV/dvWaMlONgnHT4V7bXZRJ6srCauU=;
	h=To:Subject:From:Date:From;
	b=M8XJGVzCmWW8viuYqGODF0cV9dSTFWxTH9imdCHrBibYQlngKOuCHMB9koVhz46Lx
	 D8uxuc765T+Mz9DprJ1UCi/omLRUEEWD7bh7R1urgt/cCZqQDRGxhDIC9+f5g2X7v+
	 nE4GX2N1bskvo3R7CSii4CGviuETc/0PuYF7SqRydOVokUiNmUFfEjNtN+MFJ8WDxI
	 KUrutfOPMs2LA7InX7vK4KLQxv6c9CU+mTSjsfDLcJ4r5GnES2nTcxbMS736rQzJL8
	 2pmvlOq7wu83R7kY5OeS31NPsoFJ7ZdUqksiH9B+y8ialDKK7t4cC5rPJLXLGYehe8
	 ZgJlDYbCyk3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F4C79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908123369.24780.9678341225682500108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5e54e6738b1a64a68039c4a69fd9c7e066f5c29226b36a3a5862d2439c68c7
Date: Thu, 10 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789081233
