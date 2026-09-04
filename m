Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4B348CD59
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788526234; cv=none; b=EQcjszRlyt70P0RiGIVDCaZsnmLUs4Clnczcr6hchCowTgJWPU5+51tRSvoa4nC/YsR+6t9GgKCQbbe0bB1D53LWd3/0umZREYPjMQwjtQALC9qCJnZDV80Es2fFryHsf2lyfNHICod8dRUB0aqmAOrVvGJlcj/pziIp82+uf70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788526234; c=relaxed/simple;
	bh=XtkFuM5lslq6Gun+sypN2j1EyLkkaC00qzsy5IDLOCY=;
	h=To:Subject:From:Message-Id:Date; b=NZSWknZugBkLdYNSHCiGVmGpdNTfpeNiK2Er37JcvuTwZWUT+1BqdxuR+f7BI45zaI5V4PFuFqrvBT3GznyJychOm6TTzqwbtGfAUheXv0WZLXtWfSOG6TDAAkNfaIVWvwq5LwT08ijils4zQG2HksnO6/kaaHVghkIEIjgkZZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg4QEqnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg4QEqnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64CFC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788526233;
	bh=XtkFuM5lslq6Gun+sypN2j1EyLkkaC00qzsy5IDLOCY=;
	h=To:Subject:From:Date:From;
	b=Vg4QEqnE46gLdqSyMcsGO4ncte1UvLVmsWIAcIESan2EFe9rmr2DzfU9Ss1WikYp1
	 DmRc+yBjBXy5WnMGLo5gmQGVFp6Qjt6F4eqbFGvQJBRzzmM+LJRZtdtV/TFXWYU9eV
	 E6VqT/gjUKRukp+x/c4qUVrK9ceyeC++paidFL9Z0FEndZLqxLayC8cerjmbz2nic6
	 C/UMzAqznomDT57SvRdXQnDWrNJeh+zE14v7G70rTqhNWDHrnrf5WTMEehJ9ncUbvf
	 GrNya+eWSFk4wjGPDfhny2d6ScC1VH/1iPobWdNZt5wCKP+Qv5RuEe4OJVmGkoZBLq
	 9cFhjRftyt/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56A0C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852623373.31346.12419683405034800803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34449377a2cca2019d79fbe99fdd65ca7f44c856a6930215adc6a25969876fdf
Date: Fri, 04 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788526233
