Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B78D19B5A3
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774406694; cv=none; b=R4RCCJbXeq2+PLnjNw9sHlJWDXPYcQQt7f2t6sIuyu/B6KHIOgGv6XkFLaJbaPsopJ+3bswdyjb/jkV+fINTHoH6/Buw5hm/EYgTF+6mhXLIKZl3AZpOY/0GcYrKUyncOT7gfAQNkaxMvfCQprdmqwUHFMdC5pJC7wZ9zMwYA1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774406694; c=relaxed/simple;
	bh=n7tbzdDlWdhSv6cV3XBKHDnJD+zwSfz5zPhe14UJE/c=;
	h=To:Subject:From:Message-Id:Date; b=Zv3oDCGVGbXT0VKaEmLyew8Jyy6opNqVXL/zmnrpGaT8eJYHbn/cnDD8eQXrxx5lC6tF2Pe6x0O4JdGyWrMxOFf1GhpIhnAwksMmylIj+4jxYKavbBsDBRKQ3veKv1dYyjdrrNc1MTZt8kNs8RS/BfIRxcFXh43/nnSGtk0B9tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwM/zurS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwM/zurS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EC9C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774406693;
	bh=n7tbzdDlWdhSv6cV3XBKHDnJD+zwSfz5zPhe14UJE/c=;
	h=To:Subject:From:Date:From;
	b=lwM/zurS6TsIvjlzpSuGJ3AHO4Am0tFbVNiM/jQ7HNj7nO7DLVtEls4gfV6wmmpRN
	 m+JGZfQ/Z4DKOro7SjUkEYWsw2V9BlItUnemVITfQgB/g+plzzR2BQWo2ehkWbx7yP
	 O6IAlpZNYLfDrD6pYA0isihIh8k2LvCnoxNr1o3xasmBNtiSgioFES9Z+MAzEHGPdE
	 QVB0rtOSGp5dy6VG/4BxK/qkWKjzLWl033u+kbtF36VFYMDz/fkh4eCreSrEGIzww4
	 ObWZi6E5do3F+Wlj8CqufxTQTCV2TnBXadvdDehXmhTBhQm81eBy+5w20eeKWFEc3d
	 ee0XMW101l0Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9084A103A9A0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440669358.16355.15338798235678239266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8877d112d64c1100f98ffa412b06029eb248e66e286f438c13e28b5bf544f4b8
Date: Wed, 25 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774406693
