Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF6510A19
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718557703; cv=none; b=EjtAzC/AjLigfsl0rQuEjKAr79kFsci0v56oaulCJSSF8Bo7TcteSDY526HlbQ85AHAn8dtcrs49KALGCt+U67bA2wKKkkkHxIeqVtwOqUPVxY5HcIjNc2pyxan42oNOBqAyHWa2tm879VNvauElPXX661rMWOjKCHPZGYX1mxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718557703; c=relaxed/simple;
	bh=RVDfk3hmA8iHB0ufbgrckgCeRHZv/rdvdxzh+RZP6RA=;
	h=To:Subject:From:Message-Id:Date; b=YbFgnKUfgS22eHL/GY8st8s+rVlwJNIl1B1zUQ5m80PEnaEP7VkKHphyPPgJGzdmWfp62EUsFVxfbbDOIrlQunbV7Mz3uZcU74z9wSgFqY9mIez+BYyqXoCIBPosr/bij2Xu3X/er/wvvbeG5I/qKd+t1r/e67iZdlg/FyzOhDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUz0wvDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUz0wvDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E268FC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718557702;
	bh=RVDfk3hmA8iHB0ufbgrckgCeRHZv/rdvdxzh+RZP6RA=;
	h=To:Subject:From:Date:From;
	b=KUz0wvDnknExOogrq2vT6yubOuhyznP6vBXDG2JEpdLUnItvdW1gIeMzT9raaydoq
	 hoc5f0uNBnXlj++MU7xEBEvuP2cXRlU4WN2oD29jPqtpa2RDjdngTqhg5GlJtqX7cF
	 W6aeug18vYPqzc0TWBkYKqxQZdJ8gmomrg2zIAIjibT3bR+zNDpeVOngR8pRyxjsQK
	 UACpDubnrve3nDZ8nuayWWG2DY9mbz9nChGqlApuMDqGTitwL766sZTEjmh5pxch8k
	 DKv2275Zsll8x7kyuYfVqz9jGnRGuFxc/uDhFFdZcu913wzmV77dGxVyW4jJ/ai6Mc
	 b6h+4GLUc/pRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB280C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 17:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855770278.13598.3075763438297258704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd877a4e067eec85415643cf8227575dfa112f81ac511528ac1c90efdefebe1
Date: Sun, 16 Jun 2024 17:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718557702
