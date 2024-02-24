Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1667D2AF04
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708788497; cv=none; b=Y7wftAnGT8ODNhVJuvMypUeot39elbISWzdqk8bvqZ6OFKjQmF67N4nlA0DR2JuH2lk08ylOHmXNrBW7V6W3hqgSvMVYWXil1lGzRaO7jwTYVkgnh5i+JD4HNUoODvKK2SsAAFmMY6xIj7uQmYMCMl7A63T7teGnrfngQDa5LYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708788497; c=relaxed/simple;
	bh=ca5PTgD0pUfuzdB5E4gJy/gPiY1E7JCl3CQUNr9zL4I=;
	h=To:Subject:From:Message-Id:Date; b=Rfps3zlsz9icN7aBHH7pfV5E+7h03kNGHaHOovvbVQrEeZ9tS/9rI9DruBqTUgFx+yCHi93ZbxsglvriCQ84O8EgmW22ajHpdoOIIp+fQOyIM+dMNZsBwh1gWqjR5uRk+QWWNv6nZw1HVjdopJPRalBWiR0GBQr1zMLkrKWwkSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i69Rargm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i69Rargm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88AD7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708788496;
	bh=ca5PTgD0pUfuzdB5E4gJy/gPiY1E7JCl3CQUNr9zL4I=;
	h=To:Subject:From:Date:From;
	b=i69Rargmw3vPbOGYxliI9gl4RZk2wPXgvpzAD4SA3iv0y/Lt2BwR6CnVqnWf4xNu7
	 EZFW2CxnDy9ON+WmcPDKxJmf3tF6LAWtzb5CAdNY/Xc/IL3agmqZ2bhlQmkPwNBB+3
	 lhXPBIXMvrZRIIweBVrxFAx6QZ5Ic14dpEP2ebebFpX0dmJcyVJlrxx+BhdpplKgf1
	 DMf2GnSQMtFHqkRyxJrBXzKuZpMNdmLQmGJoKQf2oLZHLekX9GDK/TVr6Ofo33xL7c
	 AZmWvEQRx9Obcxhvt2Ms9pPG9cqfec6jfrAJdNLrh7D9FLsHyyCP5wjnd6H3RPy6XL
	 PefPfthMxs25A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2C5C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878849640.18773.6779941024309918101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e59a8ea611d3fdf315072849deb9c3c36a19832d09eef00f33c7aa7b2703266
Date: Sat, 24 Feb 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708788496
