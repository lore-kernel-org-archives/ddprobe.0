Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A34824214
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709105297; cv=none; b=muJGMB+TooY9Yr+1HZpjtRpxP8xEFgedhx/sYv/96HAFuB96cagBDGklW/+vdmIzDAKy8xixQl9vBiNgmwI5cQylY+QnZVGOqIeQ8q5hk5/F1OjoS2aoMYkwuaBn+hYJupI3axXepkdGPQo99BS6sGxjUDFgjg1x9abkRElJQPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709105297; c=relaxed/simple;
	bh=0mw7VLPzktxRpMHsdCLb7iQhaCgWC8ymYS1EJ56zF9w=;
	h=To:Subject:From:Message-Id:Date; b=s+cWGOeh4WmAyl5CnCFdKxb/H2O7nv3FN4CnYIqSLbY3N13rZpOOveIzF9bgHPBrZB8AxZ+yQZfaQE6VQtKz7vdTFYcxg7IJvVsLVeMAKQK/fDmRNqzSCJSKE45M5y6NF/9ssMzK/fGooKbnfXrPzcAwJ5uGtN4FccdSMDuqWmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcUmSWKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcUmSWKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1F8C43394
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709105296;
	bh=0mw7VLPzktxRpMHsdCLb7iQhaCgWC8ymYS1EJ56zF9w=;
	h=To:Subject:From:Date:From;
	b=kcUmSWKWAo/sXcLTi/KRl4UsfY1t9mwUI0fYAlIZXlyIUNPtEEbCNNu+nZUiiet8C
	 Lgt+rABKl5feny/HgJOa3HOLfXozRoYl2KcbEV7UIriUETUHoBmv1yuHA8ebcoQOx/
	 CHTCZx8CzvyT/4HgsdZBPl29HqhxNynWnXRDTtX8d376Nk8x8FHV+GtzgiiAry0j13
	 DgQNsvY8WLZWvggnPMcCpOQr6hIzwEWqwQ0303Nb/yeuPvNSGuIXdN2xySwZ5l6JF3
	 5pmFC9+OufzYn6qFQUZSIh+Bh/eP1nYegKOZs2S8qEERNIGiBsfTwhbx8Xj3YzvloX
	 cuNiQ75dvS7Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61727C54E41
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170910529639.11301.3348738597631840957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed438cd66c660b8967c094d9e07f18f5467d242b1e60d4d496e8045285e6ed68
Date: Wed, 28 Feb 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709105296
