Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C04361DAE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783303114; cv=none; b=LXjQUGFiC8qqpa1hwuZBrgkmIVUDhTzlWRG5IiE1+N/l3qZuX1a/SWf/c58Wxasf3wDzi0pMAwFKoUvv2ssvv9jrBTn9L9ASKgPxNMbBgkkYyR+wxYkCiRkqtpmgTt9/lnU4b0aWZTUSKFEc2iqcuTm1+/vwVA+WoQfpmoHGtn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783303114; c=relaxed/simple;
	bh=c2Hx8TUCOJAW/dw0hypDukp35r/VmX9a5yijStPDlO0=;
	h=To:Subject:From:Message-Id:Date; b=X33i/JfLgvIijpv4Ay7GNg18h8K6vnXUXQtphoRi80Zb7Uxbn//aHrJfhhwYqytoV+/u/5WiJ5JAuaNaeo4f5ADETXpVZt0J6RfLLymiG4BbORpt26EaFixL7s8Rnq04k9UzWSDH5V51I59Y1sbrRQhmzHJVATBE3CR/1MenQz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXz638eq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXz638eq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF4BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783303113;
	bh=c2Hx8TUCOJAW/dw0hypDukp35r/VmX9a5yijStPDlO0=;
	h=To:Subject:From:Date:From;
	b=PXz638eq40C3tCZLUeO43TYGgVg26qK5iptZsxrKZ3zfLzYUg/CfyvRljIZJaA7my
	 LcyyDyoNTYSPzy40lxj/0PuS+9cJZ4L3ckbOOqFmPcuNm6TgpEWmexrXfiX+UIZbPT
	 j8k6g3U+iNs0+XWM7BF2mZHLXy+O+cjoBghljq5Nt3aOmfC6c5QJSS521/ZwCdAsGi
	 YgSAaTa92HI+z7HHTuSSUgYA4gWp0BCuFJ/+sAnsDWB7BLY4YHw7CtLhf10sYLUWPs
	 m5I+9AJM8nW+KQ5Fg0a4OsOZSEuG2hvQ5mmQAOLNiDDUk/lA4CSjcTGdh/Id4HQJ1P
	 sYZ0YRIs9PH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD9BC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330311368.25272.2555832218499641032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068eff404eb1c9d92934d907f2035070166fd2f657d86cdc9e66d176b41879c3
Date: Mon, 06 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783303113
