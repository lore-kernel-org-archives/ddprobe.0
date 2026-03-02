Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DEB2144D7
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772451894; cv=none; b=UBh+yPKugG6Vx/pDtAtnGHYFfWyliCWGLQ303M1ZycfE7dE1VVRYrhrSfpXIwH2QLgfDO6o+kTr2WiNymHFJxD8aGhWpjbKpUfUSFRprZaB0dvCgCjRISmH/bFOoo7Ch3VWYFcrB2tl6uh0fD6LXrL4oqUk5tKelO7Owe2CWksY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772451894; c=relaxed/simple;
	bh=OQ/RAVgLmzmkr8r/gBczhTMBaNzpCkiEW9EyTWICoq8=;
	h=To:Subject:From:Message-Id:Date; b=nOgT9o+CnTrUsFyd+q4jW6t+2NQxrtyaTFAWXAvUKQpRb2l/ZuGqAGG7b+tWSMoFnoO3SldFEsGGXyRRECGn58w5KKYnquZaCCXL1gaTlpFML/9jX8TJb0m/6oRdfQbQSv4V4vzjsJRzM3WWc7gMaTun75E7bZhrNQKKh/sT3ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlhDHdQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlhDHdQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F37C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772451893;
	bh=OQ/RAVgLmzmkr8r/gBczhTMBaNzpCkiEW9EyTWICoq8=;
	h=To:Subject:From:Date:From;
	b=jlhDHdQWFWz6OJAJdBAifrkynSima8zYccPJGxQYuINye+Ce1IdH1NtUQd5rd+/92
	 O3Zp8Qk47tHhIImOpWJZFdJOtom/cGuQ6ptf/cAR2QzCaxpmbFuyVisCXFuSYG8Io5
	 f7TB14Wpju2W7yYAx+WxhP02CJvMWzWnkV/QV24XZBsPQ1kxeE7ESdJNpnVTXf0iqG
	 DcIZT6+I7LV4SiCvFXRqYhd3NsoEA6C8abaPZjABuIvNOMv7Li8sskd9b3lf1JB5+W
	 7fQ81hMvoxXEDpQ8A6YCHk13vmE/69TSYtjHAXCJ/fh2kVn8m+iy1QSQpUd+eQobwv
	 fEnI0zNW9vT4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9836DE9B36A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245189360.7159.7053551838477759075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b35c888ee47097de951c855ed537dc3af192ea2e5176044403ef934ddd5736b
Date: Mon, 02 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772451893
