Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5DA1922D4
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739130954; cv=none; b=FKnTngJR6XNBpbsBTvPvhOHpDwCDWNLduUZnIUqWRxcDHVd3Z49I46exCPsR9M07Fx5dpWcl1f0/TomPSGyRq3CiAj5Kyrk3VXFFTg9Hxb2tBq6Ns7I1xRuEt4hnPq1XvJcrkifGK7E9jvxPzNz+PqyEvG0Q0Wg2AHRNItti5VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739130954; c=relaxed/simple;
	bh=xoo4IebtOy9E2/BtcpQ2VB70Sb3JfZ9Mh/3guBBkgSA=;
	h=To:Subject:From:Message-Id:Date; b=FVytfrpltaB63/cQvqryDkPnDMRc2i8ao95hP+e7nunrTTUHbLE8hW8ZqMTytzIMshJBrKwJDGDFmnwxHcXwomVQxbnHk7MZG6xF6tHG2JL6hqvS8ulScfkV8eU4cR3jP4NgULcc1lMhUypLsAPNzDn6+h+NFMg6tMAbNrSyl4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSCuIU3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSCuIU3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC61AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739130953;
	bh=xoo4IebtOy9E2/BtcpQ2VB70Sb3JfZ9Mh/3guBBkgSA=;
	h=To:Subject:From:Date:From;
	b=tSCuIU3tdAxtYqR1+5wcgIIt3tVNd2CSNN+qqXx02HOU9fNhk42Wq1cPjqLQAdD2G
	 GQPkxSXFY3ajiPgH3ZKye6jMsQuJTy1CqoHlg+R7Af4z64kHH/pLiKvCEqnRUJYPTA
	 kXtAaSDtAuf1K+Jx+oX97z5/5Wqpy58VgH6dz81ppOUonqrO3KfP6EH8aoMcJqE0lw
	 +l0USkKxCS3vDCCzfCQGh9SULRaL4CN+43O3Uair9J5t8GVft3JhhZGgceiCIMWEiI
	 1nrEuCBcvyZjawdzTC9KDpJuafBbJtiy9eTSklk00pBl5n55RK4/DsUrXgVonuazNJ
	 rjZmLW3vYloVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA42AC0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173913095371.32156.1858355685877053723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1559df34a43bd8d528ba115f86a02638d0356f4d47d5f14bce1a7eeb52c8c2b
Date: Sun, 09 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739130953
