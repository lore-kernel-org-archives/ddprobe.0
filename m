Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A92220299B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764484374; cv=none; b=IPukcIHq7qpWDP0N22hUAbi1H9yNFXlsgkipmGiipbfX+VjbVq0CSqj1LSNiIaE8MK6gZS1QiTFwZ1WgKFmAjbgiMrrzCAPk2cXp75LodZ1qo78PIVT62UNznjbu9OxU7CN0Isa8JjBQ5fH74I8EmtsgIb2urouzM4c1NTYRtqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764484374; c=relaxed/simple;
	bh=J6EFRXgw6KPmBukSvV0ROrTRPGV+ev49yao26ynleW0=;
	h=To:Subject:From:Message-Id:Date; b=qfFRMsJbMW1dMjQ/iEXnMl0jBcEaJpHTydixJMMU9I86e3JdUe3/GN9OiEBsgG8glucVknzfliPs58qEHgEAq1U6mPZ2Gse7V5Hn5V8uu+NBNTEeecRMO64FsbKM6kkMPAqOLU+cpzx06GTvJMbywqT/974slSQ/olouQILOF9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtsLHd7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtsLHd7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB86AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764484373;
	bh=J6EFRXgw6KPmBukSvV0ROrTRPGV+ev49yao26ynleW0=;
	h=To:Subject:From:Date:From;
	b=gtsLHd7G53FYx3MeH6EvoL79kDzmxseGTDCt0LPS2ptpkGD1Qp6NzsGUwBeuzrfZy
	 AMH9zm8Oxi7n22tj6mkK9LZsJnR2s4pFq8Zqv4TOGiRugkBbzlnP91lGn+oFAH2FRh
	 ptgCAguir5sAZCtv8dbN5UTO+qnDx9/VX0yY+2QYc9fGqvCFVKwz9FvM8O2MgYuuTG
	 zmjhT+8LkZh3r21/8KpfFjljGe+UtpMMckXdhx0DND9oNnEg+7SmLk6Uui4sawFiP9
	 YZ9DSmBlGGN3BYNASVA1r+mR/KGUmen/HHycLL6fwFLsdt0C+Wnjw2SI1HIhbZtLDJ
	 XJTCohADh4tMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D15D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448437359.21300.908579544472241474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fce70818d9b0e1e0cae87c97ffdb6ec453a108aa11aa55f8e0667e92cac067
Date: Sun, 30 Nov 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764484373
