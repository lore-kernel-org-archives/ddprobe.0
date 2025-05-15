Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEE22AEF1
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747273793; cv=none; b=Sl81t5iI6S4P8RDzOyj04K+4u2EsriGY3mBetEBJ+6pBviGFEf3kfFVqjc7Mc7w4LRpg3Swt7HkVbdx+B/Op6AJN8ZiGaU/yJDJ4xp8G2zsgpVyPSAPcrGhf9T4BtbJde2QWeUqQM6v7n/42uheyQzE9rCkSZtp/SwjB2ZYvIZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747273793; c=relaxed/simple;
	bh=T0HS/laXwbC+Xmp1UXap112wBrTJK5oEVhXXB3/cPE8=;
	h=To:Subject:From:Message-Id:Date; b=YjfJjj3K/a9LrdsYBnKVVwbFwhjiTrELFG9kRuKJFqun2NzIqzS+FmZcvim3pvTM1YAUVDEYvvqjzfkTns8PRyk3VPLOeNPo3fOn/M7w4YduH+/YWcQiMiYGNTR5qjU+J/b6PxnjA2MxtLuJhlwRpjTCHdyCOTFIsz1mhM+QN4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBQnpDjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBQnpDjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6B8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747273793;
	bh=T0HS/laXwbC+Xmp1UXap112wBrTJK5oEVhXXB3/cPE8=;
	h=To:Subject:From:Date:From;
	b=PBQnpDjOhGxnZawhNBnz9QNmLFWU0PFCmIANr+DRxbLE4zy7KZexvM+k7gjMYGLr1
	 GH2IT3OYH2fJ09ZXT/cK+tDxpv0bjnCv5+305tHaS6mNMAqT4RsJA1mHXCB7Vj+T8Y
	 5iItR4TB3hgCXe4SobWjCIFCrJNALIet47BTh5aD9h8LipSFkoV0Ia2aLtfDsVcwdb
	 vaZVRO92rNcG5W1tkIECVBRsklgIHJQhTnJENHHShw4uKEAlMm2RP0QchKvQm0OMml
	 2r4A9tvbjoNk1RqKZKyTkysVMRKMuJYoW7gsh9eEBVcGNs+wroCRqKQpNmcj8Kus5j
	 8qzL0P/RW8EsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34FC3ABD8
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727379357.8147.1183567191881726333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5605cbf12c20b4a6bdd0537166a88bfee6caed3640b8e54ee7cbc730453754da
Date: Thu, 15 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747273793
