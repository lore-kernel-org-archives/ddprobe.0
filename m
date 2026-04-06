Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78493A1E7F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775517934; cv=none; b=iCvD1229201tI7PAfxg/VPqm7/oNuADHmClfUTPMRJ9DACo3ZlywC5NfFz4u2HJnhYRHDmBZeyTaM7oujLhLH61Mq8+9w36rQLVBSeOWZSjWNA7xuylap/hV0MlbToyXouBcthTum2WX62NS27YvtdqqgZpMT7d1RLlKKizvSv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775517934; c=relaxed/simple;
	bh=CLe3y7zbl7IT+sX//2Zaa27x5jiz/OUhyZIUnAKnqlc=;
	h=To:Subject:From:Message-Id:Date; b=KbmLeCNUEgIKTXPbdVm7zvuIxtMm2dlO3pUUukLeMdJ6AgRj9mDcgC80q05FPdURZHw8nZ+UJnivjTfL9dKdqiTgNbpR7jGT8qsrOoA3qmB0KF+ZD7dUq/Hvv6zHnJobORzMzPVOzBIwt2LPXRqVwoJcJMP1A29h4Ccc8bhmApE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/ks78Vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/ks78Vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2BAC2BCB2
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775517933;
	bh=CLe3y7zbl7IT+sX//2Zaa27x5jiz/OUhyZIUnAKnqlc=;
	h=To:Subject:From:Date:From;
	b=F/ks78VnDT9MofWVTI3BECIZLAN5kEQ1EmkYhY93f0rU8QphHrjaOmceXinQcnfMj
	 7XamBNyKNcQIYYeoTH1VFHzYhI2U8ZNAwxyKkuOhxsboGS/Gly1sfBy4FTMuOFYe4M
	 yV559gC1qL0cv8et9VSK9NPjhsfasgLKrtnbLgfjzcRqvbIgtZcjLu4VXszdfrP04a
	 ZHh8F5/+JwOSRk4lB+MKHeKbZZY2Ol1LIcJaZXU5Rix9wGXhBeioY7QSpeARJBdUV2
	 eoe9AxzPOxgIeUAzH5eGNPYUXlOcfnkPQYFWMdCpQjfJekcsHF/VyiGq/qru1wpK04
	 jV78LYBWOR2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD088FB5178
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551793369.3077.4766097963739475495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773f5a8c112b6146a336f75500d5c6a90a4ec02e4a19cdffdaf575fc3b83f53c
Date: Mon, 06 Apr 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775517933
