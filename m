Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1BF823DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764318174; cv=none; b=KrA24aRetG8DzG/fnPL7i4Q+XPy/Wks0Mgzo6TcwIlGnZiVoYGDSKIk7i7VyyIFFdbA13qWOj6BirkepOtE++/Sl87wcr/5gtax9lErVlEACI9mAMczkbp6yAVcFi7RUHvzHP4DGMP6blBVQ6Pb761o7hyH0dIbLzJDXt2HxRdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764318174; c=relaxed/simple;
	bh=FyBy7nI3Zxu6T8J6irGoHB7SqWahptzDHybMOQkfp/8=;
	h=To:Subject:From:Message-Id:Date; b=RucJowa/2pjywoM2PE5hDhGnit59Ymxo7zqdLw4L6Erf4RSzduJtVxbSPWtnGYbUgGWD2Ld2hvjQlH6aMQI1DjTBO2kId3b4hTi5lwPDr8ijPuEmjDyj8zEKDk9JI4bWWufC+RD8XEbIS5DYZ6i7c2rCgrvU7GHJ/g2JS9XmQsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWGid9tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWGid9tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AECC113D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764318173;
	bh=FyBy7nI3Zxu6T8J6irGoHB7SqWahptzDHybMOQkfp/8=;
	h=To:Subject:From:Date:From;
	b=JWGid9tucQ6KG+Z7DGoV1RRQoXIOjvyh17jcQkq5Ai8Db6LWhWU+8QKH7j/r9QRvC
	 W6O5bKPR6eT4ixB0QovEUGEnoEtDE2JSmVk/JH+20eatr4tEqwqxi4eAS0btQ7JZbG
	 nW5NixVlyNqHCxBVqG5Rvtt6ZtRUpJYGerudtiP7zGMtfaDpdtPVYmDb8iDinefVpd
	 mjxAWk2HDvIRxAYUCPPOZ8volBSpmVjuZOwPK6DLzi/ceJTh7c++WRDwMMRVCmwjOW
	 atYrMiRi7izdqNI38OKcwRKZ/d67nO3UIpK3h62efoWxnmOgxisoagzki9WKlcheW9
	 rdr3wWTd7iy8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB9D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431817359.6902.1855519845071311541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fee71bdd448e94bddd39333abb9548c09af25432626919a7ae2b48576acb6d
Date: Fri, 28 Nov 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764318173
