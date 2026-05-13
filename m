Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE583A3E7B
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778665234; cv=none; b=CyILHHgIeXxzBbaJOEsKt4mhY0OARW8VYD1qTpid3OGKvw74PKEUWtYz0eS8N+BT8rhbe+kFg2RDZr/upf3/LAKRNnjx+3cGav2IDChzHnTZ0/8R6TewkO837ImDCvhpQPSJrXUxrk7/2vb0cxRytofwR2CerPRe23HGubnvx1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778665234; c=relaxed/simple;
	bh=kLYyk2k/pw1NeMFc7/5ifudFRWAMJZC/QzdPwNEzXM8=;
	h=To:Subject:From:Message-Id:Date; b=bBR7yLtCBhtpwQu8f3yb6jV+ZfvMpmJDW6QLGBzbO1sOFLesLe+gRaTOEc9aEI35yNJc5tiKfqN1pxRNb3ktZ0GeFNk1+0sTzDuxrYEpPQ1AdB3ektbUhwVNuK1j+qNlinG/5ofPW4visGjr4gPDiHiu2MMom7D1QUfgbPHqJIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5j6jSry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5j6jSry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B907EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778665233;
	bh=kLYyk2k/pw1NeMFc7/5ifudFRWAMJZC/QzdPwNEzXM8=;
	h=To:Subject:From:Date:From;
	b=Z5j6jSryjZKUctKhDlqCzMKvF2QXvxPAQINl4bP36mn8vzRfTmkO10LMDIyc46DTu
	 dyRYRvUwIYgARUHF9MuJoa2gV5KS9ky0bkX9jrhMlzzvVvL7IBt9zOZ69h1KbF+erx
	 7cADM7Du2BZma/MNr/BplIMeSPYj0w408YDISkb/fxgPA+ZnXJoT+hYrsAqw/tEMF9
	 Df91iTNUH+eEksofPxKYygzxdq0RedzD+DT+j/vxRuruT5fnaqrtCp77Ui3VYs/o2D
	 XtgZWZNU0IIRliF04bUKSNX+SyG0d41j+vv153oYmYf3lsOOLpvPnYLqmQcn3NcB3e
	 LU3GvtpLrWCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD35CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866523368.12994.13495690576208761416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ab0875882f633ca17478fecea995f62ec23ef6a797f3b85a3482ef27e94389
Date: Wed, 13 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778665233
