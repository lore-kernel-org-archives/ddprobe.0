Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2741898F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726156554; cv=none; b=WJGke1bN8VCYxPo6PWeV3KmybbrYUb5m8xsjtGsrBhanLARSoUh3uy+wKF+vfF/eP/B4ZCbL26v2piZ5MRDmR0FYuqEHBu42vvex7pGiiKephjW4WXNDb5ZQoIS79JEIFMoGaby4ImoQXOiRBaa8vLu3tKyLzlKWBkYjPPVLP1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726156554; c=relaxed/simple;
	bh=Wr13JOaDhQGsr58QQNeW4EGecPa7OCQjVO4dvgkg+R0=;
	h=To:Subject:From:Message-Id:Date; b=oLQ/UFyWvb4+O3TGIed3Y0oYuStD2fs75fQNncUPLokQGUTRzQi2vfKTvi/bcPlS/iEQQ7+djg7HkEUotlWRYQYhNF/bSbGzxjk9z9fI8HPu25XIXYSNXPGyfLrVj/jXuRVo0OL+4uaDpML9kJ1VEnWBwccK0hNKtJTpbqi4Em8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJv1sLWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJv1sLWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD439C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726156553;
	bh=Wr13JOaDhQGsr58QQNeW4EGecPa7OCQjVO4dvgkg+R0=;
	h=To:Subject:From:Date:From;
	b=sJv1sLWbf5CAyP65FNq0S50xQ5vwy5raKp3yLZmfWSIYSC0VgZWHuFeQuM6Ipoe5z
	 ucX1dBNwQaDkjsP1GFG5Flw6/Rgmfto06pMw/IbF5pJDm9O7koKhn+7QstvYvBnwyu
	 8WEhwFi7VUvkKH1hFLvGXllFA4FpZlzRR3iviIm20bLUm128qNA4YEM/7oePw5d6Lh
	 19FEGdSkLfEyZnk94S46VF6D3K0ReMmlNgLsMxxgMf+LF6WrDvoZFrrfAWBCLscLAv
	 svF0mI29f1sZDPTAlKSoBuBQ38a/cBTs9vX4zUgl6IreQTYD4xZdCoqQdEOoQqTJe0
	 XL5A2uFFNtzsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF1AEED615
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172615655363.27104.14182033417048268060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea878f2fc0d39f2a06bffb77ca4856188acbe4aec56380b75fba6289ca57a67b
Date: Thu, 12 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726156553
