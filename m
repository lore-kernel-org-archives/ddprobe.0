Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB6C3D0BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714303943; cv=none; b=FP+rB1W1GgYTsll7iwVPuHpirbF9SUR9OqO6AlR1nywLD4oYwGpiRmUMx90q8BFrHMkA+wtU4P35iKWQ35lS+spIkdOM25g7yjQYGJAkXcwy7cvnPqS2MgqilpT7ljNBvzElAykc1XXy3UlZ1KhdEidPzpIaaG3PbO4hBUF3dTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714303943; c=relaxed/simple;
	bh=iVC9R1+yXdnXlCpsffOAIgv+hI+nT8304C3ftzm0Ih0=;
	h=To:Subject:From:Message-Id:Date; b=FuHEM/P7/3A64sDIbk5QFN4qXMT2i01bapULa/l/z6/7isQodjSCCWiZdmu/aJQCrqufGBIWgWMRPsxizDx+H/jsb1moNyEBcgTkGGUP5ybfaNrwMPLLEi+YPIDJ4M4VAJsdUVN9+xqUXI7kZMTxBLAnRfdfhZRICy+8Bhj4wg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IF3x/GpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IF3x/GpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA357C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714303942;
	bh=iVC9R1+yXdnXlCpsffOAIgv+hI+nT8304C3ftzm0Ih0=;
	h=To:Subject:From:Date:From;
	b=IF3x/GpBVNzLEXVWUDJSSzywnsYHAymV6v6Auaz2uX/FGv/7ioRUIKIeZLwmsEG8n
	 Mejk1VzTiqsZNtQNTqfnZVtbLDN0XQVbTtKLIWN+KlXV6ryABVzdqMgRk/J0HusZE2
	 rBLVfDASvYrfufmhlzva9DcKbD79G1fR3aPCy4mbAjcZbYSjKmoxX8MkMEKBk7I6Gf
	 25PdaI5LlrqLF8pYALro0HrSMrn5maHIsfjqQQX6jtcVSj++POGmZ9E0VN0iXLdUx0
	 IoaAD44UuiMnyJ6uRgnBZM6Pz6hMaEphjRUj+RHHkHyN2BQW6vQfBoCEA5ddu2Ymi9
	 5TaGj2ON6PFCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C256DC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430394276.5063.14018366621347222640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1acf766e491501abdf56d519f0eb1cf42c8f9164d38882c00ba77bba5aeab27
Date: Sun, 28 Apr 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714303942
