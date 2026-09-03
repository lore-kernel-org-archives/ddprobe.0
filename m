Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E2E4A8438
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788439834; cv=none; b=MfiXKDCM7+ez9mdGpq0hVRiwvbXwjvGkJGIHguYY2AJgWaDKh+ne1LWemzJBO0zQKvBeVN3Xa9/YT+dI5CAJvPM7x3kb9HfkgBVNDEDCGhrrlnsa+oPJnJabNrt6LJ3RB4xAS0Hm18VnHX7uptUXNhvOqflmvMzAc3tNvYM25lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788439834; c=relaxed/simple;
	bh=OhAPqcAynjzthGOgh7I++v4GoRbFlWamZitvL417AiE=;
	h=To:Subject:From:Message-Id:Date; b=VDz+7+RYVHye3bKh7jxiEK75QbovoBrGdKpq1vG00vlW3hR7DTGXziX/Q4VAky10Um4HHTe4cW6GAhmMR/1G25nmfRjwqmPREFGzx1K8A6kLnidm59KjfdMUUA1ykrrXYvVwJL4tIpcps4EUSbRE5Rm2aqP8VbOWQTx+1sTCYNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIldinpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIldinpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3378C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788439833;
	bh=OhAPqcAynjzthGOgh7I++v4GoRbFlWamZitvL417AiE=;
	h=To:Subject:From:Date:From;
	b=UIldinpo3CsXo4hsynnm0KXBd+gSckg8NDaBvhdNgG0GgqykBWdm9qDtHUlqinJBf
	 RjQFA+7SfOh2SvHxSXIRYyQWTB+XugEiMTZ+ccYmI5Tr7PPOiRPeIaDzfKJh6x5Chx
	 XGBT7ZXHl8ZnI9Fc8vFtrv164v2d/hnte5mPb73abBQ1OgJNL7kfXdQniE6dmnOufR
	 7eONEEg1YZRT0Iy8GtLun3/ApLVxKoorrnn94S/JCX1Ca2hOX3EH2LZgxaCBPzdd1d
	 Fgs/AmCq3xfoaAuu+6db0D0Vf3uYTNe8/NnYZ+vK9TXNBkIWE1wwwUHrOhoEKT9oOh
	 2kBENYBpZmGdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE87C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843983370.27252.9545218082003873165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c394646a76fdc01fcfde88b61fa1d2bac4009e497df5dd3e6b1bcea622fa86
Date: Thu, 03 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788439833
