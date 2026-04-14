Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F23A5457
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776157055; cv=none; b=eLaopaeAXtZdFp4i77KP0jcOlvtvi/i3OnNJIymz8ou4ANACszd7Cvkb72YwI4F8Gsrh1+CnhEKS4Rj813XZ57J1Y5pB0G3ntaZsjBNh2IkF4utjHCbSpNyY6PA2VrMrbENQeb59xfB45JzTUaGP4+0a1NT0jEFSlb/rmIKYL0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776157055; c=relaxed/simple;
	bh=dLm3nGeP3rvmfC7MFxEcsBW+Ks3qbHrVV36Cj6NQY7k=;
	h=To:Subject:From:Message-Id:Date; b=sdzf/rK7dJ9hRvnd7cj6c579spJ6iLxwdUD+hbnhnmaH07drn13XNamx3rOtv1CMHCOoVkYSO9U9Afo1NffeOuDywhTdDQdkOmhzkUpATvkKAkokrk0QiBqY0G+FsnHF928fzsjiD1TUKcNuKnnPZ3LGbmMv2j6oHz9rneSnnrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlKjZ8/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlKjZ8/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6616C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776157054;
	bh=dLm3nGeP3rvmfC7MFxEcsBW+Ks3qbHrVV36Cj6NQY7k=;
	h=To:Subject:From:Date:From;
	b=VlKjZ8/Eex/3fBt5wC4YnU/YB79Gtsr7lUYOQ9ox5Z3lkQxhQ2zMCXgTmmyrVr6cf
	 5WMBqv8H8u2AsfIh+R97RvKVbi6DAlV2vZI7GpAVQlPNT97DpHlFe0OVd3RKMlCoES
	 dXDcQKlqzhOqq3RatoKRmcEb7ED+GhM44nQbc8332PVaH8rUEHxEOvDnfwz4QPgdBb
	 z7Q9yQ/u3g70QtyOHR0aqw0k3o5fBDQYPubeSvxQd74FXnfOZQQJM1NRG0/egC12Fs
	 2FoMkiYJMsNIUlwihg9uuSTJF4HVLL95oOooSAQBBbm+fu1xzJSnCcBUXloq1D4buf
	 ssEMe1mYchU/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B847DED7B8D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615705374.26076.13562795276568047208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19918aa3ca57cba07a1bc3b96f6b143b7ba3ccd69a96e3756abdb39209f9b1ee
Date: Tue, 14 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776157053
