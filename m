Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F016E269CE6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773462894; cv=none; b=mwtQLYKnZG1uPs1fhRlUDAsLckxfl6Ch3iDmp9CIFSAovRLsT0Ef34dXNlny7LVu3Yl2XdDTaQMkfGxKdWHGAf0fRO402cqKprJZX5TKhapJo7PKiM9fS86u1fgZrBNOMsMblb+ZIqjuJVWs8icNoDIcdldNQKJyF/gU6C3i6Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773462894; c=relaxed/simple;
	bh=3v89bkyF21QKq20OWZwyjncnNAQVpeG4hEdYd2DRXAY=;
	h=To:Subject:From:Message-Id:Date; b=GbrmClkiYuaqel5pv5i6M2lB2h8nOW85WpBibV6IX7VUNrcQMwdGVpJmS/ICSsJSCi5516QgtI4nVvHKrvx0uylg7zksYWnid7kCGMIsQ6ZHJGk4Zjy1UiexuHHZugIL19Es3MzsB4dwXmOxLSMXsNlvCV91EDuerVPd6SHFHlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzRaWOoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzRaWOoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6556C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773462893;
	bh=3v89bkyF21QKq20OWZwyjncnNAQVpeG4hEdYd2DRXAY=;
	h=To:Subject:From:Date:From;
	b=JzRaWOoM9QeZqKBeCzzfxToSRejF09CPW2DDgauAhoroOEanNTbNXbtaOSmWMUc3h
	 aMBRcGaA3DJq5Cipg6BOy7PZfPqiEARFcbJUOWlJkBPq2LqCwHNb5ra4q7b0M4PagN
	 a0jyWP8joeRsHBIN2dsXWAfSJEW8lqYP9R7cOG7sWs69Jh44hGvbZyX6w+qJyFVixA
	 jzvrOUhTqgNIullz8LhlmMzytTlGRy29As1QPds27nPgzc/Gai+Twk9h7OIsnLBmbc
	 DrenMgRsJl+/XwjUinfFrExExj5LaPr48+oQj+KtnNWsbDnydQSVLWQUGm/IqMM9T+
	 fkVrbWx+i+fvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F4FD88ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346289359.16211.1344497962742001486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a3dc5c95284417aa3c0690295054d5feb525fa3c38f68cd0961b6f027ac737
Date: Sat, 14 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773462893
