Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFE93542CF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777266454; cv=none; b=itrcFU2OW4wIoo7eFV0ksrXKwDzoJoQfF3sTjpoABZZWuZEM61WsuqkPn8F9NLPDBQ/rb8jD83QsQEoc18L+RaFOvaZyHS9nQQoj/fjxCrOPbbIk++9GGmudWHIVabLo50t4ZhW4luSOgKCNwrbiAaDskOFKmXbWdsW6/8dpihw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777266454; c=relaxed/simple;
	bh=pxuw8lFBDsoTrNT2lP9fURoBQqrxwH0bGZZtqEWNxNw=;
	h=To:Subject:From:Message-Id:Date; b=d8IcDXGQsBi8yOjHbwniZQ7i0eahJ7DbVDy60/8sP93OblP3PLUffJtiUoh9cU1eT9YHvWa1ihZqhglzkZLW2yCh5H0vJTGdklcki3C5Evmaae2TKVxn3/pyoLR+YrhUAyHRtzjhli8CNO868+7z4mASftTutqmO3cAJFw7Y7pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsoGXsSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsoGXsSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1652C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777266453;
	bh=pxuw8lFBDsoTrNT2lP9fURoBQqrxwH0bGZZtqEWNxNw=;
	h=To:Subject:From:Date:From;
	b=XsoGXsSe6fTzRdQzMp5bs5MorapYwKjA+VFt9sbWHlbNEI7GicZGXxbgu/aAQYfNd
	 sPsQajWciLZCEzn3UJq/jcprsdDidkGL1U/pnkXkm9g0HD7f0RokwuIMxnvcE4ITkQ
	 +tjDCrUd9oufcLulQeX9RBUnYJc2vip/1/EdFz5V/uwSd7RBtmuyLwZZ1T3+BZeONs
	 SoSEVKnjHKTjVr7/u+px1rL7ofPRIUSXGC/9Ic4PpNjqlNf+OR1E/2h/jEaxL+onAb
	 8C+j0Onys5fI8a/CLj1tGjeFrZUeMWFZBvTMcdE/xi1N+0nM+Mx+/uyMPZIEJRAir4
	 gk0BPOww7ehUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2FCFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726645368.393.18019276731370788102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0f0fe28297a32a57018a3c4cd10a659eb1e24d8c942199f53f68584eec08bd
Date: Mon, 27 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777266453
