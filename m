Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA9730FC33
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779040834; cv=none; b=fC+emJQLcpJroCu9dGfdpV5C5vI246TK9d9HtLlG4ZJKXCDOYfq6nwdOseyoFgHtXZAX8WVdVWiioIUT2VYHA24vPw6WkKE2zxBtzFnqepUVN3Obsp9WF52qehnSwo7uQZJgS3uwhpImY7eKS+lCjDj5iVNoH9RG+8WoMdKVyPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779040834; c=relaxed/simple;
	bh=cnmmTIcQf4LoYiZ624jm7LHIoacddKjw5XdEerg3DEU=;
	h=To:Subject:From:Message-Id:Date; b=b4SpA2gKHFGjTbl7bkIKLIn7JaNoDSQJBEP9Ceeh0zxFUEIOSnUqs7hfUFNTYNFhLWPAAeXu6DLgUqtn0fFdyjcKp2aR/x7fSOwO8shayYzScfI3RrmNAf+CUkFQb1JpmI42Px3z6bORTxaojCB8bltKLMaYYxkFsAYEJjfcIBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlSbA7sP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlSbA7sP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28BCC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779040833;
	bh=cnmmTIcQf4LoYiZ624jm7LHIoacddKjw5XdEerg3DEU=;
	h=To:Subject:From:Date:From;
	b=GlSbA7sPN0x9y5Bad+59zM8g/6VyPt2QBOwjCmu8tkXF2OXo9AAGNg63sNRU1muZN
	 dKom7nsCuxQV13Bks1bEH+U8SY6Ng7o5xBn29u+3cRJcvRQsYQ+yWzg/oe43qx1KFi
	 WUwGOUVktYz5RTE/IHO0TmG6PEMXT7Rz3iMaJZuTAnZjQQKyDZsIbFlFxupzZeZHpZ
	 u52hqkn5mI6jHASJ1LDMFVuZv7IcslPZvcfgHEJMhBib7+bQ1MCqu/jHOlGybf0S63
	 risQrJnFohqYv5Uql7nWRrYRZg2MseO4DJZq1C/FEeFrz7VwFnYYezzSjuUAw87r65
	 b6Ukvxb80FTOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03A7CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904083370.9765.2052586099624411134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bb33d318ef1efda6a7085bcfd8d25a41129e31863b187b11d52a3432443928
Date: Sun, 17 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779040833
