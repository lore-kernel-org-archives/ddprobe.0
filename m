Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C015EC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727399754; cv=none; b=mnLFVGV+WQ2yBLbDxqyTZr6VbZUy8Xiai7rO0EbE5y60BIm7HasAqsts2OGhAZBU6lN2dPlFbzFTA8zmbdbhUJBy3YamIOxqDO84K6vGbxdr+H+jG2rg5oZ/RmyYlMvG5+E7+0FDAMJhLacyikOjyNFY2IsO42g8SqLsJagIQlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727399754; c=relaxed/simple;
	bh=bNBu7x+B2KPrPMM5Azo80aK9xyDT6ExY3eac4xpWWLs=;
	h=To:Subject:From:Message-Id:Date; b=mIxrKYTWuWvZhuWzOy5hBQYbnuMWlXgEzsQDP/0IQab4hhlElDJfd/OG+UafqgdU0tYecEtJYF2C4YRgyy0sg4Jq6lIyKwgdeQLGV4lUcJ7bX/gSMYrIg+L06G/fE/ZCaZSnZA0jGcUvvTBADMgs/ZpiyEVGjrwi7u6m4HtxSNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1A1vwrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1A1vwrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A881BC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727399753;
	bh=bNBu7x+B2KPrPMM5Azo80aK9xyDT6ExY3eac4xpWWLs=;
	h=To:Subject:From:Date:From;
	b=A1A1vwrEA7HR7H29SpTPbZ7FZNSA9pD5UjFmLCLQ6sP5ko695Y6WmVrYYcIcvp5RH
	 OSGwMCe22v1y/Zi0O306SY3syRsu/ekgZACFirAGI3jIlWkC4Gpv9s2GAwMRRvBQvd
	 vRrcsxQBdqbg94TBN767gjsMiE8qmuwNNmzWT85pP0AXtrvxGhg/y+0jeoI5EXSHcm
	 Q4AjfWue1+JFxgp7fW4YvmuLeGChwKqXw2InDUILiy0ZzR3p9ndCuPXEgEEAa6jH3Q
	 j2PLN4v+PzVBPNajxRwfDxLujPBKw95kx1eCkrSuOc/FsDlC34wOvwIBHcN8a8ieqV
	 uN8okBDPJyhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951D1CEBF60
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739975360.7763.13611363824376672474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0445d5f35ca2b55474d0a6ba86a1fbdeef0f7c4bde1d6b123f59bddaa67388e
Date: Fri, 27 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727399753
