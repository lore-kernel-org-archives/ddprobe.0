Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3F1190068
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729290954; cv=none; b=RKtd6g5Ca7yXuA7skJS32M7i/byiX0bgDmcFtswUIlnyFJ006RhcG5IsXFalNWqUxU74HRVQTo7t53h8e+owZTE5V6f1BgennCKF49P7PJYyru/wNwXczXDJD6FDkYBwCm2ZHg81Q26JkdQG5yJLFOow0jft/xIBOb9Qa/CQFmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729290954; c=relaxed/simple;
	bh=Saqt9Aaz5HsOZOHqieLClxMnbP8a+CrQZxVLtDfeEQ8=;
	h=To:Subject:From:Message-Id:Date; b=Umj+7xQhmXlBUCoL8N96kL7DR6JA9bLPs14u4Y06tBZsfmEkBzdeot4NJBOArXDE4y8i/4q7YZymh4hNwiqvtqNTeg89JJdJURYoTBAloI6mue/neMYtt2qp55rrcvDri9pMxfvXoSRoivIUvLyhphzRfY93uOFca/wS96+yCsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kW2Wd589; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kW2Wd589"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729290953;
	bh=Saqt9Aaz5HsOZOHqieLClxMnbP8a+CrQZxVLtDfeEQ8=;
	h=To:Subject:From:Date:From;
	b=kW2Wd589gAES+DF5DNHcguvUDdePCaQYaM2CA3Fkukm7mak6XVRR5kXxodV27HSN6
	 LAWuuUvxx4VZZRseRh6+JTR8YSeo05kx/HHwI3l3MLHewImxq6ttIyhC+oG3kkMLX9
	 PjB6j4sa/4ujbvOi7F4tUx1MJVAHqpF2cgTVYcS/LeMx/CIzGwbqOMO+2VeRb3jLwi
	 Za3FAVbFAGQiZFRsx4weFskiOUWR9cgncTiM9cOHqPWLld1rcnuwpBWz9fQRab2OW7
	 keczvH70u6GLWXyvXd8rIZs9JlwBPdquXC7jZMmA6F6QC/2SrwCbiisqlaTtXpCAZ2
	 QmAA9D4QaMJOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F823D3E18A
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172929095357.18829.5520137318997890520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062d239b2681ce3968061417220b46de31385a66bc3f945b8d6409ad5c26c745
Date: Fri, 18 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729290953
