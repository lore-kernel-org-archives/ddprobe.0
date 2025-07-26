Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4313E1B85FD
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753557594; cv=none; b=Nn0Eyn2Lg4FpL1RqA6abE8R9gvvPfw4Livp7LB1CViC2FaETpp/VmSmPqzq/fB7nH8jyRR3YSyGkw77PFCCkWSIk8+2LR7XMu3wzKFt9iyQ3alFZS4ccq//DRYYo7y9yG3nJWIVoHCen5FhrZs8esXQrgM+tnhF1xaAS0NMYg20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753557594; c=relaxed/simple;
	bh=IphDxgIxXpWdVa7x0dO03tdkxc2FHDJ4R/OzWs4IWHw=;
	h=To:Subject:From:Message-Id:Date; b=ZmOfgiJls80Q64gFsv9Tukp42KcZtAK56TivgRUo/h5dAKLhQrX2i8xXU8xsbxhazqIJJiiD02Gfe9PNj7cqEmVkj0QEtr6DNmZFv8XG/BNXpaWpGTKDsvSwS6ehHZNhBVkwOCQjXgw65p4RDH29JFStiB+68gwMUBeJ+0OhYUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9vZ53tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9vZ53tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D59C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753557593;
	bh=IphDxgIxXpWdVa7x0dO03tdkxc2FHDJ4R/OzWs4IWHw=;
	h=To:Subject:From:Date:From;
	b=Z9vZ53tWj+44FSkm0de4O8ntbFoOfMLn7iaCbv0JLd8kkj5RqA5w0iKTLUIfZmX6F
	 gv5y/JOZVWdoF5YcSfbgc6pgtQlSyNw+MXQkBYXeuE1kk9+i1wb//nuXyTuvtMA30d
	 M5E7FxHF9z+0uqy5WyJTtFq6VdDv+yNpf9SDIW2/pgZJzHCo2sywbAv4wM1H1gk+Ez
	 d8prO9kSOzdkepQzoj83PhUYYfFduupI32BhCZtZDHPwEDa1e3fQt41iEGjerZqujZ
	 f6BwGHLIB9o0dzXNA0eLBSIZw4Ir04zdM0OmRxUXpZG0QaWhpDxWItKu/+oPDaVjEs
	 xwkbmCPKLepJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453CC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355759357.17459.422985713618983385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee7641257e19678fbe9208809df823301088a568c0bc3cb8187035ecf4f5ff8
Date: Sat, 26 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753557593
