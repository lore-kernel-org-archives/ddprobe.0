Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255BD1E231E
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745921394; cv=none; b=LXYM+Iux019yKccExsrwpdvz2/5JwXRbQcQ+swgcUFEAL4yzvtrYyM0vIxQdTSLJrCLYLfCxtGugmn90Tb/fVTIuqj8rfxq3eCXj85bwCtQpN+FjxNSb1o+sPU3gBeJQ3pU7HLks4tkw5rDW4X8uzPP7ZW4MkG2WGiOcMCJ8uU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745921394; c=relaxed/simple;
	bh=srVzpZEXOpOrQ02pzU+v/GwzuvfL1ytXJKS26zIm81g=;
	h=To:Subject:From:Message-Id:Date; b=j3jQQ4JP7QYOBn74NQXxFTFulHjvrciG4eb9w5Ls/3Q9Pg9EwofgQWbxSTNAInpeyMXXKnSb8i9oKWqhGDbgn0ljEqpWQulQLQGSwNAOFWu+yat6BzISJ4CPTSxt+YiaTR+XnKOFmNLIUky+YxfN/1K9BGX5H3ZRi9AMfcWIInE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnD2j4qI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnD2j4qI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E343C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745921393;
	bh=srVzpZEXOpOrQ02pzU+v/GwzuvfL1ytXJKS26zIm81g=;
	h=To:Subject:From:Date:From;
	b=fnD2j4qIdJQFEGp9xp9k7eNqz5s4n0EpSwbdIG33fcIl18k6Z/kQMoNYGkSQctsAB
	 rLAm5bR2bitD5kpwIMoT+mY+l8XQRNKaoWhkStrwPkF7EjJWvASFY0fi/xHuvU1u3l
	 MSKlkzpglk6MoOXVjvJ1OfuBWWp+9inKtXjyZOXWoWOaX3ZzPT0d/STq5DuCjFFPWO
	 xw9goq+Wf1dkU0OT+tWLaSqCJYKfdeUhje8V3dfO+cYK1rT9erIHark2VB/XmRdenC
	 kCLxntD84kFOflKVmmHmy9/5rsNNRi8EIMFhQur0ShSAWHFRIBIY71pO7d0Hp48DAI
	 iFQCwmo1yrPgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED03C3ABA9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592139357.4203.15726126274930172775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feba4d3932abe5f26c67141a7e8782a4037bbdba180b0bf6c4886d38c8754d55
Date: Tue, 29 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745921393
