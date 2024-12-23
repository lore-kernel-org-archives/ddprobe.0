Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAC619E971
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734969954; cv=none; b=rRxGmMnmChbFeAKm9hp0+6Tax9NQnb/5v2emtfAwKqN5b2x7HzyAdbHv6U5dtD4/6IYRqySthiuzWfcl0X+u0HvtdghUacENd9vY3ZRmX8WAlEbO5Ss6KpgZiTvXaEG2l8NTSqv4V53SAnPHv5C3RCLGzPLqODY0EhiE+fG5XJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734969954; c=relaxed/simple;
	bh=G5o1q9SEAAgaS5p7F19zYgytoYNCiX6BWlFprQcFUak=;
	h=To:Subject:From:Message-Id:Date; b=r4NblK97qG0Io2qUEebtQR30z3J+8z+Nd3b4zCy37dn6SItqx/WpVN2ZuYaL5KoS3fNouM8WPgZdFu1fYzkh1lYq6GDPtx28O0YppxO1+lxTb5UPOW5OvyE/pInFze0opAKTw0OJecaEuq/JZahcfQlIZdSl9eV7xBCH6TDG9fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzhUzpVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzhUzpVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD555C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734969953;
	bh=G5o1q9SEAAgaS5p7F19zYgytoYNCiX6BWlFprQcFUak=;
	h=To:Subject:From:Date:From;
	b=XzhUzpVPllWzbWck/IOlnYAtSvY9JYVTAAkS0oW2qZVGLAExm58NRlf5BoomM449E
	 EKarpiY1Wmjz1pCB3CukUaHn0pM/B44AMy/on4xFMAInIwKZn3zFHunzW+pjrya304
	 wp0ksjPXHMtl+W7zOIVhpzWzz5XLtclt8lTi+RmGBOefZVnNTntLe/72ZqsDAxdp/O
	 N0RVikPUOQCtSSlEwNK1/kJy4p/j00MpLhlACGHuV/KvhMeyhir72chndLuyDmR3qJ
	 xy3OF7dZVKaaPSsvvUujXHx2wYn1EZVYBDYW0qHWTcPZ/fm7ZS1AIbPEmGJ7lfddCK
	 IPD7ryA6I8Suw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B60E7718E
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173496995367.25432.8669394113307224907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccc66a6c3fdae9449c2765606d6096e4e0c6a727b9316948060634c5f6e3b00
Date: Mon, 23 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734969953
