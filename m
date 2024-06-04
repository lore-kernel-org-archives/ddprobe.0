Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5568F13CFA3
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717517183; cv=none; b=qZRHTovJ1nVdWPbU9dF/TRLpR8bdwyGmCVlZi1hFLccYqUnifgfAeA4r89DDFhKsDODQ+I1ltXnIAVrcz/PDYxiIYsnazQwXw17eq3Oe0WVYx55/GwdtDe+keB8Reb1HsIiypLrxFBOe+X59BHf6JSVCbR192ZL0Q7EFYh+Q9fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717517183; c=relaxed/simple;
	bh=li4qFyN7MvUrt1ixPrWMnfc8CKyFO4lSiLpMOvyyT8I=;
	h=To:Subject:From:Message-Id:Date; b=aVEvYyZ07McXObivnHqnMxbb/pAxvn8XSDyy0+9AaxSbDyTj5ukke2+dGgPd4rD32gdtMpGQNJeSdyOlD5RluxBS9AD9C3ik8uIfEXb9XO89NQfJdQcnL6ADishGwKjZzX8APGnEjx1LZCv/LyLGHqYm1LZL/1JsX+BtA3rObpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtXvXyoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtXvXyoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53A6C32786
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717517182;
	bh=li4qFyN7MvUrt1ixPrWMnfc8CKyFO4lSiLpMOvyyT8I=;
	h=To:Subject:From:Date:From;
	b=YtXvXyoZFXZjjL21pX93Pnai/5Tj3jHad3QfBVlpCEp9gex3oitK91h/IEPoBKJZ1
	 wtLVXnL5vgzTahgKtLPWXmn0Yph1a778Vo9dm6gnMzpZZR5GpQDZeU0aODrmqxxD5f
	 JdjujWaOOpzFZr6YViGDFG7m3VazO7zzTmsy/4cpO9yt19/9Svm9GIVyipzv2NxqwX
	 45dif/hxN5vuh1R3Qy0D0HUVEk6HC4HrpQcA9iVlmy1jyxAj9LjzMFTguz5n9yXhPu
	 WGBLfHkADDK/EQzGbGa1W4OQzyvRugI1e/CRC66Gu2kW7B7CMPqnlS1/rA+73u/B2R
	 e6vS06+tftz4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1983C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751718278.13632.8586377968681762049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b2b8c2a8fbfb9bb7064d3f738849c33d8188c4094d4e17f1747da9741fa1d3
Date: Tue, 04 Jun 2024 16:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717517182
