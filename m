Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663C42E40B
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741232334; cv=none; b=gfuzGi3Nlf9H+xZxlfHdRC2MIepfFQ8ozIzdc09+MMwH/V5H+Z5Xi8WATFv4uKRLpYM7aZWEh8oU+5qjTueCQSrUeGn29iRozH+8+Md8Mx5txktcnxG95A6M6SQv1OBx9mDnO/g1eHn9PHp8YqGK3aw98Kxm5rVPkQWkqMcXQkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741232334; c=relaxed/simple;
	bh=/mhsdBvQcru5rywWVqzOpTMxM002OtR383Ei4nzYFs8=;
	h=To:Subject:From:Message-Id:Date; b=Y5UhoNy4X5PxbptHgqVZp3HQJQHyrx+E7kC3WlMaZkHgn71yuWj3l3UjOP6NSmH8Sl24GHpHxb6bjmiJWbmRjIjc1uAd8ayzLEQsR008DkcTxI4vBdgjC8OmCW4Pd1J6HO7dCHgfKcLIJXGcxd+2UgA9CN2WyszTJ04Khak4+HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVb+YhvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVb+YhvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CCBC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741232333;
	bh=/mhsdBvQcru5rywWVqzOpTMxM002OtR383Ei4nzYFs8=;
	h=To:Subject:From:Date:From;
	b=KVb+YhvRhyIxwbN4L5frJfq7KuwbTh148kxHmhxbUOswmS0AE1pEzYCn4MPm8ykmk
	 r55uxOBa0Pw61Xm5HdZIDXl25yN+ydwb6JQI70jVkjjrqfwcvF3DE3K7uoq/vpKu2c
	 Ju+GnWbxX6oFLJ9smu6UOJqoROAlHUaE1MPXnd/QVGT1Lsz+tFkAFfnHpBN2SpFiEJ
	 1ms/XtQJFQGCmD03s23mpWkergfcfYfB0ObtHSRGtn4Yls/FOeUSsITFxEnqRLhD86
	 vyqNYBJdEnuCC+n3/OewDmyCZEDFn2+fIoccVKJJTkE45BT684BF477pj2jqt97MFO
	 r5CSeIXNSuy4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C07EC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174123233362.19207.12398633956112511473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0721ce46ead4407019ecb6bbad715cdfc8ceedc7de1c53aa201f47502e53537b
Date: Thu, 06 Mar 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741232333
