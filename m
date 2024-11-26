Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251BC1A4AB3
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732611354; cv=none; b=uyac8GaDbAeIYA9EDtD86TtjVtlIlvjvJ4e+wPFvV5K8kYCU/T1TfMV/VCv8SFlLw4oAzGaAxXzOPuwaAipb4cQGYzFnA7oNB2Zxl5OwixJoAd1x7TsSsXu1WQ1SZKngCTCuFJ5vHYfQYjj0Z0oHArZoOqI9sEpdPQkWgjK/3hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732611354; c=relaxed/simple;
	bh=38mL0RncnPAw0K5En2vHmndXOn7jrx+/Viy6kRq43y4=;
	h=To:Subject:From:Message-Id:Date; b=VKlLdrogsxFCV+SrQjsS8UQbLjhhfNv2KL6KGfvSvsvA+xeqR+aJQt9FS/4WwXFP+uU3w7K87ArYUZd+NZpwkPu78V5aHLP8iFW6n8PH0z449kxp/LVY4sWiTrxxBa+yooFonqKHGWGTQjWpLBwChl2SJvfhCwql+5dXmLMI/s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ruw1AD8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ruw1AD8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83F0C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732611353;
	bh=38mL0RncnPAw0K5En2vHmndXOn7jrx+/Viy6kRq43y4=;
	h=To:Subject:From:Date:From;
	b=Ruw1AD8BIGlJiHZFxGkC0ocnNUEQbCM18i6r8CP7hEo1Bg2JSP3zejREODC+Bw5zx
	 fmBziNlKGxK3rddL0WDXnLGx/+3CzA1asClZXOzK16tiF7f17iuI/rsbtYmCSGA4t1
	 7W5o3CboX9WV6Dut+dhUa5wsTYWvdeMj1OLJvH/PviatrOk4tZ7aczLe57bSP0LZ3k
	 ARg8M7LYHkqGxVPZGdl+y/cDHZofzHn9wvOHzxwAW4/ehxj/d5aWQML0cq/v9kt9wq
	 J2L1nf5oLu27t/MDwwItBjAhZxh+PZ5JeHxkrfJnOB893nKd3WGfKHz1YegYtzuyvT
	 tnce81Pg8bPig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E5BD3B7C1
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261135360.1920.6981302374828014450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb9337c7f7f4f47c5c2e595e2ed123fe2ef68fa6c42fb89afcf0dde29a840f6
Date: Tue, 26 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732611353
