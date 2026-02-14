Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FCEEEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771078494; cv=none; b=TZd5AFgUF15Qg3MA+h4+ciN4V9Fqv4MjVf7EYIeSukSu2X5mQFFAQLvUfVHZVRVg7dPr220rxuCQ8hQLJmQ1iBVHySawEmgF+VA4f8CTQsEDDkHtdm4erk4ZvGoE65vfnAH6dKvIIRRfintPdYhPWjL1OYWxkYsOVnMiazjuaI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771078494; c=relaxed/simple;
	bh=cYcQ+EZY9WTGLDs12TglviZlGtvljLzueeTrcY50sZM=;
	h=To:Subject:From:Message-Id:Date; b=Qm0mokxQYOWazazhqIC6owXgfTj265hhJWBR9yQJKkmcbW0g57Dt8UH+vRi/ObVo8EGZwS4vY7SgxkBxJ9+FABsrr8RmOgQz4ysYUAgLRJkxVzYVBIXWKQBFUQHo69IeEPrewsMyWnynHbbyd5OtoYHRXSdJJXUMUrgZjMM8VGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/hZuZhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/hZuZhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC51C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771078493;
	bh=cYcQ+EZY9WTGLDs12TglviZlGtvljLzueeTrcY50sZM=;
	h=To:Subject:From:Date:From;
	b=M/hZuZhjdQdryZ3c62h7Mo3zr0dj6oo/b/dT9oiMA3RroIVBV0vKlXs6N0Nih4OEY
	 g2GiLTXNuNlJo+kC7WQTCnYeK2606yFi9Yj5xH6UEngBVRYJzc/iEdyJfXmnBQNWw/
	 i4H5aIPyQ89IHwckHgrfKXk5Lppvy8DO36xExB+88H1+Gu0f3J59+/ZzBY5Yyc40mM
	 6dZmDxWZJZvuYWPMgKIrDAU+ZVtVuxpK9jV3l6lHNqRADhg9NSgBC/X55HA0gjjLlZ
	 DyaAHnoX1dU/mW9yeRlmeGq0ZpK+O3azRHCe0HbkuEKr8lQ0GIK4QqiBiBLtAPDtPH
	 3FeqLIp1YEKYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9409CEDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107849359.23399.16947105282528261587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e7b4b2bea9d485de03398a26cb0ae8cc57232b44baa7fc8c8655e60c2ceaaf
Date: Sat, 14 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771078493
