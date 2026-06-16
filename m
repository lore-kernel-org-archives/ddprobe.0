Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583053BFE44
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781576794; cv=none; b=AHctqkwP0DmERUtURllBXpgmed0HZTTSN9T3dg+/6vHmw4gssX1EsfkB4jAgq13/AyKcL9LU/HsiXt7gFQA0s2cC/i4FFTzpaAs7Yet0JMAlXgLVXv6g870Huq3xzBVPp5c13z0SrRR5rXpWlFaEWPTsbzkVKLuYS7zulv3eTA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781576794; c=relaxed/simple;
	bh=MjHPIZvVgOjVZuyhvT+uFXDSk1mJMX2Lo+YLbmiOaFk=;
	h=To:Subject:From:Message-Id:Date; b=NTwkBEnCsq4rryxstmzucSWoxtx4EDs+ggvdAGZdC5+KgRqyb0BYZNn2n/GPJMrAjEUD2PC6rpbyo+GGiYgH6Y9EcJ/UgCx/5T4Wu57n3+C4iZlrzEmBI/1gaiunAZ2+5TUdhANI33nNeLncSICDxRxB0rlyul+DUL/0eFk2mYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtrvfyUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtrvfyUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA24C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781576793;
	bh=MjHPIZvVgOjVZuyhvT+uFXDSk1mJMX2Lo+YLbmiOaFk=;
	h=To:Subject:From:Date:From;
	b=KtrvfyUbgwKZX0ltmqlY9Iu7il3T5CRThV345G+QW7FXrU3bawW8AIrpf8A7514Dx
	 4KOAV8CyGAeDzHnyI8R8y6YWX9NKKoy/N7NU9J3MGJfdd3oyImQIvX/j4sgSIt+kIB
	 KXKSdeZeqD04XB1cyeqWiUB3V2gaMP7KZZzHbsz86WZQVzoVwv728qvzX9gTr2L7vX
	 7TlBhp45h9SMOPhGuHOCLSGspi3/pIeAc94maztrAPfRMh7XpGbke7sUu7NIN4xcnA
	 Fdgtb74ML2K+N+ZrpyxOkhBgUpOEG+5Qi6tunRI1RquX6IAztH52QwXN5veqLb/ANa
	 KK9oo+xBm6xzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E71CD98DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157679378.14652.10638628842038342845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b75268295245a0ab836e05f271240f234a44e900be287e5b70fd7f4e9edaf2
Date: Tue, 16 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781576793
