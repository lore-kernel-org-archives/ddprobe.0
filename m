Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41156126BE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726949154; cv=none; b=VgNHEZiW1TYGHi+Rb4prWi2aIzCPtAMXOfE/fn7qoMVOi6GzBMABinm6fcFHDj/c0K02bqlKWAVllkWjwuACjPy2SQO9c/eYO64QWI44vOjwa78m/wDQ7PIFR2a7qhs8LoPR1ibJfY9YFHAxusEso5eBYKK2h6/u9hdTxHzcp1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726949154; c=relaxed/simple;
	bh=YVgWb7rj9edna40Nu0o7/iEy4RtRhrdX3U7+I1zAxMY=;
	h=To:Subject:From:Message-Id:Date; b=gZ5M/qRDYRpKp1ySx1lfxNXnnJSK3qjgbr6xWujMeOyQvRlH4rw9/ANPbGll1CCp1PKuoPfcscT2ehWiFXel+sMZe8J+sNotKGlVNR1R2YjZ+X10awLwwhmgd9rh4BRBWXmU82DtgkBFwhr8sVICE2JeBUHpxwQWstASEJNwn40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK3xu0Sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK3xu0Sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF707C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726949153;
	bh=YVgWb7rj9edna40Nu0o7/iEy4RtRhrdX3U7+I1zAxMY=;
	h=To:Subject:From:Date:From;
	b=rK3xu0SlDlucuNsvl7p7qha6Bt3NIh4fRdTsJSYJHu1ojTnB70MxMwFCjlE+ri6/S
	 PPjJazr2eay8DFv/BUASflEUvOY2j1YpWUOJqSMVldm9zg5rL2jmsoj9zD/1SlcH3I
	 ww7CpQ1r/zt6zv3c+bikWEgQOoDenEe/Aaq82CMtaCSjElqUpeGbEYJlnYPr2PgB4g
	 tYcEXWlMpvA8A97t8+BWvMXG2zHk8asjSftImx3OJTeHetqS6hXBHNJyamKlqasJ5T
	 xRzQINIzQpiEqVn6KNkgqW382omb0idsuW0SWpVHuY14QOAlLfkfdvqrDdVFiMgx1H
	 5751+y48TX6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA48ACF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694915365.5569.16344816033775543256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776a84e2a93fd1a1547c4e0b040a6ce8358fdad0104d566a09a11f5cdcad5d3c
Date: Sat, 21 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726949153
