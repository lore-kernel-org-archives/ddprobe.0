Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5BB2C3255
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777575454; cv=none; b=diHTcuTaDqgtZvy1U/N3VfgB+mciyXWCrdF5buPJ/7zHrMGoLgzh5LaeELmkvhfOpGysCcc9FNhYt0AUKWGeEU2r+cj1s+pw6GziPdgKvbUhF9iU3VthfYCa4YGWGGpUURyQHY7qnnzyuiqm8B6t+34anHTkbN9Hae0aWHBuxiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777575454; c=relaxed/simple;
	bh=LDc/FFJlS1CrZonWuaYlkgq+I5SKs+FenNeKSH15YBU=;
	h=To:Subject:From:Message-Id:Date; b=tekfiE2gfn7GGlPBYvK75DRJkgpDs++QgHyNQE9oitDgE8xZitx7aK01wMpvhi231C9X0MQCVXkpjLaf5bp1b+bAgpOutxKnNq6nYizwbvfRNxNN2Y4cM24klDQAg8TPgcMrGmS5LJEQmrYWED+JHHz2jGkE4jGfO2a4VPLHSrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjnxk31O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjnxk31O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87F6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777575453;
	bh=LDc/FFJlS1CrZonWuaYlkgq+I5SKs+FenNeKSH15YBU=;
	h=To:Subject:From:Date:From;
	b=mjnxk31ORlZrBsH7/28wo3+n/Twu1Ytz5GSmo8wd4viepR8A76SGj7n+EdEjlDAmI
	 rgNXpKHNFLf3gZiep2w8JgUBZLDGUebDenWk9icr4vq8N9RR3F/CkhJZnesWfMFS8g
	 8CPuh27dHO774GfY3r9zuT2hbdZ7xckUEt4x0WqE2R1K+m50RItUv052xSAe4rJCJa
	 9tfZK3Q51bnziPv2JFcKVI4OzXiVbdcvzFg5uPjeXQEvyHliy5R6xGrz6AYJV1Ns0a
	 Y+chEO2X9OIgPMijQtUdFMqkGI24sMa4ThWxQTwD8Kapgyps7jirCOZcWVnOGbq0sZ
	 kpWpDrSCF3r7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A0CD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757545368.25045.4030756415671414231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3094cde0f8745a15f848bd6d26528c183e5c76827267724ad7f429922c9c0503
Date: Thu, 30 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777575453
