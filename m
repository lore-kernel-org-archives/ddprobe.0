Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5C27732
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767329634; cv=none; b=iuaxY3cI/QcLk+B9A9Oel9txZSrVVs4nBBZkR/RJX+U3a6FRmZp77r4Y7GVQIqGcULvSSUj2C3A5XxSlWKfgOyC/8ehun7yqvFjkdpLA++UBeXhk8UX4huXEz1rU+wksbEWflZ33M20TYLbBbkczqOF3Sa73OEWou64JTzIkZ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767329634; c=relaxed/simple;
	bh=9ZeVnaLFiCJNTnUkLYPl7/M3ckl34XsC4lgY/zMsdAs=;
	h=To:Subject:From:Message-Id:Date; b=XWlFmvXZ/99Y+umlU/eTC/MiH8k3asgxzFfC6AZbAd8bGf8qZpA7gAs8w5QA5OS08GHBcAPNvsNn7tU+1unhZd3vxYWz05fVp5Y3EuLuIo77LkIP0TM8IKVj5QTb8WqsXoemayot/CpIRjyV8AJZ8rSJTm2a4W4iJEUE/MNlzSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuP2MXk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuP2MXk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57F1C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767329633;
	bh=9ZeVnaLFiCJNTnUkLYPl7/M3ckl34XsC4lgY/zMsdAs=;
	h=To:Subject:From:Date:From;
	b=EuP2MXk6ohiTdye8Edgq17BXei3henhv4B4MIDkt/tcUSNvfF5NaKHyatuqnocMS3
	 O+pBqnbFLhd5IIAFWGrxl5y1F0dZ01pblE/R0O3VlJBjH2EUPN0pUDNfraAyP8buoo
	 WBBEuz/FUkOcEFbxQ477vH19uUBNXhqLavWj7HELOvIHRsSonmtlYFBc36MYWlWNQf
	 qB0ZtVlvzbXGWusI+eDmNSB+ujbLHsJjozSLq/mPtm79aWhTQdamuwKVDunRZ4/sLK
	 eqaBOW8I5ha9ruCw4KiXScwGCYaJTslkN4EgvHVt4JN7IsM0TPt65QcKlu4i62DhIo
	 0cR9/HvR5IK4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC8EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732963357.9121.18023302648579340327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe5bc454e8fb43b2bd5c9679d712e709bc59b20d688a030ad433afa4d4a47fa
Date: Fri, 02 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767329633
