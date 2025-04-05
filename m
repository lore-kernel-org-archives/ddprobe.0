Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7013C1CAA97
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743852594; cv=none; b=jxsN9fgfe7Ic/4vguCaNYhOGXtQpibaeUP37f0nIpA4aSpArPvHhnlXHiJeorpV9hNXX7wd52dN2HysgXIkoNdDPdyHL5CxdsjjThj+sOoHSIRGXev3WpvBFh9C1E3dz/WZEN8anU0hglDqqFzyC6onx6abFKA72R3Eua5uW2JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743852594; c=relaxed/simple;
	bh=myrf98S5ofjJ4+v3gV5rF3sLu9S29syuhf7YlIwE3kM=;
	h=To:Subject:From:Message-Id:Date; b=IQxp5myk5mtnHD2kQitwKDwVMej3rV+Mypa8svBCbsnuob1TVyZHOzbzuG07tnIk8Fk/y9hton3b2cANkpT+qfifT0yihK4/LJi3slvgK+jt7L3+WFCw5KT4QkmKexEHw9OdVgV9javB7k7Ne9YBARDaY1HxkUxW3QZwKNyQGIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXLoiJf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXLoiJf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48F3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743852593;
	bh=myrf98S5ofjJ4+v3gV5rF3sLu9S29syuhf7YlIwE3kM=;
	h=To:Subject:From:Date:From;
	b=BXLoiJf34IjtNRS/u4LZzrfcXF0TSCX/lXB28t7i8ORkwokNFBv0v+Z9LuGI9I/c8
	 hCjhbEnn3xw9cJC+yE3R7pDCE7xNBXAq2cH5wmZ0E57Cp57BKsO0IlXftuxVLf9dAN
	 HTF4W8wZvU31HAyya2BM65S/tOY9g1spS3TRpu9jb/gsBO9B3OHCTr6hqSpY0/iKZT
	 fQu6gD4kcNnGstaMHtYLzwOpZwe83N7wuSN/CrDYxLpQ4CTxM+uljAoDgWbRWPlTWN
	 T527WnU6vCa7XyvomBFqj/tYs/p+e9vFLfkGMw84JOG+DH8p7gYSxRXvzIjBebdiTb
	 lHhKP/s2NLXQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DA0C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385259365.28303.4493037669020714610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f132fea9778120b643ecacf04976c7e4c49499e9f55b64e735d30a5a735a7d
Date: Sat, 05 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743852593
