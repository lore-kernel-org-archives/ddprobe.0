Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3449C202965
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743509994; cv=none; b=QF0EZyXgL84N1Z/ub8yic9rSMG6vG6t9lViPsDubEQgZhPZ+0bjAj8aO/R4HBpKlnARCjWG5JzRPgq/oZA9H5Pi2ajejGlyz1bCA8Qcs0kfefT9IrXMtS0hRCafGa1qMdx8K2oiwN5WX8fk+h8AGIDZfAnfl+eZKGbECBfm4PRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743509994; c=relaxed/simple;
	bh=ocIL4X3JfCDYjpdhQH9nby2rcP5VgRFKDWjQBelAUeo=;
	h=To:Subject:From:Message-Id:Date; b=WD2Wx+NOyr2QX7j8p39/UqSBAn0lPU0gr5UaE1yb5AUJ3lGz26aFiazP7U3mOL+asGpOuLflb0A/eKkEeD08Yu1BDFr2cvIxcs7xLYwn4O+Ro2L45vlXqxX5RNdER+G1kZ9z/bjBmykTmEOrbYxz0QytlDhejvjwQxusDkGYGNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CN3xcMtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CN3xcMtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7FC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743509993;
	bh=ocIL4X3JfCDYjpdhQH9nby2rcP5VgRFKDWjQBelAUeo=;
	h=To:Subject:From:Date:From;
	b=CN3xcMtClakx9Z+w9osx+glbV7xDBAZYsEhfmDdN9ANqQ8Mzq3HxgpXOmM5S/mxe4
	 zRHRISyBi4BC0xxN1yRuRhWNgie6VxabcD+BlOouaWM0msxrBJeyEIw/AcLHLPt4jn
	 Un4PiZTjkorrs2Eyb6RSMWPzEr7QtL7TYXCKzr5iBp92AP1DaiVfZwhn3jQrxWjONu
	 eNGdQPn30nMn9FWlRxFC9mHE7dAr+Y/8kDyQrqCx/tVkZmgg2BLUJw7XjlUYW+27hd
	 9JFC/goK+RNoriv4NX2Y/z4xBtnkNNgOn9q+0AjOOwXaajL+bKELIXJmUK/hmhFEVZ
	 dhYsNHi7K6SSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089CC36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350999358.22181.9511984613880464169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e320a7d4b84cff8d65e72007bfd6c56dd0ea28c958d696a6efb3389b3a8d0c9
Date: Tue, 01 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743509993
