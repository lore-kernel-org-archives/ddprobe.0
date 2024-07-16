Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B8719AD60
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721133923; cv=none; b=HdW2AXS3R1J+aLhLDssLRU4UV6HQneJR8sOTm91FHjM1KoZN0b99U7mkV5zP2w5EEBMFG5AK/36C0AFcxTk/aQTuhxrBZLNX+VjVdPbzXx97lo8VomFC8u8KHZGZaJahGiLIYabJFsUNccyTRvQTy3TyHdkxUJbuLceOD9y85FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721133923; c=relaxed/simple;
	bh=0Xpqr49wg/8kGgF0jv25TQDoW6QS4jx7H0i+V2S/u5E=;
	h=To:Subject:From:Message-Id:Date; b=Dz04azKFJMMJu3aBbwu6mYC9VQxreav/yLP7CPqDvr3OQdVbYDxy9OXp61/d5TCvhJmw9MVjIvKoYZ8+PrZcgQ58CwkU01h5Y8myrVYRAQrWaej4xRp3atBhkx9VwdL+/j+1i9IEZACOW6W3xorAc1BB0KLqLrAz8CFJNhriQ4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyQJ9JlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyQJ9JlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE36C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721133922;
	bh=0Xpqr49wg/8kGgF0jv25TQDoW6QS4jx7H0i+V2S/u5E=;
	h=To:Subject:From:Date:From;
	b=jyQJ9JlHkHRLiMF8v2Y2fUEezFKCd/m1OBGTZfz3U9QckaLf0GFH+FVuLVzada2o2
	 vVGFS5D60ttA77GP1zB1yS688lLcRJxZYlr1HFCz0/u+0hZu+qd9Yd9BDRwMutHCQY
	 Wp28HMYTeouc/BjuBqPiif2lEmMlrZQXRscs/9gY1HZ2vkDNt5VNeevvZfDmK9iw5Y
	 OHXo2WkCuXZZti7F97CNjwkE8cidjFXkwlb3os8IWY1ML8VsGKx2/O6JJ8WiU0kEA5
	 3Rz3tcrPK226SU86cDZxwkhaohpWWYBFmXrbTLk8OUa6u5MXGaDtGWBUzZ6T5RJB1M
	 pGQzWjlDmk/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84BDC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113392280.7676.1969645026495896518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7580cd01c394a44f5393d06bfcda0e8c80f578898486245a856abe983834ab0e
Date: Tue, 16 Jul 2024 12:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721133922
