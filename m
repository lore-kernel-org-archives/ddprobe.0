Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B83322068D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775355934; cv=none; b=r8U7sST539HP9UnUXqitacw+b8IcddA1DPWoI9pIJcwZtyDU7R0pgUyMjoQu7rIPZkWDlhEo1FQ34+gSmKIbLd7j/KWIrs9PHZvHI56OUMxZVnI+7tS46SmHTUIMojHgOLTufjlivCED+MSze3cq9lq2kn5id02qiRKaATJRVFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775355934; c=relaxed/simple;
	bh=JCrSOUzqO8AQmZ/lTeQo+YcDupW3rFjQdJ2eW8tAebM=;
	h=To:Subject:From:Message-Id:Date; b=IK1dALgWsRujZ1lmLFiyBLdg8rJO15c5IsE5AxVnG6BudLomj4UO4e1yYvHOn8U2szcCzUc3sbMCFQuKtATwSw4NEz8tDlfMsXZ55x89CQc21oUwXgTduVxcKh0br1VK+mpf9qBGlAYvN4ukg+S1JBO/NvtKo5rF5Aj5G+GUifY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIHHhZCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIHHhZCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FD6C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775355933;
	bh=JCrSOUzqO8AQmZ/lTeQo+YcDupW3rFjQdJ2eW8tAebM=;
	h=To:Subject:From:Date:From;
	b=fIHHhZCin6hOxNEA8JvfxePwEeURvA87wrfLIzFPayXsrD+WflbZ1gVUbBLDSDAVE
	 K/SdvRK8WFz8fDv97KEEQK/T3AWAy5xfJA7rjkRYGPFWjjnj7VEiMbTFxPP94ncYxf
	 sIoaoQwVwAU47qf+oj7IbMkN5SaL1et95ZMsQko6gE3XkuBDgIHaxwk2m8NXk7smPn
	 8P0rQ4qx9SoPejHLGMswlvvqTcHBVgmz1bOi0XIyrQSnRktkvBgHuVwLzlxlJiu5hs
	 aKvGFUHH9rmaiSVXspaANDEDvVVpNc2VR1+mAkgZ/5pYdl2TNuUew03XRXhVKRj0LC
	 c7HHdId7WMmDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCACE64001
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535593369.10884.11005131251663129238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db54abe2764d802f561910da29efa4d6cf1605258de72e5cf8ec5816023bb7ed
Date: Sun, 05 Apr 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775355933
