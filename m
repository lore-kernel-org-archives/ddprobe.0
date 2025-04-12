Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA357FD
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744438794; cv=none; b=HzH54VDGQL6+3h24pqXLSPOqilM5eCDJASkieSaNcYyHNd6XWYIEYXKda7/q08DKWy6bQxbm3xWpdshwHXH7Dw3/CJFpabzuS7M5lnlfTy6AL/xBnV9XMs9gQp9QHobUl48gYaAdawGCWU9jejwYAzVNv2h6E+/lepHqR19AHVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744438794; c=relaxed/simple;
	bh=UuefzF4cDDLGy6+pOVvgASL083owyD5y+bazddCWV/E=;
	h=To:Subject:From:Message-Id:Date; b=PDXzwyBP2dxP8BTBGvCNriimkyJPVjAlHN/qn67zVwduK4BBWYdKZWGdCJmS4rNafp94LBIe51rrq0vQ9wkJiu4l1cgeNcKLbVaVilZKaLGFBSRIcZWOMSqs+Ds5CA0U2VgIIPS0KsvVczu/Ot4Q6+usrtIdDEjDOtJdxlkc39w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svtBxEb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svtBxEb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9D9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744438793;
	bh=UuefzF4cDDLGy6+pOVvgASL083owyD5y+bazddCWV/E=;
	h=To:Subject:From:Date:From;
	b=svtBxEb2MyWbvpbrZh6Oezr9Y3JwcLJG3QB07N+khYY6uJImtFfTeB1BP4XqD8zEg
	 0LWGnJCHaXz4g9BqoLJq0lLvss2nkHBWBw02bMNeZCz2BNYj9tSWelUIr4siYv71tZ
	 WxH8b1qjJDQCsZhqJTVqFPbLNB0xr7OwKQt+TKM1XffuoH0sUpC8QHZncs9EgaMl3J
	 FXjvcjM/MmEX0KTIDbV6UrfakquG6lvv9v46eMwvsWXTfQ8iFZ8igQ13J2Q7w1My75
	 /9+AMkjc8tWG01tupso5C4nip+Ro77CSp3IQU2Xs9vlw9lB2yrjREu52fWpbkTUQ3G
	 qLwJfmQ8n/bBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22BEC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443879360.20771.15691463442565798991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e126569cb9e153c3c850818cf42bd82a82da46eb94feca1a4c9b79d45e4072
Date: Sat, 12 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744438793
