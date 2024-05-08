Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2301A2C05
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715183543; cv=none; b=aAVAJ96xuH3GBYih4OGbC4cMbBUZPcNV4fY0Y4CPhjHNHdGwHtJnHSY7CUXYswqeUwljfpFks4jM8lrKOoate4E7sXU+q6BwrpYSuvEqjKoS9TnhO3B/lN4hqZAdqggsDgfDomP+nsg76W1r8Ul7DTTAbFFbZtzigncnyc6ripo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715183543; c=relaxed/simple;
	bh=rqnB+9YR/exCs/IrMrNptZVuuJfpo2uIkROH+8nHsVs=;
	h=To:Subject:From:Message-Id:Date; b=NAZ6kTJw5s2kI1ZYqZl5eTzhl1lfD95IYZIcp2GmRbsW/+J0NyXOujxfuFj7LaTmqgnnPesqh5A+OXdxB8xwHbbQ7bU0gUkcO6PNyClD1app4DI+mPoFsL9s0XSYiVDOyerjKAV8wiGaed+7Ia3F7n54oZoziMbtb0uimFQADyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiaMmy3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiaMmy3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E956CC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715183542;
	bh=rqnB+9YR/exCs/IrMrNptZVuuJfpo2uIkROH+8nHsVs=;
	h=To:Subject:From:Date:From;
	b=oiaMmy3sBpPYDmvFWDklKwCLGey1U2qSBkvQRA7Ti6X20igbgp0DHM5JhU6Chowp8
	 CElD7qqHc6ynHtmkgvzvOUUwxt2FsIWfnQd67nxYGsQN7zygDcB64Ltn49leEcORTV
	 +q421KXnvfmyP1CIYNkFB6aq+6NHenaMTUICURTK8SIskn1pUHl0zCNnNf6UnI1r1W
	 PuCVYJOpLK8JKf0TUwrKnmaRABfvAADGIuikrCtaIxfS5gwIvep2H+Z3TxHv6FywlA
	 +Atg9YHlPLLqK/CwaEnNFPQpjZYSGJUDf4lDGRzD5zPmXc85oeXRGEf7OkjM7yFlDS
	 +9rHRdzRkeJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D32FEC19F4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171518354285.18107.4254041814772363900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8364efcdcc7853c03c7a4029528c35c00903d2eb38fefa1598a88a34b9b2444
Date: Wed, 08 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715183542
