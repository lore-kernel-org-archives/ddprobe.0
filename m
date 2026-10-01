Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B91E4D9540
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790852434; cv=none; b=fm4gkmtIprao19a2qTly5NhnEnbxl5b8lzhkD1w9tNe5RSY3M1IGbk8+RtU3MGYb8BTR+h6I+R+Io2YDF3635OVB1x/QvJ+NUUBSfsflkmbfneCjXWTF1l13RpoVhxtuJ7woMMsvkZHo6iiSWk8coHCQsB/GMenh+uA+SYaFQAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790852434; c=relaxed/simple;
	bh=ZjueC/+JTMepwrtHvyntL14mMF3FpYXNKU6aqqPUtrk=;
	h=To:Subject:From:Message-Id:Date; b=V/hjsLIx8Mnl+kzA5kRrNSHevD8Al/Gf2oDItik3hmG3qHjoKjS8YNMk6ypIyy06E8pc1R+nfvfc7B6SbSphQLGca6H16uLhkNCcl6P4qRtg490SQcsPAqUXfgTT5HKYNSbWPAdKroXg9s0q8RSSKP0v9uSiUiVunJbpOvFOXgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skXW5uow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skXW5uow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63C5C4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790852433;
	bh=ZjueC/+JTMepwrtHvyntL14mMF3FpYXNKU6aqqPUtrk=;
	h=To:Subject:From:Date:From;
	b=skXW5uowbYcRwMTJcMevInPiSyjRZj7vfhfI8JBoD1uJSoyAC7/Al8dKR2bk01a8r
	 m4G1YGABVqgJ0yQBpLpDhku7LceWo6i6VlsEDKjx2gfC85Y3OnXqvK1O6QkxeqIOE/
	 8i5KAuV0MjbER5tm3Muue8GMFbnAzAtFJHS0kOrCfn+LzzBe46bp+HJXrlWAZusPYO
	 5Vn8yC7KtBTBUbhnGNW/kBjBHPuH655Bo02OQcSzgBrRFOAKDHceV7HBei3q126BVF
	 Kkmz+NfVpCKYzqzY89pcBVMDZVUv1lsh2LPWN5JKrNT8AeLx1SctOd2JrKUvrSzXdK
	 CQMhMTcZrRVFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE66DCA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085243370.883.4889854267133139183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260e5a28596d0d71391afdbc06ccaf8a4cf6f9635d0b8422bb97f2f8c90f4fd2
Date: Thu, 01 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790852433
