Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114A6213236
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757330994; cv=none; b=E4fG/SmoJ1Hjt+tzmFu3HJpqXW1yHKdTvtS7nLL/6M8xrfXjpOHOzJ1hRLJ0iPNBDJsJ2sLJ42iQ/D6SQ7iaOIOwhYnCBCyJSZJa5qvm5rjCTvJc96/4JHLV0qxRF0V5EzecTWKlgqylGEAMtg6LjiwkaW3NvIvIVhME9I5QbFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757330994; c=relaxed/simple;
	bh=A/kEAPv7Krt1VrNjFQCQ5UXho5OBJRfNooAh+62ZtvI=;
	h=To:Subject:From:Message-Id:Date; b=r5EXM5G/C+9q0vYW5G0y93Kr75TAl3CZslOfxNQXs8z5gHK8h1TFgx7NJtjZQhQxiK/9d3xBSUtpCvD3s99LveLh9tSpy1JxjgS9dHTf0PuXO7goBFHyVjqxZRGxABTmTAo0ylWFLxqHyoRDe90bNrnfNT34ulkgWZYT4fpU9QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM7Hsf9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM7Hsf9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D01CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757330993;
	bh=A/kEAPv7Krt1VrNjFQCQ5UXho5OBJRfNooAh+62ZtvI=;
	h=To:Subject:From:Date:From;
	b=ZM7Hsf9IXK4DgeDyq0Hgym1QIwNNBtXF5gC5AQqb6rTFz2SstPea6RNxNgFhB2mNJ
	 E5DEmKtBm1JX1z7aP49PSAZN07d4vDojWepv0XAa27Ken6atMWjNROJJMn26e+vUfO
	 HWG5n0OimjQa1IBNeUfbU/4zD/DMye91NOWENVspHBZMGrm1XeI+kEQFN5Oi168Zkh
	 O8qugTQnVIQu21Tv6zwqYPT9NSNB8Pe8Atr3+A4xO4RKKLB4HOddz7Rfmt58bHddqQ
	 fTdU4V0jKdkiTZvM1E+0WwHBFV0MAoPdLp9cZN+OPHEdeSkQaGjXoJfGqxf5cmop57
	 LgvUesOAgsBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE76CAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733099357.26022.13478846931790524413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebe5b450ffa02b5a7db516f471e116ca9d7db1a69c7b003b3046de760c99125
Date: Mon, 08 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757330993
