Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E265E274B4A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774072494; cv=none; b=Ic94KiMo0jpe9MqaQ7q+PbQ1SFyrS7Jf9lKeMVrdglVx90XE9ljfuBfcOUbuUZnqpm1rXypDn0OznL5LgbvG2nvuGXf28uFmlCJAUmYbNlKtUrlN2Vkr/rFzo7KrLUGRJZQPyqJmwKubXO7rY44FY87+Bi6dPszNUEys3T5HBvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774072494; c=relaxed/simple;
	bh=Qdio5vm9J2Lnxi7VxcGYnbyondgmSQPqNs2Thfbw6qk=;
	h=To:Subject:From:Message-Id:Date; b=PfNaeAZZiser/0nmEuITStQh/cR3t6myfVX7bWy5er6WOIq+2CiASRuChjBbo+4ypSPph+THL2ejah7RLHJeuDMKeBXhkJUvLaYq9Y8+NgbtxNF0jpSkXRlxp2qUR51Y5M9vFlDhO+Cy2PCPnNQFwSGPgta70KqG0QHhQeb1w+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQLIZV67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQLIZV67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39F4C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774072493;
	bh=Qdio5vm9J2Lnxi7VxcGYnbyondgmSQPqNs2Thfbw6qk=;
	h=To:Subject:From:Date:From;
	b=KQLIZV67fSn7Z7AumG4PRaVQTpH78jy1fCfPbHSb12M9YJNo3WAO6fnGcmBJhJdC+
	 kegKuQy4aRDsNJigaAdAfd+y3etp/MmFlSW7VhlAq4xWr8TrAJXaTwHdxBd2EfOlgK
	 z9OdiAjHDedQDY8NGGx+FqDG0VA3IJmlcrv5nX+M8NTO6nEeYHHc6ViCTesIEFtiIJ
	 NUzQthblgUdbb8zp8K+Pfe3jxo1NAFhJTfVbO0964IyA1xVoxvq4CzHo1NhifH//pK
	 brzcF5RSpzvX0tG0dAOJ0bBoc3KDaXGsKzVbelnmucr/q6tkN5IU/TBK2RytwodQR5
	 dg/Aiq07pBcIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93976108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407249357.10868.2996090528492464164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f83fe20861b6da386c1898062f5f33ceb6c12367541e92dd99a03ac26b0ffa
Date: Sat, 21 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774072493
