Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3791B3925
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751039394; cv=none; b=XkdcqFc3wHq9l7ewzK5W0xOdGJIhMU4qAwDH9LcvfptZfVWfL3vwAQJp5x0RMrFzuLmhupqZ2ElGIf7ortbcEK0RqSBt1F7tOOYiAXRw3X1dSLMMrG717X2dXEEAuGjynKdx0sct5+iP5Q73CE17oGJQmzT8J69jWuPGqcawQoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751039394; c=relaxed/simple;
	bh=I8vqDWErZXw3QpjIzcObAbtL2PdPuVJi70Mr70/fJZw=;
	h=To:Subject:From:Message-Id:Date; b=TGjLoqfVTOSzUeCMSjVoSwF1lSVQmx77RBLDIEWLSRbVRH2ysVzpxUSiUBFky21FpGnUEAWWqd+/aiHL2sFoCUI/74m9TpXiNmd4v85aikQ8j0UU69QbeUEQ9tGKuf2+ZAVLUpAhHW3TUjO+gAF1P+VKRwKbqdOf7y+hz+L9AZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAogWUNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAogWUNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751039393;
	bh=I8vqDWErZXw3QpjIzcObAbtL2PdPuVJi70Mr70/fJZw=;
	h=To:Subject:From:Date:From;
	b=dAogWUNF9V9+HDBjh98d9E8YLkiPj68SCnuGZOGpOSWxrc7aMuNlggWBn/yiyYJZH
	 m0dMutwSE7ZeChz6RRbcHPhEFZ/cudfRS83lk4yLEyABsqzVdUFSo0OCjln2xmVas6
	 QIJkNHlNOHjlQHA8/5Hg41KhcVww/DBx4625Kmsj0A8CL7UlG9qtqtYDE1kmsbAneu
	 W/0XtSP24rRb4MKCyFAYnxHhZmwY4BzZb4IqaRvCT3DOcVTqtRVw20NFUwbJVr7/Hk
	 TSXxknfMueyXAkLFdgFYu8NGSMrDzrAJTYWy6yYPC7jAqiSxnL2oWynu+dVm47zhSa
	 Ce2RThBP2NCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94633C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103939359.17955.8675611233813280506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ae2f655373bc158020719c4faae9ba2a4478c6750e65f4d618d82d7a6a0a30
Date: Fri, 27 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751039393
