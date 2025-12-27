Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325613A1E63
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766859234; cv=none; b=oaVZuY3H6gOCvnHNjE2lCi+BDfqeOA9YkCuM5FVuA2UG1VfPoxiMKU57jTrTLPWuFdyST57P+sGAdA2JOTrH88KpOf+DDBRRkmsgrBEloMwpDoVCe+h69xSWUUPvraDz4hR3PwD3boHrihfy5fxuMznwcXFkbtCTH3bGj6f064w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766859234; c=relaxed/simple;
	bh=uh93vvz+j+lLhn/248tJJteLZusXWQXBLIcbz8qxQ7M=;
	h=To:Subject:From:Message-Id:Date; b=Nfv7D0g4cjB/G1WWpGv7TMWYtIg+xVh4AtmQR8YHts74q4XlgEFrHiwDdM6yv9Oywf0Ze68BCa1+eDKR6Unwb0PK2qWzgQ81uhSLwsCWzXGqep+2eCDFuXELmnhK3c9iOgo40jQ6FcFnlyDAq9QShRYGq8JAcBdvRx5citIkKnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIT/7I7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIT/7I7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE2BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766859233;
	bh=uh93vvz+j+lLhn/248tJJteLZusXWQXBLIcbz8qxQ7M=;
	h=To:Subject:From:Date:From;
	b=YIT/7I7s3PVXCZgUXAkNsglMt5NOa44KOtVe7o/uoLoZ3AQRM7Hh7HfhYm7oJMcaU
	 tp1ST06CKXogxOgXy88nqdW8S8L8lom+w3oXgOngdsoR2rRCs4wrxXbO5W65w3aOLe
	 naoPC8pdfwmPBswY07X0dtaH+tFNQN9BUwASp2dDasVDfU4xYbVaaDEnEneyveErya
	 48XlMVgPS4HsPyB+VSlITfxCaxKl4J4phqNnLUf95KKOMoeDy3MZh2DaDJxpRdKWqp
	 CErnFJQrFnwrC7ZYOoY1M9NXmBwj754Ja7EzjRGeXy2BJD33K0M3u9Oop7kwGHLzHl
	 6s3E/JZFRwy9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E42E92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685923361.468.12662459012283915655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd3b8ac2d04e872c88e4f268e11b43a88ba4e9ac44a2cb8eea7a8f9e3ef8b9a
Date: Sat, 27 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766859233
