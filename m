Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6489F1CD15
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719594263; cv=none; b=a56n2QnD07NNOJ12XQrpmIElf6HKHbFchtIvr2sirR68oS6tAU06eChi696ka93Ia8XS4GWxAKi+z2OWGoLgfYydhPp6mICYiYZFnRuASi9W8vd99lKXbJLqpDoELB6Iw6oq0RID8Za6Xmr9HOKlvX7NW5y8p9kvDKDxBz6Kh1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719594263; c=relaxed/simple;
	bh=MJtv+gT8umNxcihF+kPvuP2ibb5FYPdN0UzgJBLhr5w=;
	h=To:Subject:From:Message-Id:Date; b=mgXZghTDAk+rQvtGqAqHjhh2pRdWvDthUDnnKHxcwFySrE/qKkTJSP+hVz5qbIJ4pbeNTsFiotHBQCIxjD7TzErxetyC3ZIV54UarMjEHJfCEOc3vGlI+Jm+tsxfS1h5uostPmny/VHARInbuEzbVcjUOSLPK3O7jzFSfbRF1KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aosmjcek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aosmjcek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF86C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719594263;
	bh=MJtv+gT8umNxcihF+kPvuP2ibb5FYPdN0UzgJBLhr5w=;
	h=To:Subject:From:Date:From;
	b=aosmjcekP0y1F/0YltC9UwK8Cao8v6zNS8LkmsFM2nzIMAUs133k7839H52ObX8z5
	 VB6IC1xddewpUZcCjUsZMNNePTftZxagX65vKXn8KqHLlCfecAu1rBNJ+L1gtOUx+X
	 kxBBjR/kRYL0jgmAUADEd0+2guyewVi54LShsuA3RWnTFeVIMadWAddQeZqoZ+s3N0
	 Tby0scSl7m3A5JSWGS18ppQ4rxixznO67NZPGZ2v8fdFNvneaD+TkPCb5/sE0fwW07
	 1YKRY6Eztlyo2wSdpML08aJsiJCaZfdG9mH7jiBPjKnwRapp/qD0KjbCTII5i4+dKH
	 o1URU9rDf/luA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D25A2C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959426282.29765.16267372718130601612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22afd60f2aa10c626604db304369ca90121cc0c17932f13470d7b277a79a0e08
Date: Fri, 28 Jun 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719594262
