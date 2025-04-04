Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6285C2E62B8
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743740394; cv=none; b=h2pXjRxTRNX7a5Rh8TVqv3O7iVoBWpeUVXytaKsrhQOx1M2e0+wL7cyfAh8TJp2iqHiE2kSvBZzlOr+LcsLvNkdKK1u14Vrq7reO/XBacrFhLqaU+3EICKiWJ1iTImdzePBx3s/lf8bfE1rpC9u2BVhTt8NtTOAQ4lKTvhjyP7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743740394; c=relaxed/simple;
	bh=2deIokZthvbjYyWEmUlwlKpDQ4Zafjl4keFz7dl8UQc=;
	h=To:Subject:From:Message-Id:Date; b=Q6Rn6PkaEk2XgBOYzlvzKWILXZ5YUTHRe0t1zJMJP0iyZ77eYsHiyDBGdLj7LCzmTYbd+9VHKwbA1ZFwg3LQsQRez3GJS8XAQA4/uhI4+QvuwBJQvrhf+h3FgliZDwbMyhdm4S6ZdWDhu+xBUCuFhNEWffsSksW5xBEH3fTLoFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3MSYuGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3MSYuGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A91C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743740393;
	bh=2deIokZthvbjYyWEmUlwlKpDQ4Zafjl4keFz7dl8UQc=;
	h=To:Subject:From:Date:From;
	b=n3MSYuGeVjOHYO4yG3ghY6MNMGrfKFGwjSEYARkD84xGEfp1A1DUowTe//7tmG2Fu
	 fdHhISmXTzSfoD8nUFELzPbEA6WCsSfj8X5MQAyNgH/SFILfI7n1sRZ8rsZN3ixwau
	 /upyWrQk7wNflrIMCtvZgAjkaxUPNnKGdBqDDH3Y4e1oFyKwgme7fJvZRwMosj3O18
	 bfjP/FzsIDS7Yfc0cF+pARq4+dHCf3nn0Pigo7cxnliQb+mLrhBFH3uC8KXcderV4C
	 Ja1skeUxCLXHBNpZzqjy2YgNc5RIkoyeu4MW6VF7pKzkVKm2RWlLhuMZaSML5ncHHd
	 +2usUAOE3vOAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61AAC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374039365.16639.17298511391484971279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80716f695ac68d8986c5958a8af482c8c2f20ce31ed3f8d09bdaf68f1293f4c2
Date: Fri, 04 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743740393
