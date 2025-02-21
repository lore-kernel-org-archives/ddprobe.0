Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418D5192B74
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740146334; cv=none; b=S3UTnCfwTFULn+038cvUSmqHrBgrHL2CvBHhDi4JdkiFOXBQDHOYUaE9hz6nzGniogwxVGxr0fuF3rj+Bw9vugs1OlzYuB9K3BPKpWrG3NTUAQdi7FanIxF8VlvQkDSbpb4oXbGJmi8HS45a5NVqdVVQLC2uZAGO+URUOM0nkuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740146334; c=relaxed/simple;
	bh=YG7xgaRD9GsMDa0vg3j1JP7itdQuAzjZjxy1eK43wKY=;
	h=To:Subject:From:Message-Id:Date; b=tcp1fxxNz1dDHnUa7I5vpSzo1x/FsW9tLm/3YUsMvmy3SyKnUYn/M+X7/bBr2tQmEah+F8GUm4MB7gLJMnwYvX2J5M2thCcxoi4pThBq2WJJ5gzxJzMAxh6D0PnUhUbAY+33J5BBdbo2ff1ENJdh/VOZHsco6XxXjtv7KqeKCmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mABG1DrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mABG1DrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93DDC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740146333;
	bh=YG7xgaRD9GsMDa0vg3j1JP7itdQuAzjZjxy1eK43wKY=;
	h=To:Subject:From:Date:From;
	b=mABG1DrOP8mILgI7m4nVXh1EEwthTyeCKnLWyZ0ItalU2M53locRkByCZmTxlbZkX
	 lcF5DKrS0MqVn10W9eyq3rV1bqkJZlI7GwWLmhiHX49vbiZ1idmSqj/0jZUnd+4Ff8
	 8dOJDa3QdT79/R+xFxuWGIVc3656z1YbJyQ9aylFwuftAAYZ4qU+W8kV0Gtv2rWq0t
	 XLMsyzv9HoxpsqIC7POchOnLfUhK+evkRjMdTfGYh3Vyx6d+XT/zBQSqkS9HCD9iqA
	 lGJWYmu5Xkblp3zfgubiDnmpRvcJiKaQqkkOzI/TW4jYtAjAPdPrAMsrVi87/lxpMj
	 6N8CorO5dyL7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62AC021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174014633357.29120.5791710884441488695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fb78602cb25c19e83e2ec42d9903b0a1cedce389ed182262adddf6fa8a25f2
Date: Fri, 21 Feb 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740146333
