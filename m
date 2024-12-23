Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF99D18A6B7
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734980155; cv=none; b=DfKo4Gb5Q1He/Uw3V27IuF23jw+i7DHrj5vDprgLXU7bARUZadOaqEYXK3hN8ZJGLEbOpBp6qef5OX+uIunFsl7QoHk+BubwWXnk1vtCNCXXXwKRY9sh4J2x2OKNXw7hp408BD9TEJ2+k1MUU01df1d1xI9N4P/I7VLw89f9e3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734980155; c=relaxed/simple;
	bh=CVri2NLGdUcHumwozspjqiBXcpo/wJkH+cGXbgMDYaE=;
	h=To:Subject:From:Message-Id:Date; b=pqaCow5uMhoeiKC01UXJP4VS3sFaXhzeC+eYXYBSROC+PJIYw3cPyGtBB2iz1M5q2LgFR3r996xKH4pwTPt2tOEiZFrUQfkcd28Vc3HVemE7ax/Fa8GKsCeypBzYf4W2cmg+GGYdzbUpTgxU7tqZDblVeA9d0FSA6QgpxnrVScg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4kMLiv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4kMLiv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04C5C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734980153;
	bh=CVri2NLGdUcHumwozspjqiBXcpo/wJkH+cGXbgMDYaE=;
	h=To:Subject:From:Date:From;
	b=d4kMLiv3jduq7rolFsBzIPUSG8dVXCpK1fvz2cSwWXBzmPscrDdbV2nZga+rwh15Y
	 QvukBKrBt3U6D74pjMolwnkWEgeiLm91J+0ikCAjw2q7PAnZNxmgaXi6HJIJenRmxp
	 MkKGGHYXVfnhvVHhdkS6Ov3q1xKFtj3TjsnG2RxjuYOO44UkfxtdNBn3ja/cELlRqe
	 FtJn48OdaJcdLfWY0qUk2zoF/VE9u9+hvNDEd9Lw7oQ9sYkVmmv1/2/9NhPG07bFBS
	 NatglQFDcq5UiEs4GRzQ5hsqg7SjrhgaqUdrFr2LonKmsQSVs1oZg2a5HqIj/mFuk5
	 Wri3UxXbpXyVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D12E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173498015360.19575.13192362960226521294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e90fe5ab282b013802fa522e4db1abe42c1f851f3505e4f95560c62e567d0f
Date: Mon, 23 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734980153
