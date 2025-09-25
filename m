Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590872EC086
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758796194; cv=none; b=CJo3lq7s0Pjp0avq6PEGZp4vN0tJpqeekxees6Pt7zcPuEgeSDuYhQJS1zwm2Nwa8TLu1ZlAuSVg+OiKCt+j1xDhPkE8rIoNk4+Fjt64NDNSzuD7EDZ2DD/+AQxbt74fKEckEBayZgZq/HcEAbzaWygDPaaAoXldvk1MPrRuvUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758796194; c=relaxed/simple;
	bh=RCDzKFP1fBwsX+z+2NtF11FSMt40lNrMSXCaZVaqKYU=;
	h=To:Subject:From:Message-Id:Date; b=eMmBZLfhWNhMOGPfLnoa9l5nOMy0dfJ49uTmJwebVQkCa1O0qfKHmm7uXrXO2N8VELMcqV/LLygpFet3sArRQ8dZLqTrEaflPmE/njAYs1lechm+gWCC15nvWLNhAbvfIWjIdGgxxu0AFiKY6Vwbus5pUL7ooAgaf5q54k5nY2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1c+ITRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1c+ITRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41E1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758796193;
	bh=RCDzKFP1fBwsX+z+2NtF11FSMt40lNrMSXCaZVaqKYU=;
	h=To:Subject:From:Date:From;
	b=Y1c+ITRIHlmZDxqZ7WopmUAD+m8y0E+a5Sp4IsiAJa/v9hCkfEOVsDLYqDGLB0Cl1
	 GAF36roFwWygUWkUMDPgEMzBvQvnDbusFCaUKzaQ1XmnOSiL1LTnhvsj1+x6f5VHdi
	 yq3Y6CAVS1XoKdaL9e4+0Xy6b/bFym0qXhkC262XaIU8aFrkFWEENA70915+1K5Nur
	 W/AmgZK6IQyehN87U3k1uMAyqfR88CvZNehJJQVv8XpRrkEakI5+hFw0eUhvQKflQB
	 F8zZ2PPkNtMbdzllx1rc9/aq5QK/iW+Dhyy7CnRzLAe8UkOiVwRW0mmVsOtimJnXLh
	 lIFvYNz4Caamg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E19ACAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879619361.25429.1639079176489379922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ca7b976d5f53cf2f5cfd8db9fb8cf98a49fd6d3d4e3e6970016c3e968551ec
Date: Thu, 25 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758796193
