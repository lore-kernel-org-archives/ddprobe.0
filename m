Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181E1360
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731893754; cv=none; b=qivDy9CSfpP9+Wtu0VO27PJ2odORifHUEiCzwO1jEGW74leVbhqBHN5U6W9Ej+Vy1gxp8dQGFcY4Due6eiHaUP7Cdj3n7dmA2DjIZMOSOQuAYkN6skTZnbsvx6v8F4JJSuD8Rq/+vyaYLYwQAIg/rnXJLOS2myUh0pb42dYn8wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731893754; c=relaxed/simple;
	bh=LU5vBV0fHeRRHWH6LHC3Rse6r2kx9ngyv8k3UpCOCP0=;
	h=To:Subject:From:Message-Id:Date; b=tjehA35nSwIuddAsaj0noC070Rzz/dcpi20H4nrpJFbpdPJn3iUEERtg0Yjb7GkdVUuVHRGuuqWb/2/EMy67J/cTLD0fN7cLSFbFId43LLy6zDaU8HfqS1vJKojN4I+U6ASWpJPpmWLugxPs608OkwyHPYzjCLYhiXXOfyLpmck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtMkVr96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtMkVr96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3BCC4CECD
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731893753;
	bh=LU5vBV0fHeRRHWH6LHC3Rse6r2kx9ngyv8k3UpCOCP0=;
	h=To:Subject:From:Date:From;
	b=ZtMkVr96QxQDAB4io7M9TGfGjMgqi5oEUTSEGlk/ogd78xRIAJn6cQc81u8gLowP+
	 DkpBwcHmrtKMiXbkfc1QziDT7OUgE/BXiNukqWZ9M8y+dyVTodNE0eWucnJjNt6dmB
	 dUb34tQUokNtU7B+M3Sr6VAAZzXsSuzLVs/mTOEogjDHWw1sDPc/4NIr/pCJirr+yx
	 k0jUBYFVMOVcWLNvgu8EeW09/q3HX2wtMinA+om4s/jhIkOAZkWVbusoMn+C1MAfMT
	 pGgPwp385HCHREMBL4WIDGpPi3BqIZlEhujMldG3/WOg4JG2u0CsaluSjTy8lkZ7LB
	 N0K/hRCwlEhfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BFAD10F3A
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173189375359.11673.6094262881277343365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b75bbad4a28b3b73f041004f94928c88070c287121bec23de99dc872f06e4b9
Date: Mon, 18 Nov 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731893753
