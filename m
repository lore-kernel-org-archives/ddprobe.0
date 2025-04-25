Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A2813C3C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745547594; cv=none; b=YPbd27b+cMJXzLnD9nUXbpk9wad2d8Rz9nQsmUuKMcCEHawCHmTJeLfMombVdRmqivi4I3zvH7QBTOhxbMYh2tOPW3ukfc28Qc00sFAq0EOOqOWzkwdbC72OKH3RsQzAHk8kE4By0nGEho9XFWUJ/mNs+6GVDy43pTqYDikjiEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745547594; c=relaxed/simple;
	bh=AYmC/KzPwhVyrcL0CjYFjcyofi+8TqxlHLfFjahiyXg=;
	h=To:Subject:From:Message-Id:Date; b=Gfty+40Y5b0PYZugk7yXoxjIwJEqbfVXJv+GZ2y8Bkg4fbRLS0SX7mqn/9ia4/ZVBH1ud0V7f9htl5NMwY1b2VqR7jHdLdu9TywwzZtvFfBDkkuQBnZPP+51ibs5zzaS9LvUpcwnp0vjGL+js1ij8q46VIWCgIkzWsiiMpMqWXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC6EquAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC6EquAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E955C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745547593;
	bh=AYmC/KzPwhVyrcL0CjYFjcyofi+8TqxlHLfFjahiyXg=;
	h=To:Subject:From:Date:From;
	b=rC6EquAc5P85fUONAOfCiNHLAQlNYYWOhVYqJ7pwuoBaqKDN/SAAKQ9fzbyHCtKyx
	 UBDjC61lXLvJOhOpdVSGkT4im7+ZvbGApOA0AdgHWoU1dauq4WRJMxr4OU7KSLznZ0
	 JSlSzQ9UWXsod94ZxW9jFpYuJw6WYGpgByE+02wbYr6svCcY2BobJvy3mBpJ02m8K9
	 sFXtIn/pE8YDcIFU4GrXhRXITkYguu0l+1Fp5UyRFIoItC0blnzLQrCY/JEaKI44/v
	 uyUopv6v/jgTi6+gNwKbULN/br+RTLDfjNTqtikWw7cThpRzEE6z8j9Puc9nbKrem3
	 5SVT/eVQ0167Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E736C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554759357.5280.7239128379914503101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac07b5dd0e7dd81935fe63ac8cd65359a48eb171e20e888b53868ef538b53da
Date: Fri, 25 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745547593
