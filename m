Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8B5194C96
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777073854; cv=none; b=d7zDvNdIR9lN5FKbfsXWyZKIR23uXVwDXCEaRae/HZ9OXNWfsG3BpZfIYiWc/YxIn4EmsfMZKdehQON59EeVUQsavYE+nfXX8I6bpX+0o/dbxUjPT50I+vyJFvZGskTmQnjxYpQ6wMBH+JmmJZLsB2HL+dKbDmKqGt25eGrd1Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777073854; c=relaxed/simple;
	bh=5vomd2GquRFunzB30yhRLkgGaO4GRJD4FmtHGnUT4U0=;
	h=To:Subject:From:Message-Id:Date; b=SlXIWUgsiDqc99Pe+bKttQ3p6RUiGqocvbKwT8WqTB2Ma8OvQwnHDLnq2lkvrY0+NenasQLkTjgN53jhTVKc0V1ykmCdDsqULg0S8odx78lJUAgQ9uWvPUPH0pP9B12yQlO5G5Rm+RciVRwm0he5q1/dTq/PGro7AV8sgp/yrDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdEFej3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdEFej3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7A4C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777073853;
	bh=5vomd2GquRFunzB30yhRLkgGaO4GRJD4FmtHGnUT4U0=;
	h=To:Subject:From:Date:From;
	b=PdEFej3HeVheVw7vX+QhlTYeb1QumLf4AtQRxmygo1hZt3RqemL7BYJ8NQV4MD0q6
	 zTK6b0mD8uzSdKxSnWiB1F891soFMFrFC3Mu8eOxfCLsLsIZt6wqL2jqmD5ubZftyj
	 F/9Qk5Fx2/RLyMtmOlby5D3G0SjXGCb7sgdfWqHi1YqaIdiZRujwTJGmbbH+S26+h6
	 76zPv3Im1IL4oXSwYXkUfUDW+GiTfgZnuIsc0FWJ6MHnWwHdio/kXQMg+iElJ6rW32
	 ffxT3VeQlFsQy/LGfDnG6qJT/NY2mSoE7kRJzaRDxWPQbOb9Zyr4/2zYhUdxdBj+nP
	 J9wFa2YZ41mrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF885FF885A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707385368.28010.3418553257080561249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67eeff68183adaf033e96e1be95ec74a2e8965b87ee148f6ae09f3b583b9947
Date: Fri, 24 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777073853
