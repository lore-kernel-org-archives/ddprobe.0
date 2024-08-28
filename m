Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4014B16BE35
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724852154; cv=none; b=umc+bcscs2P+eWOSiJ1EYbldfXtsUXctccmTDe5zwk8WvORqPdXKfCvsGOfu/Ed/JCn3E6kh1BjxshdrZ/6UOeO0rFu362IvDU1fgPYpf0n2TbQpeEVsW0//Os7lpUhrs+xbj+pi8SrD2XdVe/ODV/gVXB/VCGJu4nqn+9Ot0XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724852154; c=relaxed/simple;
	bh=plbU1md6KSDtISNWLZDmZvP++blEUjsAjgwpFq4f/O0=;
	h=To:Subject:From:Message-Id:Date; b=k7fqxn5jBeco2YzeArFOcUJicUbl9WIf+DhsNUGGEPZLAFu6tfCxHmu/0MmiKPBYNCYiv9nDyoU8aMsUhYkm+tY7JLxuCA8QNGSwoR9Cetmjobw2L171tppFsG6ddJC25XEAq0RJUgQT+xNuAtog/hZUKj/aEK4oLC8Cob0Cl60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+aYovuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+aYovuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D6BC51EEA
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724852153;
	bh=plbU1md6KSDtISNWLZDmZvP++blEUjsAjgwpFq4f/O0=;
	h=To:Subject:From:Date:From;
	b=B+aYovuwrAUlsHDI6sptKOmdaUxkhBSg7sOxLvxW958a88H8KAQ16GlQ9kQzj/MHT
	 mPGYx8b9ifAOkmhhpnhPMVTsy3E0TrrinEHJKJkHxZjef2oERGavQnvj542lRC4KVp
	 VnZTHQtM2wki//RAA+4dkAtvyUwoy63ksI+AUPI6frAIlo22p1XiUATBQMy6HAFQZJ
	 cMZUJ8kHJzCFwDNOlg4guVL1x7laAc1gxC2EJp3YxWUzIcdMNicE3V7wq8bLgiijct
	 T1QTU8ezQCk5zT9ceBnxFf91x5wZT5ngi6jAP0y2IQlpMhV9vj2p8Td/n/aCO9t6tZ
	 fMz+OFzQjWR8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2FAC54FB3
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485215359.19848.470155449246043773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51daf75ef3ab3d5a5689341e4e595eebc47434b8b5c3b6ebad7d9a996494e827
Date: Wed, 28 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724852153
