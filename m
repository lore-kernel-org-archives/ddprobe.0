Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09F539E166
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774548893; cv=none; b=RBYOPIUqZQnNarVwMK+puHHhU1gbPr6xAYumDHa3Uw+I0FJFwntzq9GI3w0RT3FQkrSsrAcshhWL+P0mNPU4uJEPZQ0mjo5WANcR8KLlr/sEBtS5uhv6Eb+LXludXkUnes6dAbTKS8xUxEM2b2S/Tu4g88NCiYF4Vs8gSmhGJew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774548893; c=relaxed/simple;
	bh=0Ovhvsa6PoNKb4xzYqnbFE9Mha6EQN2lrA6C76SKNok=;
	h=To:Subject:From:Message-Id:Date; b=iX55vtJJuykLeGORkj6hP3wVGEbVImCaxo4Hw5nmCdnen59eIO3kXCY5gI2k0HQBrEFiYGwsobk8k93nWydQGLH/bj3yMnPvwSOwddhdMu4ZATpB6Xanj3QRuBfqPPTrjFuuXOMzQQzh1a4pSFdzpnaG8F8PK3lPzJNA2B6lpos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzOSeYSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzOSeYSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80BFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774548893;
	bh=0Ovhvsa6PoNKb4xzYqnbFE9Mha6EQN2lrA6C76SKNok=;
	h=To:Subject:From:Date:From;
	b=HzOSeYSMB0Om/sgPRIrujvTTc+cT2efD9dycePlJe4eJoWCqg7nF700loTciJT/Kh
	 OqCjg7LldYSrqtEid1NJlrK2WlB4ixyxiTIvKzNMM9cZRdmzNMoQKnEhqKt0kgKYU4
	 hKxrgQkk7ELsjyZAcagAmRa0FrNkD+7vL6jl2Bh2R+mWkmKcFqSnfXikM4wnqOzILm
	 rQr3pYXSMDQpdlDTg+nWJINVs5IyP5xWsNXrtgEp+L9NoEwwSOC2M5R6v3ohKKqh13
	 rmoqqkENJnI9eeO60L5Y0Ab+xgSxXDLemlSn9yrYMI7t14S5p3tWN0tO9Bho24QRlu
	 YWqG+gZeiJgUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995E710A88F1
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454889361.330.15883186910087826723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2394a4b43ce8f7c0295738cee88dad91d7c3fa9ec698da1b18f43e3d9bc65c97
Date: Thu, 26 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774548893
