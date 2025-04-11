Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA683234
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744414794; cv=none; b=ZshvHPma8kV6/OjBxnUhj5gc09Y59JpmAXJrUe4wmT9GgwJ9sNBNiZAXdVXHhL+XTJjoT3Bv8vSXe7glm4q0GvPQsFprrcc4ksmFiM+pvH3prICGGJlSF0y9EnCo9HyW0MwFCYZmlWp1iSNsYUmeTP5OYWdy2zLNhkO7l3WUOwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744414794; c=relaxed/simple;
	bh=LzEAfjAavTx1kanxt1XPMJPo6Uymq7RzZETk/CxEYKY=;
	h=To:Subject:From:Message-Id:Date; b=MVOLI/UQsqq0HV2IrJRboe3Gwcdaj6x4MdxGAA96myhHz6EVLghMYt3IYmwxLcKZv4qHnVucwisFsVuneXeNUtKUQr3QQoIsTjGn9NRMIzt/oES5vyjIImxg14vAc7+6HW4qrbbEvyeDEPAWcO2moBpMt9lo7Lhxep3CuPf8WmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3xMIMWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3xMIMWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF483C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744414793;
	bh=LzEAfjAavTx1kanxt1XPMJPo6Uymq7RzZETk/CxEYKY=;
	h=To:Subject:From:Date:From;
	b=W3xMIMWxbCtSzExcgyMkK56tlx9JA5O9+fQhIaijHSJf1ywchnrDrWaG74jjh7NZk
	 WszDccwdZiSfmtoStXWEOs4rNlHeRVcxaHDUusboTzmQXLbwahx3XfxBPtcDMJ3HCK
	 ld7mEnLaxRXOLkxDmDLVregaT09QDkLP1m78cFzaG+A6Ropdd5/DFwvL13Q60p+Oj8
	 CPnUMxX+6CyuKvE4W2vCL4zpq4x7AEuJP6be1YHfRqM+JY2wdjP6nIfmeo229IlLlP
	 MhIuS90crna3hfymY7LB6OvE46hAEM0DEPr6k6+jZTnH2Bx3IL949MB+oAJ3tWCAQG
	 y5qWLICjeNR6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F722C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441479360.19187.10855847735205839403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdf47ee5f7d56430a6676d5b02ee1f9de77ec59ee1541a6b9097a9ca6fb84b9
Date: Fri, 11 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744414793
