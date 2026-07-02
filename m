Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0623C76AD
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782983914; cv=none; b=mcArYJYt9rNhMyBjD2Bayu9+s4Vm/D3+EA4oUtFp8vRkrRHPfZZMKoRAIMrDrB7gANgHGdcIw1iVKP23ASrPwDjTUY1aiu5IV4nBCojd8ACh7oy3m1HFuU+C15RocIpNrXxqp5yC8reBsi1LSv8ZHTwOIljnvti5LayqBSUfPOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782983914; c=relaxed/simple;
	bh=xqgpMJJVESv0AVFqWAtomWdJcQfaheSBfvYOmx6A6MQ=;
	h=To:Subject:From:Message-Id:Date; b=WJLSPKXc1AGUTvO0ulS6UsC73Rk46RH50/5p/a1IyJz6v2WUfKILq7EYTIXpVj9/n7bDgT1EZ8P8vZK9S2NUfZqRAy4wJv9y970LVaFx3pwvkeqHNDABXPCip0rCppoR6iu08V2Ewrc3XvFTI1NCovP38JbuB+XofN112524ZnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+UQY38r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+UQY38r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA44BC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782983913;
	bh=xqgpMJJVESv0AVFqWAtomWdJcQfaheSBfvYOmx6A6MQ=;
	h=To:Subject:From:Date:From;
	b=B+UQY38rExOCOVHQUQk92YX+fcEJKz7G5kzXBjQ41qrjzlPCJo4Q5HivOqBWcS4fu
	 SJn89btNYGJwv2ruqOyGLPIHwaO2SlgsCQJBbT1ETFNnUrhdjg/LJouQjFabGxyQET
	 SEQCFETuNO1rZg+3pkWoD+dS3NjcxhH4LXtnbzq3mrA+kHGmbLP9itEqiqTCbYr5EI
	 rYsVPWKv5btUMC3JN91boMn8KAOgdw7YVkDpgQlIYnzRTnqeusw9mXHjHOV8omafaB
	 6TgLcv9W3h069UzYlWAkt2OeXLLMs/cLOqjJELTjC7ehAXX9jNcOCdkhuzbdjQo9Nl
	 9fHd1OoTouqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C43C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298391368.353.11539945497801015226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9aec8e520fb5796169f57a67732aa5088eb34c068f3c796fb07f2747a9012d8
Date: Thu, 02 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782983913
