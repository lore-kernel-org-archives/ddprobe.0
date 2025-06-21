Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1827617A31E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750488594; cv=none; b=frsTIL/6kw+RSEPuMaNQmoP3tGbr1yktnyoVUYmDH9S0eAGyg349YCHzT40RMXvMmfyiwQQoN7Ox9+jU4QP9Lz8N7ekj8segvf++NDYcWm+3PggTvfqoIyzOMyS52saL8aGTQ5u6xynunxA8qT4rWoNhTKZEhh7OLj/g3Tqix0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750488594; c=relaxed/simple;
	bh=RroDOkijGgKi1/oKIjGqpRWo61oWTaxl2byptQOgJaQ=;
	h=To:Subject:From:Message-Id:Date; b=QSn1cNDL2WT/kUujpg6Nlp5yc8A324loETeS5PDIYFFN17HZ1DH7xatTljj9I+eiaTzXZgVi9TLcTuO3iTPUeBKj7AKC0+pe5kdVZX3XE9d6ngxp/lbmy7izLljvsVJzNYQT+iLIv+AWY4hsCMi629C5TWdcAPZHP0iHWg75Ss8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdg0IERL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdg0IERL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1475C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750488593;
	bh=RroDOkijGgKi1/oKIjGqpRWo61oWTaxl2byptQOgJaQ=;
	h=To:Subject:From:Date:From;
	b=gdg0IERLusL/c/1LK8eGCMzmQgvDTkP9kv9W5I0eIfEc23Sw3epOAV6eUSrNBSQr+
	 dTDsT5xaXWX1yZ5hcJUlHdEBWRKpNptqF5YqtRYs2yOA9R02R8gMJ+0ryS/6V/mCpl
	 /4all4/vlc3ZZAMePsfPW9r4DkkWv7KqavufPLiYC6bAWVp9ehoDzFTjY767k3Ahb8
	 tXSgCyJo3tmDE1KhFAs4j8KmyEosU1z+qrDEEfnJ6ApH0QU/lcIbfFvIodhsC2res3
	 QFeUKkxJ9zpMVPvCKN0cm1nevr0O4JPQPg2ubfguG/UxlclfVQV6FRq6I8B8QT6hTq
	 ub/nrF03B4y+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BEC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048859357.2199.12708321698893720168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df42af8be3b80d12f50eab334cef151497bf7fe2c5ee7e571ce5831f87f106b6
Date: Sat, 21 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750488593
