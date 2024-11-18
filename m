Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAD1176242
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731928554; cv=none; b=VNgwv+f1iLvj9Lfd/iZWH5vrGi9bwv2wxyonEnjKu6ktyaQScF0dmLDI8Q+8SotmKexNJjN4YOPpAQhPZXnuMfYxNcuhEKFiwgVocy2034+gsWWTPZrXXxrEnhVRO9bmpEK9IrvQ98w5Ixus5BoalvuPZnkfyNw19jBlnphMrQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731928554; c=relaxed/simple;
	bh=jB6H7S4ki7Az9niQCEu0Gvr48z2OTag7Op2io5jOOyY=;
	h=To:Subject:From:Message-Id:Date; b=Y5wPxhjb2TBGC9eWtKsvOEdPl7HVdj9JkJBM1s/jXaMIv0TaIAqonvUhw5PHRMiRx2ueJj0bCgq1dGBJJnkhbYGmY08Nlp1NzEjt1fdOx7cHETSOUUleqrIMWiqPlNL6IeGv0j2Uyf8sazPT7SCKj0CFulGPkTsHOUH8ojpfJ3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAixSxd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAixSxd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF7DC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731928553;
	bh=jB6H7S4ki7Az9niQCEu0Gvr48z2OTag7Op2io5jOOyY=;
	h=To:Subject:From:Date:From;
	b=sAixSxd01l3YCFaYV8EKPAphl7pu46F20kgD8Jeuw/nPMhh+YnA0i8lXEfcFvDB88
	 V98d0LfnLEoZ+N4oJcbtDqnOTou0ItomnVJHL99YM3Zumj6jC1zpOsNO/4Fx+vKJxq
	 pkgSVqqEtdS/j6QFR97hY6AU3ewdtvqKXwZdb/xv0p6jPfj0gm5DdZ0+EkIsB425Fr
	 jQEMv9zNOdd2mm/uGUbvdBOkEZhuAsTxAdOMrcg9M4i0h1se1nX+QDG1jwzzJbs/x0
	 JBmKD2qB5tsk+u+9npr5jufWQXtjESMD5VX2aSvJRaepZ+Rr4pfNswd4ZzNeQlj+v/
	 KXU/EVP8p81ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A904BD4920F
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173192855367.17614.11952014085555464218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb25cc9792e76f162824eb8a42064322e19d3bfc895f5c0f8bf697e3f8bca128
Date: Mon, 18 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731928553
