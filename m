Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 879B92F99A6
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763449914; cv=none; b=BAXhMVM2fkkWVE1eYct7gx4TR5El0vsFWSMNjXYIIrpFRF9ZoqRmnhWoSWlXxIYnuhIK1+B5wIf9ixQUSNfiY50wUYB40+PtYyIG0Ui2aU7elMdxDs5E7SmUsHoYCq+Oo6cQkTzYoegCtB9bDj6bUdZOKDEbaxOQqYbrBslkQhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763449914; c=relaxed/simple;
	bh=HAX1f5Y1Qt1ga2Sofe6JCQPUlceWrbEPl+fX8Y9hUGk=;
	h=To:Subject:From:Message-Id:Date; b=KPbaPZjgyRQuZ5G88YES37hfVsLnZrQhgnCXzJ2Yfgp5uljMZ9mzrRXfdhOCeS2kn8rNggRM3XXgczYh6gpslxWKIANrQDr/h0kzpyPU2u3plnC1mTYmvzCH7JZMYKvK9MG5Hvt7kaJuftIQ2jHxZzKZ9HljUdflKcpbA8qh+LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Acx2Ta+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Acx2Ta+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A174AC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763449913;
	bh=HAX1f5Y1Qt1ga2Sofe6JCQPUlceWrbEPl+fX8Y9hUGk=;
	h=To:Subject:From:Date:From;
	b=Acx2Ta+/cSwSkniSUbN+kvC3cCGqRH5tdsKdzvbdYh6FMffNOlPY9Vc6Sxw6AXQIr
	 AgM/+RuM8ZtVhaovOP85P4vyOAc8bThBFddL0MZbdzptTAUSwkyNkHO+U6ryjVn5ks
	 wmkOW+QKxIBKuswboI6baZURkcfdWttis4Habb0BnZrpU8NU7AfzQa4NMZVDuSxVhW
	 N8U1kBOM+AcE78AuarWIGpYzO9pGcgG4PzipwMxstyWX4YJPUziARLAaozCU1bIEAD
	 HmFIjKdyhz9tJJuhrgr10hJjetIrAMiJBXjtSsHlbj7tbiMDlUFT+GYYD0+YOYuqH6
	 BlBtGo4FCPGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90204CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344991358.887.2874732770487144973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b8b9070ecb285fac68f81313462391fe7586c029cbe0d4708b83f9f7c1ad5b
Date: Tue, 18 Nov 2025 07:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763449913
