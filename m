Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A50D18FC90
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741190935; cv=none; b=XXRxlxJGCQk+fAzkzqVocdCm3ZciCz/Hx94dsg8POz6xA3B+9U5bzC1vVibcwahwnfDX53K2sA/Us9QQAzJPm06rJIOaOaxN/VAkHVGriENmArNKWjX95z4JIHFNOopAjThZwVhCCVFsJYix/HTuHFww3t2prE8dzvidCiJ8iCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741190935; c=relaxed/simple;
	bh=Ljhnh5nhyMZ+gn6VfH+WpamIm4M91YF1UFAvDpUbtlY=;
	h=To:Subject:From:Message-Id:Date; b=stYA7yhcnVeGe5OEMkq+zu8oNxhRbZxgrZRe+BawygjDgLbr/4TuYf2u0MIpStqjPDKloxY85I13Z+IFsnG1S21hXPYCbEh4u9KvvuD3dQkRjSFjIbxmpMDT9HGHPZJ4EsJk4SVxMg/hIVslAffDY9Kr4biFVmZ03T0d5lBcIEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er4+uuif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er4+uuif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD226C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741190933;
	bh=Ljhnh5nhyMZ+gn6VfH+WpamIm4M91YF1UFAvDpUbtlY=;
	h=To:Subject:From:Date:From;
	b=Er4+uuifaSc2kbODd5wrPpALL+LgEZfdTBLse8UTFmWQw42WNSg1qT8GoZF5u4gfd
	 FmCiuerLo2SI3vI7OPPLnBAzc6FfPwu1chshEI7onLw9CqcBu/oACv06bwYJkdY5vu
	 O/FqAlPq9XNpoKWV3WfOKXHwn0V2zA5bZWOlQwSfXNafOLYsexRBuQOvnfsMlvSCoA
	 BW8y40UNWmKO0zDDwMhQO5Dp3RluseglTmxSdUwXviqVn5HqoGhWBLcbaQ69vRrsCC
	 2bLGckwNUu4FGF3CI2AXlTSZDCnxU92NUcErlcML0dReeMF5DnjyDrpvZqVRqrBUvP
	 x9UmtGLBTD9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C575C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119093362.26090.10552463520995401161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840267b63084927cc4d616e0abfd72581956ff870d5cb083f21a4773c65ea842
Date: Wed, 05 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741190933
