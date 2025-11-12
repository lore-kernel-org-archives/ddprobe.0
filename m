Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E2D35CBA1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762913394; cv=none; b=Ve1OthZkWUQyx701r7hqxRe/urc/uWH/SS1Pj/Vx0j4vHIAM7+rCfIsrdcp/VsdMvQSkwQJDs8/7La1JSi2X920Dbapz3TifWj4nA6Lzdi3fxc422xyWlc7/Z4xqwB+6C/ugzibSwkQSmY7ZyCxCJYFuL7+ANmCDA9lQy970zT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762913394; c=relaxed/simple;
	bh=JgP3hqA+9wfOFWVn6QLZZYAv40EL1samV/j07MdM6zU=;
	h=To:Subject:From:Message-Id:Date; b=YbHn2tnY3Cpy9lu9W2TyTglAnqQp53lO8n29GiXtTmAOvZhYnHY0aYNYNy9RGf+u588QhaMZY2TqouSCPMARXmqSF2duLLa+iUWohJ5e62U8Xw0FV6S1PEp0hf3tXC4uMdiLRP+qQUhUVn7+jdgY4YYfr3bslZY00DGL/PFR6+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peJ6vKj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peJ6vKj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6221C19421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762913393;
	bh=JgP3hqA+9wfOFWVn6QLZZYAv40EL1samV/j07MdM6zU=;
	h=To:Subject:From:Date:From;
	b=peJ6vKj/XSU5pX7+Gt9Fk0kNjcCcHrn8xqwktpEzbAdPu3AfAfr8KUndNGbMqAtVT
	 dllqGoSHtqoV6rJ1srir3r7SMA2mpP8Fq/0WQt2N4RcBF5iiSryqCgcw7hhJYXkaPZ
	 heaDdGyakoLfDDmds3lUXTj6qqAVhilvL+I7cziN+vCnZFa9cWgTlmIDolCI71RvFK
	 7WKhB7HPCrKH5oKjiDavLdC6a2qXL4zhrUtHtH0fODLi/vhSWq7FZYNjbuZEBfk3rY
	 ZZky0zhqezMeW1Ho6zbxBlSqiFOP8zathRf8XgXRENlWNDIWir2nZk9rLIL+fINk2U
	 XZdnOx7Y8heRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E04CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291339360.20413.16977930310422428616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2a678a100c4c8081a87a76187f27191dbac2dd3a2b4cb9d49123d7c7311323
Date: Wed, 12 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762913393
