Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE4E22154B
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770579234; cv=none; b=OAyUFjWtCQqGyUXIys+o8jK0DiJOIfZIfIRFlYCPOrwK9t1e2iLIzhZ+81i175I+G05JytYCdW6VUaraHFtCkjr4Q4sDV40BT66Nc2nkcglUcLp4hVckP+9xZbgIGi2LboEefhuH/dhI1hbx3ZDvPf5lXIZGLTHf5l0KUoXtQso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770579234; c=relaxed/simple;
	bh=QPdIKgOu4VyxqzPWuTKT0HHbtjqxWg/KvSsOZeg0ZrE=;
	h=To:Subject:From:Message-Id:Date; b=ssNyd9VeaVPr3De/9KVF6ET1DUuHNEw7yaa2hty5jZRBg9LdWFHcXPjG7aovaU334uPRE40ak7ve7k+t14abCybCaPNiiKRmYfZfflyNIn3lUkKEmkEEo9Xzq1LNDpHMmnueGsGzdsdEALu0Wy7cOkzcijWJEln//9zj43WvOtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYbXfJIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYbXfJIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7195C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770579233;
	bh=QPdIKgOu4VyxqzPWuTKT0HHbtjqxWg/KvSsOZeg0ZrE=;
	h=To:Subject:From:Date:From;
	b=qYbXfJIiCovTNaStwT4I3D06J7VxrZknit+Xsz4EO7f5ABbjpVnUWeejh8oUScnIR
	 +wkTDRjwwI+VKz7ztdYZfTE3tFA5AlGPpVaSqH3HjIAOMCUZutcGNks8YZ0YRQoGp0
	 KkZKB9B+IHJwiUkNetXsxOjwBg9+kitwYhxzXVMUj2ZEL+3dR2BrpJ5gRX4fruhXZF
	 Bays/uowb1/RkjOJhUk0+qmbayypADJNQGF9ndtAjUbisSqiBcWqS0vBarTgUdapRx
	 ZrDA7zJkNfjaMa+UTbt7q974nKECCcbZqhFTBeHhOUE3l03PfufYPKOBAhDU6G5+nF
	 ibQwuwdFBeCaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4077EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057923359.4313.7003261824263207181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be6f88a5cd32b1759d6c05b621b6022ecdc4941372cd5abe804ea2a5da94f99
Date: Sun, 08 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770579233
