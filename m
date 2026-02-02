Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3992C0281
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770067434; cv=none; b=S3d2E3DNyR1yzsqSaHU0T9bDwT3AwPcS9V6fVRSxbjVhqK2bJMQrruvc6BsGcJQwhFVBBKtkDC99rkF4GhlbI8SjAS/1eiRAsGRdHQLJPfhawbpVT14HdYJyFxnnJcTWO9oS4Qwygk/thV0zV3A/xdFaG5m4KWi+yRlEiWy6UYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770067434; c=relaxed/simple;
	bh=+gQREVyO/cu+GEJszLE3jsTMldzf9dH+8XSc6fA7XDQ=;
	h=To:Subject:From:Message-Id:Date; b=s39oiVoJrgpgwh11ZQwKOJ+fPbVX8cO3H0nU4sJnZkgQ18c35hn/5zFP0SVM5JAVSxU/ICbR/Hde1nsrjKs6u842WoDloWcp1MxeTPAlHTKz8Nj3hDxU5uQus1RKC5EoflzQrL8ca5Hct88oFo6gEGp4mwtQv85mIASR6DX+C0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaVZPkxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaVZPkxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B09C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770067433;
	bh=+gQREVyO/cu+GEJszLE3jsTMldzf9dH+8XSc6fA7XDQ=;
	h=To:Subject:From:Date:From;
	b=kaVZPkxH6BE3bITF1tY4aqin/FieR5YuA8hXjTXJ+JE2JzgIGl1lBY8XPv6rAEaCR
	 7L/z3HX37FL5LgBtLnzfmIPk+HHMkayh+TtkIRvDsvh1UTdd05bQziHNV+qeQTPw7l
	 V6T1gqwl09p28MTCmmsqswJCzOGgGS259oTPZ5v/Z/mgopiyETK2+ZelBBG96mdHhC
	 N2kB8aNPxaU+OnkItNbeIDbmlEQijv+p2bS3H9cM1RxhJ6CV3QibcVsDQwmIvLvUwn
	 0oyLFyzVCcDnCjC0a4bSzxwy0n0+DTbI/pXMsaqPlOVqoWqX+KFWQlKBGEDZcdCNic
	 mC5Bz4dwoBRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B89FE7FDE2
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006743361.28562.3168628663100464921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19afb0a32fcf4ccb4ee6691de715e3e6e0df650dedad5bf912276d8a78db62dc
Date: Mon, 02 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770067433
