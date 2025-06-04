Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429E547F4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749068394; cv=none; b=XXnWogO0+r5ICjKLn5uI9iZMx6Mm8AXTqdODYQMU8561d6GHuneFINNT7s5uCxdeXlB9x5/Vr2PUZijuN7T4/Y+divhoe+tm554y/vfT6cD603qmBbCCQ6PPkLmaY+N8gCEuYEEawtk+EsndUp1dQQac4/WbJvtnQjZ2w4Qp/wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749068394; c=relaxed/simple;
	bh=xM/nfnhdmOSrAkfcPHr47yS6LLxL7udqSwVW5aYVK/c=;
	h=To:Subject:From:Message-Id:Date; b=qq2lzgN94LqTorevGixDAQYPTtjk8Qi+1i7HOOm31d1IyPQET2nMc8LwDCoQl0+UA2FbWRgJVjMg5LWDKEPiOtYPLFL4Gasz8vtSv+KtIy5bQ9enhVlJEZ/351uU/oJ3LeQykTXrAV8vK9WW5kGQim9I+s7GCmE5Us1syoRsW+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdFC++iU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdFC++iU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93C8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749068393;
	bh=xM/nfnhdmOSrAkfcPHr47yS6LLxL7udqSwVW5aYVK/c=;
	h=To:Subject:From:Date:From;
	b=EdFC++iUcZBYan0Cy0ENhA8DcXcVUMfQfsbxZ6j/YVzDHimpvhXRS5/vUPW43xAAp
	 6LM4p/lbUFu8bxUgne6908kIQ13DVErEABsKwNcb4XxG9bdElp1fIT1VVY80S6Vv2l
	 mFQbbhPpyXWvOpPemnDsHCVH1BMNo/KoQpR7NZvAYmPE4i2Sue+uHIABfjuOvAmE9N
	 1OB5W2zf9JOafyUGclG/cw5f7FKrg8Dv6U5sZPDkwzZT+vM2n9JnWq42peu9pjKzMQ
	 mAxqWiNY+b+jmhyKECMr9JERL0//EBvVth1pd9t8kKAj+u71Kz42GxKBQwcbU9HrEM
	 xse/tUNa+GjpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BDC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906839359.22960.8890015434090472121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef53ca140acad4061ff6793ffaba47385791fda571cced04bbf8f7c607574518
Date: Wed, 04 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749068393
