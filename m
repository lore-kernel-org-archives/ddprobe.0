Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F181EBA1E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758899394; cv=none; b=tXLeXx12DCpaJFSome0GmC+0XTSixRzugnliE5Cahyv6/rcQBBFgp0yzc3heje8PQli/xKgKYOU12R7W3D/GRQomGAO4Rx3l/171X4ojvzj2VQNWjmfr4qPGOR+IPfuY3EeJxfswc8ubwEB5Z7//RzHiEDbOUTj07zjiKNy+dmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758899394; c=relaxed/simple;
	bh=WlDgJf34Rt7pGIL8Yp3OM0ZEn+fJDaSpsqa1BuiNcLQ=;
	h=To:Subject:From:Message-Id:Date; b=mL59Hi3FDkgNoCtboTpIxv6Z0D9oWMSdK6j1ySQCjKWvFCDwAvRd7y+Q2pXfX0TXPz9PVNC74rzGXq6+QIJofrliKhXcvvYHOh8pooSicbnh40HpgydrvxRVJvZis5FPASGgZ+/ERzE7lqXeAd2DQpW0ZGYFJUqRe9jezcJDH50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBS50DUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBS50DUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C0AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758899393;
	bh=WlDgJf34Rt7pGIL8Yp3OM0ZEn+fJDaSpsqa1BuiNcLQ=;
	h=To:Subject:From:Date:From;
	b=HBS50DUFyzxX8GK7YHOGupNJT77C1woJwOiREi9O/67ttZf7xYtzRyBhLLTVBoZio
	 0pWD26r7WBKe+MK/maDvIfXktdyFrZU5xPgOWW+E8X+HDfUFUJWK1cTnx64ME9YdhW
	 5z2NCF5GaTQDMNiJlW3oAkyUVdPa4xDG9CW67iYY4FzA0dtKqtxHxayQT33H9G52E7
	 +fs2IzFHBrUP78ORxJgqg10pLKhjhqcbaoUN25GcE0GB7tkFiFNvcRJW5lnqZtrAyh
	 x5nIgbfiN0vVCNXdPhqGtbZa5dbpJ8gC7jDse2rK7dlHEK64kryB/ytNuToQi8dvUW
	 4Qc66ccA7v5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A2CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889939359.12809.4410328656223587505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc57bd5a4a19d8a9e019d708ed6323b331094c25bc00d6e0da0af608e794672
Date: Fri, 26 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758899393
