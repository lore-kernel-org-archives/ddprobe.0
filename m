Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DDB433AC
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751857194; cv=none; b=LyCs7SPKbJR3NxAxGZYfqJHNbYKVAq+qd4jsYcoWx1aWUK9iL/EPweJdNfAYGMN+qE8z83pmhK/8mCXvOK/zoIF4UGYsbHqYwy72eNIPnjHc2P9wNfrocDzeRmPdxhG3Y2xJM6CQE1vIl3vAPAXtJFq9Ej3+L0lIU1pAbL7HLYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751857194; c=relaxed/simple;
	bh=s9oHvRhAe0WMpC4oLDCFap1yoPoa9WYZi1uIlsqekDk=;
	h=To:Subject:From:Message-Id:Date; b=MgOyzWIHbqspSwn9SG89uORgxTwVuE4fLBzFwi9DC0z/bEWlV41NYneq1s35xyGFyIiwXAvCzPMUaMS0MPtaCxaWbIs7x35pfCYg1I1ds1fxHukmdEVnuc7xzXPbIUFK3xsakb0kVRMVkg7lcr4SJeCiQFKsDcmqDH92bB46a7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGXVea+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGXVea+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07FDC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751857193;
	bh=s9oHvRhAe0WMpC4oLDCFap1yoPoa9WYZi1uIlsqekDk=;
	h=To:Subject:From:Date:From;
	b=bGXVea+OchPj0CgQjrkh4gnIxNlGgsJ1Tk+16ZUKEO52vkypwnrbpbZbs1e1Qlrdm
	 BCjWZP/pyFDfDnCp1hAxx5cSnHprXWpUQzZZ3xv6CS6B7XsYEMK4S5VeKwDdEu0RQ5
	 XrGteKWY/NvZPqkgZ0Ees2Nql8F/vP8YjIGAKWAU34IvBFtwl86BwLVGluuJRJgwbE
	 s5pwWCy+kPMmbFi3Dcn23pfuMtM0QYGc5s99sO7hNKJlLVxBWqklwERP+SyFsaL0Qz
	 eD7+TRrWzBZqdao6lrU/J9JH17MCw0u2Tjah3YfK8h7Iff3a5oAnOFZiYn6mhce7I/
	 tYoDrpZELsiHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E849C83F09
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185719357.4935.8724520054239245104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6fb94774448d11b309849d0f7c9141eda0ef68baa70733351eaf516361b416
Date: Mon, 07 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751857193
