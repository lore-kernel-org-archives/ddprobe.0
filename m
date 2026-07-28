Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7E53ADBA3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785218435; cv=none; b=AkaDOPEJW0e6q95GOFs/2BfBjj8acc7DL1R74luWYYspEc6mAuSuduMeof7PbTNCYNmTQqz7yszBHW9EnanoEa79goWVQ33/544rf+m9L5UV3SQ/QjwmS09mKMK+K3giiZfcO6PhDhNQEgIyCp+3lOJCV9y4o4f5766V3yk0m4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785218435; c=relaxed/simple;
	bh=/3YU6HDG/nPNKerhtXfEfWg+IEhdOUpFez/RmeAk41M=;
	h=To:Subject:From:Message-Id:Date; b=Xvl7pqIB8B9dCCpCAXGWaFbD1D4fXDzr6Gdc0Lont7S5Lb9vL1IjmztmZd0YKpkXrnd0XobW0SKKv3RNCcfdqLqgm/u1UORxxZzyoLOMh7m93OjXmmXHVMz5IS+28t6/kvSF34justrw0mh6WyscRafIxv9vFV9+tqroIQ/sTpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAt3ZWoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAt3ZWoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A07C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785218433;
	bh=/3YU6HDG/nPNKerhtXfEfWg+IEhdOUpFez/RmeAk41M=;
	h=To:Subject:From:Date:From;
	b=LAt3ZWoPXGjWjSzL2EjAJW9cU/w8CqJQpy5YNcQPEoLzESnfVLWVGGTGHXEy4dljd
	 zQURjOUjfeXI4VVLefdos2vQb0GTEL4ynzZ8ksILr+1TaOTptw6HLI7QE+2Sl/lBKv
	 +IHnmaWJo+cWYjnUj5e2EB3Czk+s9nZf7nrXkCVg3Zfm+2LA+TQJerIpm5Ow0jcHzU
	 PIcn4xuKajrnr23S+fCZLwlscDBiAn0v8iU8ArjKjHmcS/3rNqClW00J3ZubKRbYjh
	 00AuTyHtM+prL6HWSjFpT1iSYV3oRLwgeQ+w66c7v2CIA+BesWQVceg6DXRjjz5crf
	 uVKOAoLQAhvYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0306C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521843371.30832.15953707320031860786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7124c655e7f0fa73790bb727fa1a4e8b404c691705b431ceae764530027980
Date: Tue, 28 Jul 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785218433
