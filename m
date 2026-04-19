Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D89528DC4
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776565054; cv=none; b=o1KEi96n1S0dbcUUpUVh/VBfnFlM1EQ3JVVTsOr6dKxadsOFqIK06Tg71YAsvzytSEWm+BfB7gEFnwaEg4cn76UhJjYaFGabw2B/1lmWmmG0jkxen9p+l6ilUu2UO8ATyY1sunDTy3dSlVGHZFKeUgydfwu1IzomNX/9/OA/D4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776565054; c=relaxed/simple;
	bh=XThxGAmd2DymtsUdzl4PMG2kIPS46fOD2ftHiWQJybM=;
	h=To:Subject:From:Message-Id:Date; b=MO5JZXotRdhvWRV7XfwD53Zab+hdr/GPhf7VYVZyDf/6xBRi/JrW5pLzaf6Is71csBZocaqQ911bhkt58qlk47RJgDMUj6yX82kaVlMZj0vTvTvzEvs7uZEvxXvbjfrwhzGEIs6AwcubPMzmZ2OMS5JGZuTIW/fxXpxOxH/mJ4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuGKw3c9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuGKw3c9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DBCC19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776565053;
	bh=XThxGAmd2DymtsUdzl4PMG2kIPS46fOD2ftHiWQJybM=;
	h=To:Subject:From:Date:From;
	b=DuGKw3c9ICXVpx/cWyih7Bn6zPQfhzpEEj42dnlmqxoyYMynq+M+NgYwTqFQ5+9eN
	 yPEGmYInDg/+UDMR1qySXOBrU59nIViEMGIz2rrhql/MUBn/Q3VN43EmFLLf4sK+v1
	 CjfkQDhZ7Q7oLlXbGj3DAOiiQIbrJej5xnkPFKUMJRtqClgd+IK8l8DDGiXX1+FOqe
	 xuTEl1agysCOo8ph199sQ2Mz/G/VHETTyNdf5NCnicQgzAl2fUiy0AHeJm3cP8gSWO
	 imtYj5YvCtzdUbRR2cNDsTfvRnE+AXN1YmZehHJIEHuJOUSi1kFkUXBvxFL75Uhq4u
	 inJxh3GjTmwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00C1F99C98
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656505368.6609.10152050140409265370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b4fc5b82fa0b6b279e2159f719c692afc7e8345dd8f1d797fe124b83d65d47
Date: Sun, 19 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776565053
