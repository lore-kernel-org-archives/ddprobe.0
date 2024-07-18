Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BF684DF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721315154; cv=none; b=uFZtLgW+BU+aNlVGGndqJOz5yJMilYfs/RSGLgKIbK2TDu8VWBHTvnvo3KPZbRVKVwns6LjZ3Af7Gcc4+VY/4xmXZemNIf24mSOo+k51b5pn6RxKM0ikyoR2b4W1VQVHeN4y1g8y9ELXE66/Q5ajavuyFfeAswj7fXKkLqOnzsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721315154; c=relaxed/simple;
	bh=gMs+DzMdC9uG3vvjWHwtXfXqEvlrN8KJtoQjp321/X4=;
	h=To:Subject:From:Message-Id:Date; b=AwN+L0H3tob/SrVjhdbMgN626CWpo/2T+NzNmIvL6N106E7Yc2WSrL5vWeJvoVEW49g1PuLBbR3QjgyAz6zTS3x5khQ9xcz6/V0rW+zAlfO1JS4cNn/eBpKXdAog9AEqS5EdchittLMMGvNyxxe9mAfpox4wqXCX5kTnkSYNJqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuXvmInv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuXvmInv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63D3C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721315153;
	bh=gMs+DzMdC9uG3vvjWHwtXfXqEvlrN8KJtoQjp321/X4=;
	h=To:Subject:From:Date:From;
	b=TuXvmInv5cC9gm5Kdx28l43rlq6TScKHHVtPMz2GlccTWBq4rmYGVmgSZq3Tn4djx
	 JMbtgrlKRTWuA+N3YeZNWOs7AGEnJ9xRhclePxKKLBK3NWKaAQsSVXvJ+DkCnKX8Ty
	 +a8lAoaD021D+ncb+7rtiTQijzqTKTXMD0L9CAkI118PO4Q8JGLig9zk6LDrSd4E5e
	 ozdhcho8fu2a0bvK8hxBqKK+jUb+1zrGqEJfu6ftJrAEDB1w41QOCh00T1Beq2ML0I
	 b6Tc5MOHNFbh6k6jBb9s3cRAAv2wug8pKhm8vaEEoxWpPSPLZ6bu3uyZohfoa+oNOR
	 bpHrfW/nDoiAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0D3C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131515363.10219.16788409203922929339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1394060de1d944bafe359dc9ede6d3f9aed8ed1e8b6bf38c38c7d1e5512848
Date: Thu, 18 Jul 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721315153
