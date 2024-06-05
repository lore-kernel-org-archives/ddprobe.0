Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DEC1755A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717597643; cv=none; b=M+R/k0jBZ9j2hedhhOWVdBo8dJA161QqM38lsTNYvAT1vuVe2cXvCN1b2UE+te2e+y7UC4fHiEhinhleFTIufUQ/seIR9e6rGZY/Hh7murzhs0VpY4uPsHC8sAWGQ6Pgrh/vm7l1M7yh12mg/MCzAD+QuhUINtUOO51D7sw5wHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717597643; c=relaxed/simple;
	bh=CIPwzpVLfkgFRYD1adwqBp8IvVLG1fXAXh6Eh/VyNU0=;
	h=To:Subject:From:Message-Id:Date; b=BjzXP5VEOVNFhIYelaTK9Yyar6fOpeJ5gQ1w+GB2AwQTCMEUJZEAGlNJtYpgX3zA+Yn0SqVN91DBQnIm4C8y2o4f45y0OgbYpNJJXWZvI7c8OdbtePjbtRn08wQ+iu7DP72h/EnvztVDTMBWxg9lRqqdK3g9QmYBmu6Ipc2K6Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ka0bFSIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ka0bFSIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 024C8C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717597643;
	bh=CIPwzpVLfkgFRYD1adwqBp8IvVLG1fXAXh6Eh/VyNU0=;
	h=To:Subject:From:Date:From;
	b=ka0bFSIc/qLlq1F9T/18F6psZCemGNSLL1nqZUC9sMBbPVggs5tYYuluYeDy3j9qf
	 1ThP+2rsr2TeN4EJ6MiFTixME1F7ctPtiv1EVn6CSJhis3jQTMdZh+W17jtuomTb3G
	 YHJZhYKnU1MKthSZSBErJSaU1/aVo6/MmS9asgoCtvAM/D1+MaNwC9GA/UYzXTnLlI
	 75u8KYai+qi/wjTiYT+3+47bPENKuCa9sasqk880W5yEt94JgSTVQbLqoGnPjNcHmd
	 teP0sm2G0oIvfK8NmtBIeE+CF2B/wECov5KbKU8BswuJI6Mr4AiOv0cswza4GF6o3V
	 /luC06vJwncFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF562C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759764283.1721.1927291763884201703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a483fe103b03b0dd5334d4900e48962c61c4c39b4bb7ef73ea73e6663d7a69c8
Date: Wed, 05 Jun 2024 14:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717597642
