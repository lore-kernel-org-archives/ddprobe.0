Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B626190664
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736289354; cv=none; b=HYQoyTEj3pMycsyb0msV27k2uxst69WoJa+S+CxNWDLQg5NIrMD+itP0z17thdOo3lkcL8RrpX0Khxj/Kz8qyCELjxJpZkVmPxeT0y0NaqmLl0uGf1x3J4o5GVBqsnGugmQDNnn3oShBhrI84dye+NVwAy/n5+2wAI+Kn6+2Zwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736289354; c=relaxed/simple;
	bh=t0m/ZfjqH40xuirsts5gBBC44kqpfiZnx0Td/Zww7go=;
	h=To:Subject:From:Message-Id:Date; b=HLgzbO2WIJ1CvQKVcGpOLl4ppA0ylLSXB01/BL3xy9z7pBkgQWeyD8puf416lNsfOKjNbkxZs44dza1FhlfO3RXo0QqJkMc1+JcixoAAsDAhn7UsapXqPwA67PIuJVmUcjmiNzgTZIuK6ek78R7ggrBuDWmJxTsLOFULQSRyo2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpH1JsrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpH1JsrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0021C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736289353;
	bh=t0m/ZfjqH40xuirsts5gBBC44kqpfiZnx0Td/Zww7go=;
	h=To:Subject:From:Date:From;
	b=RpH1JsrL8A2isGkAn0oNi8wyzz9GHWPHKLBaD4vpCQQ3DZ4Fz51WyZJjDB37oFCql
	 CPhH+n13p+7VzceIFB6qruT7PDctXF3o4wXlkj9rWHT6H/oiSDL30wlQO5PimIKBHm
	 KHNKYP1vpe6UhTkIo9sFdV62zWnxpvn8agSK0bpBYVdrRkOvruBL8MvaSZM0EFDKtS
	 eIm0Anoe486hfCdv5tKj/UUwLUMdic2fDxjKzGqdp66HkayebALlg4sStYyLIvEbUV
	 hgAr+u7Qwfv02mbRGzXe1b6MyQ0T8GXH1UOjODUTmoBXrnKNDyHBv0Vy12TIfE30BO
	 Z+8EWZNtZVBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9332FE77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628935359.18554.7044543223873048663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836a03eae83de7d79dc1c630bb43e380fb2774a846dab9343f7d79000090033b
Date: Tue, 07 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736289353
