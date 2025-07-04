Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E63272E74
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612994; cv=none; b=MRoXMB5GL0Nc8AKNrggBXB9tJTx+BVnrafIuWja5Cyo34nXWvVoOk6HrcJf8WPnQYnD/sijQFl2ASQmNaTo84WZ14C9GQJOKhZSzCbQL2A0Bkved3LvWA0imPXm2GqEmgMMGtuO2ez1aUvRv7EoCTrZsZrtuJwpT5Z4g/dnDmLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612994; c=relaxed/simple;
	bh=9p1tRn7FVonFFnQYHymr6NAob2grzKpmG813w0OeqAI=;
	h=To:Subject:From:Message-Id:Date; b=iFqfH92gEyklEtNWe081oGtc7y7JY2kLsq6A5EdiDH09ETTpt05dFkFDQ2tbBA/BpqIxA70F30kVgZ+bHbVCu8Mw5d+dlzgqlnKtjvXWKLX6373MefClo6uWbINbAUKG0Zd3Es15ed5z3dsC9CDF0iNFtNxqqoQfRa3a52X2Ors=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1R7Texo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1R7Texo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F988C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751612993;
	bh=9p1tRn7FVonFFnQYHymr6NAob2grzKpmG813w0OeqAI=;
	h=To:Subject:From:Date:From;
	b=c1R7TexokkFYj8RfPEIcQWIp46Vj5fnzFh6gL0xKAExRd+RO4pwKXEY59GryhvxkI
	 88VxJRZg3Qn64mlA9ZcVP29ZqTSWvIG2BgsvGIIijzSFB61bwjBGGe0sZ7wO9VuTZJ
	 G484SxBkrF6qZEdA/0Yik/U5QdeBysZE6HWhzrK5M5DYGzkB8Opg+ln8LHWoVPDXnj
	 2YmY+5BZa9kFmv6q3S9BGStawAaw+sBADcENgTWvszgxetMuHNqBtX/BcGxdOB4Ljc
	 b3mkSXHFYLC019E6TlVkBOTb+p6g356m/0ZpHgwI4g2mlgJnk2JdZ7JZzncGAcX6CM
	 BWGKfh/WC5nDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E136C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161299357.21385.17122862935259262970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319cbf2b84ee2a510c4e4666daeed3d317c543019eec03efc719bd68669b51f1
Date: Fri, 04 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751612993
