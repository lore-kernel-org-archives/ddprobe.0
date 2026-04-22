Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C091D6BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776833254; cv=none; b=ak5Pr7OmCSF2bnwdLYtolZQFoj3s+kCWqmKuw492gMafYC97yZ1yfbTK6Nl0lixbeEr9r5mBa7xJEzpDHONaVSZ3XmYMw9Ulj4MWr3SVfXTQ1Ha24NygVboWJpGedI1hDN2EiwtfMTe3hC4cazk5LjT1fvagy8o7BnOBnqXbU4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776833254; c=relaxed/simple;
	bh=tWdmgq1LBSuGvqihVAqDZVSyfa+i8SjLdLBjdWGSokQ=;
	h=To:Subject:From:Message-Id:Date; b=NORPpJsP+1gqB1UNkPxQvn5kLjv2HWP6EaOrCZYIvnlq854JOnQwB6ElhL64bjEOAfEovRPY9iV1VIFaU2k8+LThdNNlntVjbmV1cI4TNoURl6Ogb/EIn2qMD+Qs98kV0e/AZ0hhUyxXX83iYc3r+hs+x5ZXr7xIQNUk5By3mfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ret/zxzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ret/zxzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB843C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776833253;
	bh=tWdmgq1LBSuGvqihVAqDZVSyfa+i8SjLdLBjdWGSokQ=;
	h=To:Subject:From:Date:From;
	b=ret/zxzGT/c7Ef9SckyGKXYo/P4s9xJdP0M5jeVtulXRigngGzyZZEWwHkc9dXb7a
	 ASzTMxIMCPIPJmxP9TOsrRjhM5aw8qkgS9xXAgqoXlPaOjqaXw9qgDxy3sB0eMmWES
	 0hRXX2GnjRfO/XrE8/nzw1VGE2qbX0EX2XZfHkH1GEmaINNzLifcq3712gMKOzPQSF
	 /eY183dvROEGvM0LuKT2lepMikcYRQOaKzT/N1lMtPTz/po7LDf5Y8LnMK7UAf/jwm
	 HShe8QnieMeKZ1NEBTpAZvvouu9Gh/iq6Z0VCdvw/LbhJQL5dN2w0sG7xZz8ifNoNS
	 EXyvIvB/W23Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC610F94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683325368.9484.1962250765021886300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d46823befde8310df920b107295d6adc7222f52bf028f85813194cc27d12b4
Date: Wed, 22 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776833253
