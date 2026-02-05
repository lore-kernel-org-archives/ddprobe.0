Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278A726E719
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770279234; cv=none; b=FNvoEMIWJZmq8lzvhdcjtmseWgiCY4ZpTlJEffj2Q2vMJb+Yb95qrVUgvIsnkH+z20VzGOe8gqD+3L98ajpEVNbPk8kNweFNQyRafglhKDMhcXLv8S7Sg6S1QFZ/i94BBpCe8DMEN/43QmIIjZY7Mmo88aZNck8lJyr2HTUPLJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770279234; c=relaxed/simple;
	bh=biclYq+PAaLRn/R318zT1iYTGnHJynfOv0ZnrbqzB/A=;
	h=To:Subject:From:Message-Id:Date; b=LYqYmciotFQqcIIT3ggvTpYNbWNQ79KMJzsW+Xo3uVfMAEMwofFIum3sRA1B2VNFdfxQ9/cZxLdex5O8qqkMhDQDIbXeWAuz4/Dbs5fGzpFN7oLnvZQFflXx+g9vWAb0VjIWcy/9wX83c4nBCmTtrJcBF216HeV4wyLNmmbadVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUNM0Yze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUNM0Yze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18B4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770279233;
	bh=biclYq+PAaLRn/R318zT1iYTGnHJynfOv0ZnrbqzB/A=;
	h=To:Subject:From:Date:From;
	b=WUNM0YzeCYvX2g/fPJxO9HB/NhOSckraMk/UqcPYwrQvSmTl5GP7H5WnAAmj1OW4d
	 CzFY18VR2TgVj2uEe9V4KI+IyzOXx87oSSx0nWkjzzqMtnQDUpCSyaKaNcKx2LEpZl
	 kaxSpypfLiCQ8DJMcEjnhZRnUfXZWqTrFRdBQLktONlzqUO1n4FLlsFmhCjZj95KZM
	 WQNec/gqoVrOHwrHtczE7kYUtvZtaNziioaXwfXBNEeLXasDB0Oz+t3Z+103Tl95y+
	 036UysIWzsTaMPCVruPwQvWZZLqasRnSIWQUpiruQzcaMrLpdTS7y4A1XmmonklcWL
	 PPxxC4nQIrXVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0C6E9128E
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027923363.26146.8048397819743031524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a102ac4fd0a73bcfc850eec121869af1d98dc0d8dbd46f52b5742886f280671d
Date: Thu, 05 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770279233
