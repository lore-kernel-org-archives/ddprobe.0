Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AABD38757D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770112434; cv=none; b=o9RiKQeOhrgitULtP3/kA4VFx16hOWKLQrn+ohBQAcKqXHZvVYQLZSZI651z7jaA53c7/I6cSAjNuo3/+v4CYbnL73RvWA25DT42VjMJ6bEAEjZZd+3HSuFXMqNJ7E+2EYatszZH598oCPKrlvbx4mNCehc7Q5WzriBCMmMkbLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770112434; c=relaxed/simple;
	bh=5lco+mzr+c2akvQMl+59FUE+aQvC9KOe036v3SSSYEI=;
	h=To:Subject:From:Message-Id:Date; b=SbNeYGxUzXQqQYIebn7AyfyvmSnu0UosmXi2uTkv4W6Hb3mEVb/QPABuozT5+YNbnqN8cK0TFMjwUuZbC1zzTHfkHG3YdOzt/c1iIWysurb0fdxtmTDxoOmnBONtF1RCXfItzl6Ju3Xv+uAw6DGV7FnueqzFGm7X7byHLjRtgJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onLmOTRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onLmOTRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36D1C19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770112433;
	bh=5lco+mzr+c2akvQMl+59FUE+aQvC9KOe036v3SSSYEI=;
	h=To:Subject:From:Date:From;
	b=onLmOTRzsw8OW88QOILc5ZdN6+n3MltWuc9r4lxKhRCHUF+QVZvGm17tdyndbJ3sy
	 ZuDIpKBd82lLWwzSY4+2Di/v4VQYLDYAp8CYR/pia9NjRPXHotoze2IBez3TSLebpN
	 HV6NIFk6MR11YF5B+iQlgYcOFJf41k/pBnFpXRMYFguYwcl0zKpTs3H5F3ZjTQp8BV
	 Fhe8zOD6/Znc8cHh4EiNXNIhdDAgsaFBEfG/zaOlAnvmwi8ZHPP8UXKZxgJycgXYu0
	 TOmBl+2YCKFOEsVTjlZ67LJSppQXXeBSVOIGHY4WgBN5dPjEoWl9w5wsrUo6lNXZMR
	 1/MgvxERtuEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA881E8306E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011243368.10832.5949414067961576953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10b6504ea60a3387615eb8c34f7f70a87b458bc954443d0b14d4818572afef3
Date: Tue, 03 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770112433
