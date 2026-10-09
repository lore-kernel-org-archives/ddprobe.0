Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627953B2AA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791581434; cv=none; b=pYO/NP450XrSdOTQGw2eaVBh0vbzVb9GVOwzpfG/wrhotqF1rWoSPbEtuuyzw9nZv0ehfyx+4Cg2Di8esjXWzWp5LkC7UKQT89GF4tbnasEAcGSl/bsc4a8LwouSLWLvVlJXAqs8nG1QXib31oUEp3Obde2U3HqvL5f3yO9tjQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791581434; c=relaxed/simple;
	bh=FeGr7l1bifD62Ml5guaBS3ttKT/O7TnW+3NmzC6bDbE=;
	h=To:Subject:From:Message-Id:Date; b=hDoUDf2aiAFBkIyfFJZ+nY3/ln9FmNiSOCwwhW41WCJEtummJLdl8EMOBQC8PqfY+IVjQcKuk6R8H88gZ4hT18jpHSvutnWZVhMXPP0bGMrLnmL6Br/Tnpg75lCg3WQHb5VSCB/PLZbccTv8jGoR4iL9JAkce24EKhChxriFssA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvG1vMiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvG1vMiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CA5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791581433;
	bh=FeGr7l1bifD62Ml5guaBS3ttKT/O7TnW+3NmzC6bDbE=;
	h=To:Subject:From:Date:From;
	b=fvG1vMiq8bnMRq1Ed7QgErGMqNXp6gU6jAphDLbJJTUQPYcM1rm5XRvO0xn57bcAP
	 +B2j72NwY/TBSTDkPYuWTaFdjMB1iYCzfDOtgbj2e/4XsS7j9sBUhfzW781gam0kTN
	 FhdcbZ/lBGVuO4XuptE7YATB8xIKfHULhwK+hXOgB4ZdYaUUUu7xa7k+vwwH2lJL/c
	 THCu5QbJCatSWBNywHvm1qm4d+FTtkq8z7n0IAQA5OOMv20oHC85GBLYPHXdJZhHsn
	 wpVAmmbIVYPDu3OVPl89nYqk5wA9ARSostW4bFGwfEe0sL0v19I65v62BVxRbEqlzp
	 YUxqA2Lb58k8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9620CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158143368.13391.5099477772898349235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f431f6d1fbb57ab7dc3e0a41d119586c871fe4f26c4bee967f25650bd94768b
Date: Fri, 09 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791581433
