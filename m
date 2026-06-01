Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3D329CE1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780287274; cv=none; b=orxdl+sBgP+7tY015bMkoqAYJOfHXbIumadnlndQCTAxi/Nfx/qEd/GFmy3sziYKOJ2vN2WLs21G71HJ7HDhiPAJUXulNQCl5p6FBdxGLiJia7Cbq6aDxFR5SUOblygsLkhMS2uIbZ9Ji6R4zZEfpYOl7iF/QWqYkCGkTrHQI6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780287274; c=relaxed/simple;
	bh=4Ufvjr1+Vo92egEeMSCkttHXOT/CQR7YAAJWjFH/N6I=;
	h=To:Subject:From:Message-Id:Date; b=SWDGKA5iU352vA40T567GkMSlTF+zHcOa2PzgJZ8tvgovj8elnKs8tF+aGceh7grf/o3Lr/AF9IFTe8aKSPT+hM3Gjv8guGKLAJPfPAnSJqO1Px4d/GwhEaEjZHo9sv/nfkEkiKTucJKWytqgZylfPc2mhKKUzPMHm5aWG01SBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ20v82X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ20v82X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2039C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780287273;
	bh=4Ufvjr1+Vo92egEeMSCkttHXOT/CQR7YAAJWjFH/N6I=;
	h=To:Subject:From:Date:From;
	b=PJ20v82X4lj+FhznyZutWcdPRmC9t3m6YTpGS09fxmRsA4gFxtaJbPcacNzBvd+aD
	 5jSuXnxpoanqZcCuHpv990PehSh4WzhtvNqRKg67KKjKlnssVv2XmXYe5wToxPjrWn
	 UrxyFAhrHO2jx6AsO57qzoNfeXLlmokn1o5FiQkIxFUUFPwssue3MnJOje5FsIp0us
	 Mn/dXJEPX8W3L6Li04qzVcGP5X4Od668yMCx8uhnLWNXdj7gc0DD2ZKgO5j7VvsDEU
	 8e3tpS7KR0T8HflYRlM+FSBVpVbrkkbQganap7RwTn3BYdSxzXN1hsMhTfn7xXlR8j
	 1TMAePaUnf4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF685CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028727373.5356.9682693832832083229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76cec6876b7b4ac21b7b98aa7686f310c4d6e1585c9d37c4b29cd7b071f8c097
Date: Mon, 01 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780287273
