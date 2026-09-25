Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D770226D05
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790376034; cv=none; b=CHLmQ7zrK+AmCD1nQwJamT171IBPyk6+sjDuoRGEgp1VBolvnfGezat7k1Nl7PuyBf0Azb6BqeZ2pSv0+t6JE98tVwcq1mAXt3O7gfN/VpiKi4xHqcdU0tFyCOSOj6DU6aqnWttIyH7espa9YVre4BjdZtF0cs2Sam+sUiYtICs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790376034; c=relaxed/simple;
	bh=05jwyCJCKrK28bJCAy7+JgDRQ4Uw8kNk+/JOQohjqlg=;
	h=To:Subject:From:Message-Id:Date; b=rsO+V5bMBBc0w/Rc16o2dcSp2jJZty6ZjXOjaLu5aa9Pymd6VxUDCiMkz/jX/+4Ocl0OTF+wnh4MBsYAWf1Z9NpflSE89oCvM4Itt8WGZeVYzOqUZlJlGab+dkcA2NSOx85gMPHYPEvIZ38YZh1P2KcWxkWh9SWsMmlVPtk3vBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN2AVyJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN2AVyJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1777C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790376033;
	bh=05jwyCJCKrK28bJCAy7+JgDRQ4Uw8kNk+/JOQohjqlg=;
	h=To:Subject:From:Date:From;
	b=nN2AVyJfobvX3T71pjg7A0RjQWyMNc64At1hhb3JthBzBOyO3ObULFwv9jvkooQZ3
	 LTfDIN85RFKXU4mmOnmt4/bMEB1WmC6aI075NYrg77uxajfMNhkyjtFbXqPtrvejyP
	 7vVTh82Tk967LrUOZm5ucUmTIY+YRxKRIID2q9tY/ipzACYpnwz7AitjW7++id/uGO
	 pAGu0OZ4g0g7PP9M06nUH1k+5glf3iLamS6DeurgwJJraedvlOtoH+2sIz22LKlkG/
	 RWQTLVzxbfVc7CCXqIKzYQLhcbn0hDT1J0YKXsDOePO71d48rJ8kd/2gUcepwdg4yJ
	 b2gDgHzrF+3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECF3C9832E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037603369.2990.5831696741581548247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bf1ba5db2323a0b070b1a796b9e79427b412014a94006f45081d0ddb66cb74
Date: Fri, 25 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790376033
