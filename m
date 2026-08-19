Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7842DA759
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787135434; cv=none; b=KZy/xjtdTUxDxElP/oGLaaM/BZcyni3oq5KI0SptNi4di1J9c/upiOOO+nQ293tS6jLJZZ5QdOfzOxlx+CoLM1v1wo+SOucvx8+kEmNP8c681DjTaH0Stgx1lwogsCLEWz6NwogZr1DTtm9ZN3qdY1+obaZInx9hqSLgbXYb1ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787135434; c=relaxed/simple;
	bh=SecIV5aZxdVpr7y3hBXHRFurD7LD9/F/pMlOSDqwIlQ=;
	h=To:Subject:From:Message-Id:Date; b=unfldXc/7ve1EWW1HZlHgpbcwJhPHu4rBmroWn0OmXKP0KxQu795IMFb9rkk5l5imSuqDmWUYONAmkI0YmNfM+2gtYvdl+g5qGVhkJNM2WKjBOnoiHKmDFeinK9zoDPxY4MrttBJsKHBJ8LiY60MXRU1ozlMSyKLZFhC1fNsBPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WujN0UTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WujN0UTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8330C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787135433;
	bh=SecIV5aZxdVpr7y3hBXHRFurD7LD9/F/pMlOSDqwIlQ=;
	h=To:Subject:From:Date:From;
	b=WujN0UTweWXiTa1TBCe96ReoCHCb3e5CnAcMQjnXeFmfkEN5OqEbF7QZ/YEr8o2V3
	 tNkt9YEdOGudLV3kY/qSk/DcZMKpgZcYCE5PvA0R/DHvGmSbLYANM3nZ3bzioFOugC
	 I9E4ulX0dhhIewJKaX9ISwSslsY6zGrnS47UnXxKKaxYymWcBhtjSei3gVwzThzk3A
	 JnMZsoXnPOyn6L0MGflE5Sw7LvkkcrM59DTA3yJ6s5igqyQ06AdBWn+CFrbOb6Oz2A
	 Y2NePZwsvdXrRUFE2JCVgsjqEj9zexB0sWRQb9xwZWiC9pM4u0JeV4dnfjK6SFHGXE
	 jHi4vt39R002A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72A4C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713543373.32451.10420456261817348437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b79d673e7e2068b42ce7c89f436c8557bc686bda1edddd4255efd07f7d8d8b
Date: Wed, 19 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787135433
