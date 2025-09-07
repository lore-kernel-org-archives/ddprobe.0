Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE5B18A6DB
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244594; cv=none; b=gB+ID7IvC29GQttpUpLe6zsgm0j4XTt+GMhILvI7xVbx2BJeXHBHcIg5FIbxVBxl0sMLikTdUq25h6JPrklcKlmsWSOfartwPOZvbldKIH3TKusR8xwS/pNiIUbRQ04kxmw9KN1Ug9LsX8PQfBILn+JGELq1t8xX7ybX+g+ZDi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244594; c=relaxed/simple;
	bh=4QOa/Gtkby1c1JRR2+XFdQgAresQkvKPjg6f4u8usKk=;
	h=To:Subject:From:Message-Id:Date; b=uphXBB1XmsHzqURIjuuwt2JrJ9M4pl2es4pSMe8InSPZYfe0je2DsDOnKHAK8mKb+LvPbCOAG1M8gWQE9HaeppuN05d1iwSRlFJdXg+rSmubnn5XYtidESx2ZMouVauVcWXb5tssWMEejaMekIooZARYv3VEgX8/+hLJC3g9Mgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scFrDGPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scFrDGPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E6AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757244593;
	bh=4QOa/Gtkby1c1JRR2+XFdQgAresQkvKPjg6f4u8usKk=;
	h=To:Subject:From:Date:From;
	b=scFrDGPzO1r4Yy+Fy2KRNHrtFC3nN1IgbAPL7CzuwdrG9+xJTY+GCdIy6n3JvVdTF
	 Eks/tx8oXWRmxGil/ZSxdGbfOByH3+FMM5rWovaCNN1fA/CH1RzsuI2IGVe8Nl1V1O
	 0tf/tOcgEZyAiUeygdWxd5ctD2LIIvdJ/1A/UsP5+XYMB97fWSWdiYLUU8i41QBL4H
	 +wRBLp50Orb4VMN2rMPNUQS8YO/MLP2JNqCz6LNFtAXGA8/PG0+XFiF2fVNz9UOJQo
	 6ootOLtt8mn0OHgkY9qqa2RUChZlhVqvb3sZBOn2+G1i74Sd0dY/RADoq4yjubdI20
	 WLuO1A0+pCvjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C9ACA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724459358.23312.11876461440809802947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4217c047bbda153cacfde9502a7e7cabbf2b1ba2ee6bade4b1d380abb6e693d1
Date: Sun, 07 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757244593
