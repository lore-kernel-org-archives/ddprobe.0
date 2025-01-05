Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4353E1F19A
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736116554; cv=none; b=YDUftXgZanSIAgxGv2rnc09GXFy+RErsOcsNAKJmSgfZc7lrFjcKfCXwbgJKROh3y9O/Fd2hC3Ce5XuIH+iwGCbgkEXicvIeIfQkXmws1oc9P6ZcDuPRjx1M7kAvYAOSKcah/tjFKVnqjmkQDoVxX7NJ2a+iuT0S14v/MtacHak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736116554; c=relaxed/simple;
	bh=YBxlVrsVvOEECvJGWD7ELzXSMqdxuES+48532CqTJMA=;
	h=To:Subject:From:Message-Id:Date; b=UePvVFG3obUHYxfRRTfUDe9pOO9cNM57399W0nU4x61yA4A48McoumbbLqV6YpliqIq2JSgVnGIX1d2Sr6baJp5x+A7z0HWk3wNbbu5/qfZug21XOGmwqvv74Nu8hgBd3fJtCNM20iqkZOhDWA/kBxYOVPBfyXmj599F3pOh7B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/VSMnPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/VSMnPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C3AC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736116553;
	bh=YBxlVrsVvOEECvJGWD7ELzXSMqdxuES+48532CqTJMA=;
	h=To:Subject:From:Date:From;
	b=h/VSMnPg2AjA13pXoPGhH1qyN1fsFP11FtWL/+9hOXSIYf+EB+dIPVUTmxz0ihtPJ
	 5luhbWLN60GCboCw/0bkzhH2M+ihHlVrHQlO/3z6hxnCsfulon8DYJaFEfVw+2WI0u
	 GVvfLUH0iCE+oyu9YBXtOgV/fIWWmJRvAK1K+CAu2XmRr6O0tBYGkix6gSAo1o4Nio
	 6JLJVxSfNd76XsNrZ5AgQoCr5EV4rxY0M0emm7MRWx/58Phs2BucdMhc6UeSiG0STA
	 UVoR40SqEW8TtdmMmhuvuazvIVfDufTMlzkI7aswalwr2cpq7uOmRh3flbO0QS9s1y
	 rb58dBYuSw8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0D1E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611655362.25350.750198231541967328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81eb2f5053e7f5d6834e3a1d3776e67b4ef9975098c49770ca321ad10ddd5d91
Date: Sun, 05 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736116553
