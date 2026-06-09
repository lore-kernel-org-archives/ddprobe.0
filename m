Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271A74C0411
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781030734; cv=none; b=glZKTOMHqYFHN0hns3b/sbd845TC5Th8MItU8qOxM+fe+NZ2dPdRJ19F3IhN4ZD8KEWO18MH1O4RsMvqguDrVt90hcYBpLNuTOEdBDxUlKnIKcACEt8/0Ep6twPP0u/0sIqfyYyw/gcLhGS0X/hn0km/0dQuG3etkC8981JzjA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781030734; c=relaxed/simple;
	bh=ADWeh7vSdnS2LRJmNxiSgxo/iqoyOGu8Hz006U9YEHE=;
	h=To:Subject:From:Message-Id:Date; b=Pi5FaZxPl5fCuyXheOsSdGE43jFG/9MM88GdvelbXYklQfEv/0Ur8YRGDvZE2yqJr2l1UKEzdf4JrJcZERz5aM8W76fjFLtG3v37PnJ9uVqDGiTpiOPdIgkvJLVtXjJuJF7epa2eVowZACZNBT7x9wJk+nEc/yRtnmFMOvCKdrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ii8S8T48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ii8S8T48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AFCC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781030733;
	bh=ADWeh7vSdnS2LRJmNxiSgxo/iqoyOGu8Hz006U9YEHE=;
	h=To:Subject:From:Date:From;
	b=Ii8S8T48qOBG8hkj0Npq7I4rrUeuZ2PYt9VTRcdFuCu1H0schP9OdzZP1QsWCQSI7
	 YLAbnZD49yj+6ULLEd/XwXf0QYIZSBSbWduIgJB4CrfMdMFZTIVhVQT1ip+thO7k0R
	 qRSCZ8iMTqh2oAhhq/m8FLEER6JZyeaYrAAumsl8Wo4Ygf7qQ/JKzUaRgyQTBlmYBp
	 uk+qtb8A+LnaIZhPZHCtXcGCmzTmo/Ho6rdfZkTDF/DvtmQ33H9fgcRPJhfiuojrxF
	 hNUMw2W2Nj/OYWISQv/1txa2W+tVPX0m/onmEIwcVo42hvciptImn8BNeDoRTmqoPU
	 9HnX3NAO3vCVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C00CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103073373.10620.3459325047177047725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafbf9b1c5afcf27686689c83a802ddc68ae2e5b327c9810a90ebdd8c3094f56
Date: Tue, 09 Jun 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781030733
