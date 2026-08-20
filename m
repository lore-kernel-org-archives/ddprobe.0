Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FD6463B8B
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787232634; cv=none; b=fPQYA18XyIWOomSXDHSBzF8OfNjWYVHzkfE1nydWFDtp/MzbJyxuH0YxzKmzYcihOPdzD1PIevTyEmueoNLNV7xXu4qREYLiaJEc1spdiljX4iaqCNvDSW5LofZtcqfihk5pjGzbZr56P0j4bPx0fyvg+gwFnugpcjaCHgqGdTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787232634; c=relaxed/simple;
	bh=LGIA/Obir0OFTKR1LbudyUH7cWb559xEmT6oq0frThg=;
	h=To:Subject:From:Message-Id:Date; b=mX+AJVlWFe1JnT057bMatfqv5bnxyTqph/tDOwBb3yQOOPGTo/bhTZhAKXYqITh6jVpFfqY2bJmsZpF5wgdCQNaAx2o/3wqc2gPAm/3QjPYitsjVopH+uwBATM8/DCZfl14vJVUPwDbFxX1diPpAiqcsU+H3v6/60QowOHfKrWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6r6MKew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6r6MKew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FD0C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787232633;
	bh=LGIA/Obir0OFTKR1LbudyUH7cWb559xEmT6oq0frThg=;
	h=To:Subject:From:Date:From;
	b=u6r6MKewnHZLTCdQAuwq5RMxKvx2EFaWYNmQmR7VQCNOq2bCH5SxkM76JlLW398gH
	 9u9PNFAUKulOH/sGhi6/7/W3Yc+08HwrZ0J/rX3qPfZ371vhD8hfn29TDKwbPxzol/
	 B5UHiwDEE9L76KEYtJ3px7syBU8H3CCy8nyaSj5ptrAcuAzcaRqdNp8sgrEuUDnPnU
	 KhtKJ2JEk3/C206GZizOQzmj3PsYNSRNYvSgnZUfAZnGZi28wKEeycaJfjm0ResRd5
	 rdHNK3ue8TDCii99YNBXfeARqWZFgs4n9vrnMekzfoZfaG1LZdPjjgLlkpDEVoENJO
	 +tyvzylfjbFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA682C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723263368.5808.24830765982782453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec64c4c1916761e60db46cc2798f4b2e6f85d0601a5475f0c8fdcd6dc61cff9
Date: Thu, 20 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787232633
