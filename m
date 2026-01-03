Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE0F1C69D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767422034; cv=none; b=VR3L6wDC2sfwEOCp/5aVoa3djdD8/dinvMIEygUkgKmsrkywlpK7qijp5lG1sInXItdGBvhqVVETWGyyERmHWSIJro0zkLIUlcm+iHcmeYh4kvm3aVmtr/HGxd2hF6xxEQspUqJZsocAScwv73nNGke+cAtNd34UT5IKLjKZn68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767422034; c=relaxed/simple;
	bh=tHpikOI2XLw3WF+VBBgF/KBKoLfLyZUwwVNs+/I+S5M=;
	h=To:Subject:From:Message-Id:Date; b=os2I7+V2qiCLwhB4kQCpN++Xc4bgj2/+ZTXfYtpWHUw4obwK7hLF6J5fcxgnujVj9+Q57zWpySJSwD4eggTIJARBA6CEaVxt8lIefv6EckP1+rzD425H6VW25cnJcnB4+MkBu+jRgMbgA/SrsCP2wYWvmAkjhdWsHmtAuF5FcI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiI6LLXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiI6LLXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AB2C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767422033;
	bh=tHpikOI2XLw3WF+VBBgF/KBKoLfLyZUwwVNs+/I+S5M=;
	h=To:Subject:From:Date:From;
	b=YiI6LLXlqGqb51wNP+C8QCp5nUnlok5SSPPJbDexoil4ZVd0ziHZ/k1C7XDyjyzKP
	 x0IQnWM75w5R+GU9Fo65vKvjbHPNowQJ8i87RgC6fBdfO//dTW72DipcxDQLpXBI+6
	 z7ot59TYK+49/9bPdmDN5jWlBi7htxLSaVMGNpcBFn19OOKCZzFfHp+BpLjyVcbUzj
	 XZuNtGFHLSP3TzsNqVjalfQ7JJBb2FTGXNc1fo++ZEaJ46G+JY5nASihz/cpduwcju
	 yulR9UpS7/monJCY5saU0Shi0sMhz1UAbuAG3qjLO3HxZByU/ZYoDvF+pmeFPoBcAS
	 tut3lckEvhCmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9269FFC6174
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742203358.18977.14865657879312550606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668e3535341f10f7e58d4a1e5ea3843869806bb5b805af34baebb643b1d63c79
Date: Sat, 03 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767422033
