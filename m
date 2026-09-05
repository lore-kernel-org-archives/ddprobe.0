Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327E33909AE
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788631234; cv=none; b=X6XqJUsJmGxmVeGZbkGQsjIcBuS8OZxU48PnI3KYtsXLOl6v7SftTS9td37lIH4XKwjYT3JSprBKSZWF4nUT/wDMB0xfMYDI0KgRYhpjN0WFQVu22Qf5vVJMP97gi6fSzqFNDFbWilZnLAsMQhfs19CjeKttrbE7C+vditMyPqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788631234; c=relaxed/simple;
	bh=IqNCzpyORwlQ2dDX8eqJnzFiWiUAc7n6GY87hvMOmVk=;
	h=To:Subject:From:Message-Id:Date; b=lcYYGLvCRRx2FknqqP8hwRQS/m6BCpPuvPqQqvntWCvZXE2QAcGyZ3wd5EiFyi/InRswDYCbxPsmKLniBF8pnM1jLQYRCPcdojIcM1jqgO9WzsiIpfGfYwnp33Fc+eXZJYX6AvH5M/D16/Fj+IIwl+SMMOVE3zjLDuRrZ5HBNdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJiURS7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJiURS7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFACBC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788631233;
	bh=IqNCzpyORwlQ2dDX8eqJnzFiWiUAc7n6GY87hvMOmVk=;
	h=To:Subject:From:Date:From;
	b=RJiURS7fez0GSlEtsjKQBKx8KOuXJEE3Coy2rtHyreCMo2wJTYoEVMexkhgrwBHiP
	 Gl+W6jLM0DEXI3RBccwqTbIfvOdNmJ4LJtXgVhMkatFCCX0FH+3nla/6TaX0xIkGDE
	 39EY2FnpITdNW+tXOB2LpplqhT9BTg/A+4bmt9FzMtqcj/ImPVuAGWO4mOZO5qCHTP
	 i9ND1iD1qtl9QDnz+4l3ItgHzGUe7wpKZiGwhmokGLhcY0IcADJRdZFNwk3dCbW8vd
	 t56rQZmk5JkS9KGD0xmBfliuKqa+qFYemExFAjNbtq6PWOxPl+ixzf84xDzoETuyOJ
	 KWWazi+UTWsig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB6C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863123369.32601.16065567397729542167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7a0b3ee8b9d97a5895014c57e13625f54058617017e7fd34ec4152d4add799
Date: Sat, 05 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788631233
