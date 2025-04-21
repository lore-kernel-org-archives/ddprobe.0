Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F8819F116
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745246394; cv=none; b=V9nL4U3TcZqG5PhfcN/2/arTrduzknRS/gAjh3TDiDukD0QoRrUAtwQvahI+0kixv5KjJZDvCfBbZ3ajueEk643AU/Nff6MUUTpC2jcUs+lby2K9n+BfQSUd15lbrHyuas6V+k4mqkBWjhGj2y5uoH4oHNjI1SCttmgaYXSKsw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745246394; c=relaxed/simple;
	bh=W3HcsJACohgmrGKNLrhHNjxGSoGKd6qbQIdncRR0Mk8=;
	h=To:Subject:From:Message-Id:Date; b=mZfA4GVhhy0ZUuCmyz0eHoGcZl2v5mnm2yYJRt7eAKG0M3WUpfv5qVdyIqzDlS3RKH1QDK9XZItiu1AIVn3RsfUgtBlfSiXHwtL0Q22dvLhVbmWZUZXKkijjVYlwNNxUOrBPx5HMVFrFJtfPPTz0VK5K4a+5H0qOGLMcopg0UDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IP4MHjOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP4MHjOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02F0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745246393;
	bh=W3HcsJACohgmrGKNLrhHNjxGSoGKd6qbQIdncRR0Mk8=;
	h=To:Subject:From:Date:From;
	b=IP4MHjOM5vXGC7lbAiHS4JlpXt9if0u9iYN8nk7O9MGo3xzD6x87jrR2cM4iuibu5
	 Nplcvwz69KPwJe9AqynyMKeIYCRzq7CSVuoXQ3efHpjjLiyXNuAii+E2lNHkUQfxJZ
	 Dw/sMtBO/XyoC3OgjBCiWYskG1EFSCRUeU3LyLO1iYacy8rxgBbx6n2MTwyuXPURdk
	 4cV0QWGRk4AUHPLSqpAhvkIYf5ZiyErPH3QN4cj/nOvuAsuVVVhlXg1fMsq6HL3aKR
	 26CwehUVL7mIM9K4vnAb9/VFk0SHqQt3OQl1ylYWD3+N2dxEVbGugBZG3eL/yS1h0G
	 v86mkjh3i1MPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFDC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524639358.18020.5452122829024613725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846a4106b5727c556df9daa76b4fcd3c4cf453b8dab1713ed329d6295c9bceae
Date: Mon, 21 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745246393
