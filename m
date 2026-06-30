Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254CE336EE9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782847714; cv=none; b=BClunenvEsv/MCkiYTBR/JVN9oqw40YKfdRvoC4Odx+1Ewj+Cx+Wb3QodDlPHqiW02yd4hhOkiTM2S7bbUdSq9YV4Of4aIQf2NFC1GYj36w3WThy1HvrAyf3HfrY1OoAlt7WfDKOoi/cqgreLTkiXD3keZEtHwNlOH6yjWnx6wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782847714; c=relaxed/simple;
	bh=WwEbrWVC7MR8/LKzPsHH6uoUtssMlIb/XCyjA+9MOvY=;
	h=To:Subject:From:Message-Id:Date; b=A12PEYQpSNZEMDyLijyAJ48AxV3ZI+ZBqZCQHaGXVVARFIbKbH18QQpC7y+kNQzD4wvjxnUJv+koeIlAMbkTt1TcSPYwoGvD0/9XdzMbbRbIoPzfqcfcqSyMCv+3yg0zFzvmoN/IIr82llRHCy7nqMKqhC7ZZwKJhmblPcIoIs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkXrNA/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkXrNA/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B843CC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782847713;
	bh=WwEbrWVC7MR8/LKzPsHH6uoUtssMlIb/XCyjA+9MOvY=;
	h=To:Subject:From:Date:From;
	b=JkXrNA/Ww4KpNOP4JiAgvZMmsmXYmT2oyH6cfHRyLK7KWUFDWC4HELMqTruhbWBbG
	 L33/4aiTsE+IF6HwvmiJX1VZ0FEWTqstGCBdcesYeHSfGG84CnRduFI7oTJ98gRHqk
	 wt7dCXyea63BgjkjKh0QhC9Y1Fzv5m5Ruyl3EK5WFlVqwK5Dw81RkPPntA8j2sUQzw
	 uYJWfet0EE6InToeKtBplAhBuOtkNKeshfyZ5naujLUhizNJMHerKeiaKP+ai9BW14
	 6I3Idfbhueg0PicUHgBBo6RSP7baTypjh1QFp+qQIcNPwHwANPgDr6zGlljZseSNr3
	 ONq8rj6N21a6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9971C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284771368.1478.10369007797966626371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d51c23860209d7c28bb9d2937fd69c9feabdcbe481468ceb093fe9eaa269cad
Date: Tue, 30 Jun 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782847713
