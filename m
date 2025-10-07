Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F38234BA3A
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759811394; cv=none; b=FxfY7dc1SxlbWoXaY9gGH7vRDY2hYiERGnvqNo5zPIVnC/DP+aosLHn32diMFjIDYQsTfKUT18dXv0F92HhyKuCUoHToYmiWyq+EMvFPWOlkrsq9Q4vIzSR8tfe5jfwSCfZxPBT6hyx3wtlD8GAemN/uzpjsZkoiQHWIiMJqSnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759811394; c=relaxed/simple;
	bh=9rS/E9aaw/O1KUx3HLmHNFxRPkTE98F+9KdnSy6BrEo=;
	h=To:Subject:From:Message-Id:Date; b=C5YeI/1KEknXpzzcalhRBCU0mTzgQRQ+eK56AJ7M+StVF7kw6su3GltBQx93RWAJhtfAxLVksGyrOU54ak9r8EcLKzAcNtDkAbL5YJeWxTcBqUg2pM/urUMLaIjSGwE8rKAUbkLQowl49L9cS/O7qWaJk974QGd7ZhlTjoqalkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx4PKjuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx4PKjuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65B5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759811393;
	bh=9rS/E9aaw/O1KUx3HLmHNFxRPkTE98F+9KdnSy6BrEo=;
	h=To:Subject:From:Date:From;
	b=gx4PKjucLxhTsFPARqZabQg8K0TQKdIVBoPL9HWDFDbfgeSmtcGPZvC1zEXRBEdYd
	 BhZOrgk4fEbq3L5C0G6PSee/O4z/grHvGj+WVVGJgZq5adPGuJxs9VY3fDyG8lrV/h
	 rSdUeow0jfo0gy3veeYjYCMx5PuZV1tB9hQPJJ7hmUPw7Dx7Bzxwk5VVTAZaV/KQOE
	 eb04CMf59J8QwdbsnqrYigou6dELvS1iZ2mTle6HsO4yLGpltgIORXiubC/F+QDqNw
	 tDphsQG3j5Iv3lrj09Bpi7nS9qquJ6DKhyoE/UQyTQcETBIi1vLDngtjmKc6LmnFEE
	 gL82BbDQMpSsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95639CAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981139358.12298.17356116730991840092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d097bc4be73a9f16b0d467431f8b40fc7f3ea9a39cbe513f42b7b13c90a3377
Date: Tue, 07 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759811393
