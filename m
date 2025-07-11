Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B722EE272
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752249594; cv=none; b=fXXkcQUJccRn6+ewKC7EgHjAzhIVeTkoFGXHlWj5PBslYVIGIijKyz0CsGN5p15TNK1g7UkdX1oOhXGipFrBmqQY1WJL5Lgt7d7ocbcXRC4OJxFz0VTO/LN/uGRV3ZVqa1tE5pOSwWrtyIgRMJUmGs2zZQ3rzEEvM5V0Q0cDO9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752249594; c=relaxed/simple;
	bh=tGOSmmU/pGl885oalPEz9ar+b31Q1qimk8Yt88wnK4g=;
	h=To:Subject:From:Message-Id:Date; b=u+uQFZ3dLnjmY6v80xg4dab6hJzMhcqBPiZVkfCtxzJ5JAeI39yz6CGTjPccCJU+R29+p2cMDlBGD1hEugolw4AXXRKQ1W9d4lzQOC3MHEQ1yQvDj0lYZJbUBHWt+ET53u6Y2o84U+t1/y3OnES+85BtaRu1hKK+g3wYGVK52y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqJmjZNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqJmjZNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3E7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752249593;
	bh=tGOSmmU/pGl885oalPEz9ar+b31Q1qimk8Yt88wnK4g=;
	h=To:Subject:From:Date:From;
	b=jqJmjZNr4yMoXkWuTocL/CSjFp7sl/MhkJNO+/YkAAHiJv7GID9hFtzJ0F96lAeTP
	 b7DtBN4czYgUR9hqNheULcN5Z2VixzKnNafNtLgYzl3mp7ksM7MOVfp+jo+r259ch4
	 bqmOA+/fLnnKWlPXPcyiedyMZA8uO7pGYegYVPwJo1yf0HDmk+AES+tI1uu4g1TfIk
	 t8yuVBuzRGAqELb2DzAHAnUjxX2vn2pshw5GC3Z2skQqy1e/ozMlXtoGgjatLbC8u8
	 6/ff3xWkVEP/6yxSmwgt6RIFhf9cvv3AAJ68wpyvwa9sT2mkKmxf3D6n8pt6dFp1bz
	 RXagH8bh8LMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D3C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224959357.28783.658368401195036334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab3ec69279a404f45d697e47d83406e9ee869c6cbf81eadf4c36b2a469d30e6
Date: Fri, 11 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752249593
