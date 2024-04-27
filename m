Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E001E521
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714234343; cv=none; b=Q+iiXz99IhGhtgN04vpYD1tLJCT6X3LrWYTewQMr8KoIe2K6Flen8VrxxW8If52KO5fZJU2ESlnQFEeM1J2M4eYGgS6eAZv9Gcj9MxfDKcej3dQGjH5BCs1IHOhcvuToWwyhaH73ZjYlerGnKIJ+bzI7sfabnsxUciwnLfxb6RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714234343; c=relaxed/simple;
	bh=SBlSf4OYYcW8N8RFAdhKznBml4eRcJVNFDT7nPmEVPU=;
	h=To:Subject:From:Message-Id:Date; b=izii1SWLtMMmppY/smUcWvBEYvph9W6ve6FtfbyPiBNoS2aeblfag6lRWJWHTUE1psBP4E987pu5tZTkU6FdAudq/oJ9dG+zF8EDwzzy42bRrK2qOBw7ikm9sT8EKjqMnpL/ESO2oIhfrprjkOSaXD1rs+P/7Cge3y4qt7konG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THI/zHRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THI/zHRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AD6C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714234342;
	bh=SBlSf4OYYcW8N8RFAdhKznBml4eRcJVNFDT7nPmEVPU=;
	h=To:Subject:From:Date:From;
	b=THI/zHRB4+kQ0Y+UQqLUQE7/4SftYtDIxYhTGbXMaxAspGAKDqn3WPQBCWzLH6+zO
	 CH8sJsJ0DV8Q0se6HSx01MmKuE6Fh7EWzPj5i7R4OgrFnEV9h5O8Wu2OUidFTvBKHD
	 k8HZCzeR+xXx/mBLrUvuk5tNAon+M3wTyzs9NXfHR4ZEZg40072+hwd9JR5e/aZE7T
	 KdXMXrtvyYBiSYzRgSQvZsCDR9bdiIXzAG2VuHQkGO9SRL6mCyW4LV7j95LoI8Iy31
	 GP8a4ins9NJr3HkuKPtYNOOAxGu6RR+Lt/b3tB1NLcEE1zQjQ2jDOxlIfauKlBFNtZ
	 PSzXtT9oE2hWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2777C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423434276.31176.18115694099182830235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971db083c3b8163daca0e9104a37c79313f6ed134a367b61888757b7c26a2d1e
Date: Sat, 27 Apr 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714234342
