Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55128146A74
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714069343; cv=none; b=lerWM21QGY3TxCjXsQCzeH6tE2z8HY1B4R1dK1UIexMieacZzryE0wZhkfigkeOisNZhP/xEVqcwozK6arLJAcQBnpIK29cdoEs+PxMBO0qCdiWoYnPb04esgDC5jUFG2yD2VOB0v6kTvNu422KZNSkqUSXMuKIJ+k8YGGryJ6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714069343; c=relaxed/simple;
	bh=pbXRtM5JnwT1sJ/dZSZVY4CQTI3ZsPAKwy7EpnU0i/Q=;
	h=To:Subject:From:Message-Id:Date; b=jBEnJSS6UqBIyloH7qkqfMRU0eSKC77BWEsu0NKugTQV28F70/4cp3J54IBhglmNqc0gJUlbAg0esM9PQpvsoKpGvwXF7knCxASHDlkqqvpnnfWTOpoYfkG/eNEwo/uWZ6LfLIrYVaXrrIaTr2DFdlKANRLJ5rOVf+HWmSS0bVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKQsKQm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKQsKQm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0824C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714069342;
	bh=pbXRtM5JnwT1sJ/dZSZVY4CQTI3ZsPAKwy7EpnU0i/Q=;
	h=To:Subject:From:Date:From;
	b=qKQsKQm/fR5xQvD/UYmZ2WsHWVyKSxvAQUzIpOG4TZUOQORm4UjqXh4jiI1OrvcIX
	 tp8NkkqJ/NAnNFxHwUD3VOwJdv5KfTiB8sohTSnDpdEWULoAhf9cKq0c8RoeAPtNO+
	 +rXyS9YJduUEYSAEAJHZOmLnFEIFM5LZ4CPqKfMvIVBkPoiJKGHG70rLt1k5iutixl
	 S7TpcYca8i7RkvXzMYffsu5rkLp9cTiLXVtbN4sHXd5rKkfzeStqhQwGW6H39vy9td
	 D8BKKAP3T8rl787awQ+aD87wegUoKGQF6eaTiXA/WNzrvn4+68ot3CSLt0JvYgcTBn
	 QQhUFh0ruzHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB542C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406934281.26417.1076196157693095324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608a1acff7e9f3b26f42ac7de09710822a8e618a37a7d31e063ce849acfc4c23
Date: Thu, 25 Apr 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714069342
