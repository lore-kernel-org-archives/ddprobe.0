Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DBF1849
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716701063; cv=none; b=SSoTItZBECqP4JJ9jgUKXAskNkaR6XOvnp1etV1W0Bsm7v4NQm9qYDONAtv2vERTC+mC9/pyqaOMRroC7dFQOpTIyHeKzOwF+en8dBs3/5gh8WQpIbZddGN/UnxYsb/pj+dZLmV39QDzD/I7va2825IxAJ0RLXlJ+lMU0MroTrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716701063; c=relaxed/simple;
	bh=wpNRlrCVi4TXn/9rqyl8cgcn5A6PC5Vw5mLgr4m+jzU=;
	h=To:Subject:From:Message-Id:Date; b=CePrH5832t1p+23qTnnOVeHx9aUOie87n6pwGUJnK6Jc63D4unrN3N269BAzYKdHupjfhuUlww9onR+6ppa2Zm8rAy28IWpJNMVYZIaQL7dcw/VNhKjW6v+2Sq1b7pCbOhm122F9qdhgM8n9FvQztbqw+jfbvedxxxplSs7uzqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEUarQLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEUarQLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 015E9C32781
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716701063;
	bh=wpNRlrCVi4TXn/9rqyl8cgcn5A6PC5Vw5mLgr4m+jzU=;
	h=To:Subject:From:Date:From;
	b=mEUarQLTr5Beh1KHe5dxbn1fHxv3jVDhufhG6NBrkJIShe9nsWO7uNkvBmgNxDQl9
	 t2bDw/Gr79HDkPdPhjqiQAIekKb7PFn1HULGqtRAqnXyoIXzzOpD+DywwyUBiza24a
	 WtHCUMNXjpSu3Ocv1iN9DlCY+sLeTDy4EZoNI6h2XB5Eo+Z6bHjjA8/i4FPEW9edgP
	 ALjJXmc5OmWjkesIkWLLIhTFFkum4KcKz8jByv6tTYm6F6i1gwSpHAiYIMBzvEUd1+
	 il5LhLnni3s5S6SCYzr9s2dAT38SgIgNJUpE7t8RMSmUkFrSAd7CF6CYQpALiHHQml
	 EFN0e+YR5i0yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68EAC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670106285.17900.13967242908331721884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4a0289b85781681b39ffcacca7aada63b0154c5b38f04004bd68dce3335871
Date: Sun, 26 May 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716701062
