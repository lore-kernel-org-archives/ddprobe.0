Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29502442F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735262754; cv=none; b=WTbSnReJYZf9cRo8byP7emn4KYHIP4qf9IGOGIoDsGcdwfl+G9JqJ3r/D+ahXQUuJa5YHLpaKe/M0g/BAdltjWY3ahIJeIb1ZZrsBtBCXTzS8SX9/DF9L7BuMJW4hjO3ZmQnDSyNLSSldnLH9VuqOzxf+HXrwckUcfwadxgGkGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735262754; c=relaxed/simple;
	bh=PBymd/GB1rpr9ZYSpehWJx8XHh5yyp8sRjnW4kGn5SI=;
	h=To:Subject:From:Message-Id:Date; b=cuRffK7TANnM5ePu2LzVPGktzaBaR0YeZb8IXlF8SZ89c3py/5M8lj9PoIWF9kWfPphR93QcD2AFWUNDXYkl2JK7ZiCrJ9a+phILLiABnhU2JjWgjo7M/euweNx7a7q3JLu/n+bmPl7BQ6iH1kbBS3q8vMJGVOtbDMbJJuHNeUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSoObhSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSoObhSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDD8C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735262753;
	bh=PBymd/GB1rpr9ZYSpehWJx8XHh5yyp8sRjnW4kGn5SI=;
	h=To:Subject:From:Date:From;
	b=fSoObhSrjJ69JJStieJCE3wrFDvlKe+AsTX29TiHRXgBcROivFe14t7ADDvoaBRv+
	 1OJ7myxNZzcb55w/Wye2WqNx1F9z72+IjGwe1Y7elJcqrnbwZ62oLiabmbDqARCjwd
	 3tMXcZ+wQ+76L60S4gpvLGypZm9f8+bhlj1roVSgOlpIIzVcB3xqpw4SroThdc3gg9
	 zN7gR/GAx/XhvghYITWrUoFtDwbHGG3Wshl1wU80RCQnkraJus2r6HQ0mTMfT6xAQM
	 CmvNGEPXYwjlekuo7WOq4xFzvGYXG+ugNY+EP1LYMvZhOscobeDRUERNaQl40FjJM5
	 IykeeCoiPK7AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF7BE77188
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526275361.10854.9115226002712795328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356846384e4ae63d79aa1d3539b329e7ed2fda9b1ca56ef8b378054f1447371e
Date: Fri, 27 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735262753
