Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407C7168DE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720882823; cv=none; b=ROYNGTHujfcpPjAAeTZsabhGFNEVpUS71bZ33oxLm0qNp9Vpq6Q+iRt1Xrvm9fnZ7IquuO2k02Qj+YXjze90PjCKc3u2TgQUkOijds9YNO5H5i8+CY1OK9JSVKwk7uwtFRzq2drFGyp+T6z9IhP9LsDgT5q5KaCMeneYKM4At90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720882823; c=relaxed/simple;
	bh=Wi/VHBSMJ7HoMWWuIxgULeA4YwmovjJic+JjQNzEUpQ=;
	h=To:Subject:From:Message-Id:Date; b=a7qYYnmDH7UF693ZRMO2YK+jvNTTJkKy/P+fcYIpvl8JSl+ULoz7fopfmUTfpge58wiBJlp7SF9aF3Q/NAxmDqbNIKRN12OsTnafopKpujLK91cYbAT1fyOxOcrP9Vy8l0JvFVGonwt4nS+hAfxGYBSFDM/CJcTlqDqV8sMqHyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HItHu7xk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HItHu7xk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDDAC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720882822;
	bh=Wi/VHBSMJ7HoMWWuIxgULeA4YwmovjJic+JjQNzEUpQ=;
	h=To:Subject:From:Date:From;
	b=HItHu7xkZg8Y1YqIxyu250lAsHrZqk1jpduqpLVzI3Y2maXwffoYDZRS3nLyN/mT1
	 Zjgv2DPIJ0sWTGpqdo3dPsKoKFzHP6VUiUmQvIQmSKipk75gnW/XbybIzdLhWw9061
	 fC2j/oD5AHoVby10uUWQd1jHsznoxz4ljTVi8ZjPqK34uPB3SuMVKSd+HX94PJd640
	 pOCAMavOoqv4GSqeUYVJoSVWxA9/7hfwGjsX+KqoyHpOEebqa697hhwwJBdbQnFleB
	 16wkXe1Rwcz1E6ajqYUi3UK3ZBz44Y4n4MVajT/b2R9rNndmGhzsN5pNjXyMcInkFh
	 5r7lg4oaY64Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD027C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088282276.11165.3414608885872367531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557352c1ec18af92803ebe7a0a16dc8b6bec40a3ee3c454081c23cb9ba77823a
Date: Sat, 13 Jul 2024 15:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720882822
