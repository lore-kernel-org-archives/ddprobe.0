Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D9D1D681
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708188497; cv=none; b=Dd9gnXPVHKPmoOdtQP0u5dufdUtGM8GAyyiaQy16GInOfl/ZoF/ppXdixBlykj7qAF2ym6764jKCRodbvyPhxm4tF3onTCv4BP3HNgWExqdIGZk/LWmv+zxO9ixnwvIzhw58ifXxzZZJdoMpLnzJfr1SDIlpUB7y7YNCH//+pb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708188497; c=relaxed/simple;
	bh=mfSxKJaXcnA6bf3GzGqrFAIHxzC/I8Q6VAeUGgNU5fY=;
	h=To:Subject:From:Message-Id:Date; b=U9aprKqkTWF1XplX7vhyQax/+qUm0Yqh3p5cRtYPvFOv0nvQaLcLSS2R7wGWHN295ejPWFqcwS0BJiopvcZgYb8rYbZjyYTmHAkBposh/Ei2xQL+Pp0LMZGIbs6CQx3RsLfa1yaP3cgxa4T+mHkIUhTdLWvU1bMhmAA1izq71IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=po8ADIuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po8ADIuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85DF5C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708188496;
	bh=mfSxKJaXcnA6bf3GzGqrFAIHxzC/I8Q6VAeUGgNU5fY=;
	h=To:Subject:From:Date:From;
	b=po8ADIuuU+F90Zm6dZGgKngfOoBbvGt0O82vnUaMurpzWCvD82oGJQeuIWjGHgCz2
	 JpHmt8FQHfdOauYYz/Ar3LLTjcEH9NVjBHePg38ndOO4+PYLM0ZKiKjDzN7UJdI6Zv
	 3zrHlpE7D1jbgoLC+cfK0HffCXgGGX/T0pCkwdlnGLzR4AeR1adk/5KQTnQUnKR6kB
	 of7D+AJyhDKLOVewuneAxW7LkPfaejKYYTaTwa7YBlLou8kCpOkkGKmHLPlYnHg8QW
	 LCSNLhgLBWvupL3Qz0Z2GA+SDPO4FTySg9VWZk7WlqPn5WC05i/mO1P8wI/YYNDOzf
	 pgFoQkKgrfhmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE03C48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170818849643.23946.17624885386093032459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b595c2de1bfa93f70152c6d34fc36139ceaf11639e7a38e7bc6cdc554c9a880
Date: Sat, 17 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708188496
