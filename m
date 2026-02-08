Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F27C37BE78
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770590034; cv=none; b=SvbLCHjgqfrr0pxyXxcEpzdLdrAwRWSNKd8jtNbHrnPxAYuIGRcHQoF/uM7rEzrwsEcszviGLh70GdvhRe+0cH6ZIPd40vo/dpAWDZVhKDEUfqOWSgKFglp8guVdNYtm17Tvvng0SxhtiES/SnpIrRWDo94xxT+bthWCo/Rfu/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770590034; c=relaxed/simple;
	bh=tOcSn6wU620dRNx4bCH0eq3VFZbIbYuByN9Fgq7gZ8A=;
	h=To:Subject:From:Message-Id:Date; b=CMtMICDLJlcsU4JW8wKMcA3DGl0Z0r6bBApTz8KtJ/H5kI90q8RV07oStO63/iDoZPJKMbXXTVjpmdMbnBC7RuTOg8Pvy0b9HxYB99cIfDVhderSotNZW2IaMpbSpZZRs9w3KH2hbbOJ6eQ4r42xdwbT7fVRvVj/0DRJ31SOP6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OApziEsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OApziEsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B473BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770590033;
	bh=tOcSn6wU620dRNx4bCH0eq3VFZbIbYuByN9Fgq7gZ8A=;
	h=To:Subject:From:Date:From;
	b=OApziEsSUlgO6pBXmDb1Vz9XSl1NM3mpD1TzARWp6JUn19sgLB3NMrCTa9tkJn8pj
	 +oFgAZjf9L8FZG1wA6hDIuYZZU+TQ2f5wBmdrWq1Dyw2eBmd4zmmLoJh8RwIzSx+TM
	 5sSm5OLCi3F7kqUQ81rtPQASA0IXpxYs5bw5hBJUBOD+4CNj+7gfsI/YIc3c05KTFx
	 25Axiw4ikWsDNyczbmjGihx1d7rzZiXBlg9uI1AHzpx+3bfp5xLmaCLXI2mnNG/MhA
	 qsr3DtvDhBrBak4Rg5D/wRp+U6J33CXIeePCM8f3EH+oJ1B7ixON1yrWa5d+PI8Pw2
	 89CjxrFJyT0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D301EF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059003360.14214.17684009636180358940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ede6e0a7b120307511e3520c166093eee63241c42ce41f2464e3c4ee28a2cd
Date: Sun, 08 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770590033
