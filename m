Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3700C2367D9
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781411194; cv=none; b=jidgwNQnAp9KbNVtA/g2YyJD1fO1yVn6y/7dct+157JmJrvbRKSQMhpJbgEXtMhm/ZkaD+/0V+Nm94LI8vpV+dGJLZr3fWV00t+XvvQOHgWy9+0vYgYoXNdLvn1ajYy0jDAmHjBx+wKVGd7lEYwkq4553pls0IH9QL72mj0QUFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781411194; c=relaxed/simple;
	bh=OydezP5ynpkBw7NJyV5ng0pCy5ivAVuOQoAvdl37crw=;
	h=To:Subject:From:Message-Id:Date; b=eHvnypm81fg4qplnqP+Gfk1++RFv8iwYgdHAo8jjxxrYGPja3ftuSyaikuAY2C2HSFCDr9iETB2c3y2jwXRs+qKEBVkXbQmZnsylawJ32CEWvl1YwmI5fxM4MvGFW4fbdFCNfLF/yhGDdJlKeb72KJqoLUCsnYyWhmh/mpYf8V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRPryNAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRPryNAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACFCC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781411193;
	bh=OydezP5ynpkBw7NJyV5ng0pCy5ivAVuOQoAvdl37crw=;
	h=To:Subject:From:Date:From;
	b=WRPryNAe6nWuK3fNTc/HcSG68RYwO2P1xjhPkpSXQa6uz+KSCfZ1jAQxyb/TzDJYL
	 t1EjJQD8kkP3iUhjyUYyQZ0GGZPn4ek3oM6UrLnhNbVUIgs07qq2d78Rno6tmQcM+Z
	 bv+KqwwxiZ+PxKFdtdcUuYQ38AkkdP4TpEt6ZPt2Y81UsBkwf2uHRzt56gXJXF3sjs
	 v6/tze1UBHfoNStKSihKJCDnLArkhy7Kdkcwklt1ZvIepthV+xCANCDcZ5XwqxUfic
	 6NyJVOfgojja55RHkNYAmhiHCzxn+K+Q6qBhLuFnDZPyYL65ilKIFMzGl5AgCs/b3U
	 5VgcKeyEQez3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A2CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141119368.5017.4298917515634900260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16891077cb1e7dd8892707e3fd2d19dbc7070a10a7df42643993f1132a95ebc1
Date: Sun, 14 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781411193
