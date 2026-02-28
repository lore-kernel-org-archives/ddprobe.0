Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DEA2C187
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772247294; cv=none; b=jSQApXyZFhaqKUlWveJ99Nmv7xm00IClE8oYSn0O8Vcnnd3NRv92J4fY8F3CnNuwAiG1en1wIRBvnqv1l2Ac+eZ8wHIR6fzFKmfiyaSKo6IaCN93pbwgmE86JQ1xN8hhHgZTnRTcDW5N1SgpAhbI27IB+sCVRd3KNbsiXXpXqjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772247294; c=relaxed/simple;
	bh=UCyXMlKEYcfarKBNEZvyzDl87WXZi6uKCcP/gRAdBwk=;
	h=To:Subject:From:Message-Id:Date; b=MRdaVEbiIK1dYe0gg7nBPF62LOnsgrJHyUGLE6ClLa0ziQ9rc+xtPL6Z3UFYzF7cZxxEFXC8up7zddzaSaf2jZdU6tyb3ne/C7MM4DKdwXJFLdHht+aBlztsLWacBcs7YTiJIl2BVjhLTRHq8rjBAuBD8wF4iNulN+BgMtRb9zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKmvUXB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKmvUXB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC07DC116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772247293;
	bh=UCyXMlKEYcfarKBNEZvyzDl87WXZi6uKCcP/gRAdBwk=;
	h=To:Subject:From:Date:From;
	b=oKmvUXB+CsEyG3b56apE9xPDf5ltt4LgEoy8PXgb3Ze6/BPLUrjGr9xQtolXlcRcx
	 tFcSX07CHMtNrlgtm94jmfE+8XJDbQbvp9tjV9DInxJRmH767JcSfKghuTNprp5iJz
	 Yr7bZuNPmJoy58cjLNB4PejYTwiLy697ul/c6cUtEEYSd5etMRs5DOtVqgGrWN6+Xm
	 TfVuikMaZ8qbbxfvRh4zCoXvHvZpXZIllo+wZfh+F2/WTycP0DePXX0De44eOQuxs0
	 tpoCP11gAm/G+Oc8g9vJGNjnVKfLYyyaym14aZcWeAgcPZYloUpDrmpN2735X+mvFZ
	 n+mts7KS1iHBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985161048926
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224729358.18686.2202879790379892805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f31646a1b33125e95912da0495388fe340c96a22aa6240142d8d57a7d7839a
Date: Sat, 28 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772247293
