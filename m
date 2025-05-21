Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D8F154C17
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747865394; cv=none; b=oxt+AW6b+1Q0hwTfWzIAftUmpA5W8IQrBbybDhv1Ty8IBQooiDaCyePC9kj9qbrCxtlm25DoWOkvntj9+n2o+YQJBOLOrx6FjvQU/7L8mZNCbgHlYKoxXntRfd6wCqdqPd2v+3yE60ExLN/K62zC/WjzwNMLoxk8geN6iVV9llE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747865394; c=relaxed/simple;
	bh=5W3rGwYafKMwQOt8Hque3r2/765oDMB4xKTRoNUkI6M=;
	h=To:Subject:From:Message-Id:Date; b=n7X4qWxnwl6TTqh7K5B70UihstNGDBorHwNaOaCzeQa+n5NErJovXTWZB6PpcV1bqkMVeBuvDMPJROhy2XRPS02BAdIbojqhey5o3bAS0c1+nfuP9BcZiZRZ9zAkpun5w7Te+VR8OH/QeR8rTEbJdglZzmMn3MhsdskN8amZY5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFcD7vAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFcD7vAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2781C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747865393;
	bh=5W3rGwYafKMwQOt8Hque3r2/765oDMB4xKTRoNUkI6M=;
	h=To:Subject:From:Date:From;
	b=VFcD7vACmJDl60E8qAYrdLbgZKiJ3voDgRZdQax1gJtXeGHz4gmYMZxe2OT8IBosP
	 HO5wvBeHb707swKyOy1HWCEslNMpR1aN1FAQ5TEGeslK/9eI9dO+3l454cIGL/0NME
	 fGTpciZ8EH6DAejZ7J/puXn12u5vQP37OTzLB5Xcl1nx0LA6CY1LcbM+QZx2EMGDFR
	 DqYje3/zh++lavG7/RDIOXT6/Ci52/BcQ9XL8KDpPWjbgVyHrGjbx5WFuzco8xKrh4
	 gIdtDXaC8xGpxuXGWxkI4dNxoEYjST2biJloThQ15HDHER4Re5ZtsPjcDLa5pUZV8y
	 Jhkp5/gXxCaJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167BC54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786539357.30448.880902588671049193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43bfc0fd159d9d93e79f2afa94f248ce5fc4f197427bc77155e250073094ee7e
Date: Wed, 21 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747865393
