Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B0231076A
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761302994; cv=none; b=BEJligqxz8k++ig4/8JGrsdG/tGEtDfQsI47khWVlBqHe4Q8jXwcy7+3sOiH1/dSgG+a92FBIBc2ipXOFgKJ1eeXfPUtQ4/2PtQp5yTfE+D79BgprcmO9Kw5ZS/jJWJ5Una7ab+rpnPBTBwwNJOHQUFBX622h5CeMMcJYyXnnRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761302994; c=relaxed/simple;
	bh=ZvMrKXBKZ3Ibj+m89BL14WhRZhnWDKe1bybhUu/1rHo=;
	h=To:Subject:From:Message-Id:Date; b=Pl6YV2UfhrsrvQLIPFzNHG2ka+rD/attys78dl4mA+zib0mttDdWkv53g7hbyKIcBBJ6itJs3W0EXgOZyYivPZF3AVHPj6j+DyemCuyuR2J16lrqNgyfRFi5IV5tGR56f1ZDryS3Oux3MlOsQ2YTnvmu1vtCWwPF0e8y8OLH+oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnPjKfxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnPjKfxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4350C4CEFF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761302993;
	bh=ZvMrKXBKZ3Ibj+m89BL14WhRZhnWDKe1bybhUu/1rHo=;
	h=To:Subject:From:Date:From;
	b=mnPjKfxXZq38mm7/6DZQaxSUAJ1jXi05BUtm5+jTQQS/WR4q1slxrI0CUTZLjV/AE
	 nl6OXpyqOoEGQbrouMCRMQYbG33BAD5h4HJLdHKWnu/o/bgCrAQfcw0Au711op23w2
	 hsaMhbVqufo25Z+odNeKdzcvrzv0ifKsnZmpDwPp8H0GQ5J5Z2eJn4womcu5q/fte0
	 EqiC3qzSYovGkneWxLAFJhP7nOXcESk6c+Z0IUadoy4YuoVvTES+4ZTq9mlPi4x2VG
	 XkC1KVo0ohUyqHB9Xxg5sfucW3CphcF+gP9yVd0q0mG+HGtnvF2SXBds8Jelkklh6n
	 RR200QGk/X+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4ACCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130299358.813.14576725143502854138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd88be8eeb7eb3c4d9f0db47c157535073d28ddfda8e0b1dbe6050de6e4ab923
Date: Fri, 24 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761302993
