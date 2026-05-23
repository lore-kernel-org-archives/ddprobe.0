Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429C83EA66
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779517954; cv=none; b=qjapGP5jMvGU06P9vFVpsU/UeTtdW64n++ZkY4R9s0UPubSwAdp1ZrXPSlgkIJfL/c+HHZYSVeecekqVwuo/aiup7X97UzkLCxCcqiygFZ3pemNFqmENNMiP6J+BzyfRqlmMOjNoverwOjsaR730Yyq9NpFx84Phq9VhXz84b1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779517954; c=relaxed/simple;
	bh=HH/F8D7QFL6XWpScP0+4uEMm9mr0GQolBLuycjuXIfo=;
	h=To:Subject:From:Message-Id:Date; b=L/CdMOhchCTy2XEwD8KY+lY624S/riMLXC1IdI3f3jkaM7ASE1CssiMX3+i+u3wFg089agodY9aYgC9Ff7aEtkYzb5n1+az2C+ci8PFC346M0hpZkswUpjsKpH+zA6NWJHx3li6x6N1JB02ef3uGNdhqxgaDZwuZ3KmR5sGBvBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8CYqSTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8CYqSTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8834C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779517953;
	bh=HH/F8D7QFL6XWpScP0+4uEMm9mr0GQolBLuycjuXIfo=;
	h=To:Subject:From:Date:From;
	b=M8CYqSTwhKwRREq0k7s+Snw6osbNt2ONt/EYqOWJ/IfusbJz4zww4FmNbE/3Uw8dR
	 5n+H5JZAel5NpQ9BPtc2Eg3P+WrFf6+6KEOaZvPhDhK7k7e17o0o/NE9nBWkR/ijuP
	 QuGNQQ38bfcBUK8PxdM5u6a/R7svg82/gJcYSJNL4sGtpWK3wugFvCHq6/IcTR8s/p
	 PY/lJc64nsLRYRd7k4Rbc0+KAtcn8rJa5PLAoIbi6zWs+U+5z9Fca0+7NBGfCj+kTS
	 f+4CTvUkAADIbjmGGcMT080yw2iUrhV+XsFvdlR6KBxw7G2sQMaaYiicd8Dlu4ge8e
	 SScKXm3MckN5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9ECCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951795368.32478.13628467757078199024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebb32aab90975098c454f6234963f07f028bd6c711d305e3bb37f0230a5868f
Date: Sat, 23 May 2026 06:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779517953
