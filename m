Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2593317555
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733190354; cv=none; b=Kw3C5co37yYxWRHbArmCekEvRCBzcHmQhxYlOR0elHorbiVQY9ximLITcmWTuTXNwQurFMf7c+f3qzdKU0lANb/MIjEzU4unBXsUyZX/Bxqf1Dcxk4udfNqgp04dNda10dhwifFv4mNzMstTb0bcZZvU7Vh9tDJTc7GpX7c/RIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733190354; c=relaxed/simple;
	bh=c06SvUjHVfEepAZnveJHGuFH7dI6alSUjONCqwnbrYo=;
	h=To:Subject:From:Message-Id:Date; b=ky+z0iyUysmWpdg074H4e++9uEV3FkX4kuWVwY5iBUBqyoC5DXQxw6dGfV/TqMi5GGCsktLW1KqNw6/vLwlSEhdXlaPyscn7+cRoDnp9a3cpgWCs9g1FNtXDkKRFOb3k/HOrHFZGflecG9n3k0PWIPcJWKJqIwcqP3iA+sL+cBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AB/pzZTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AB/pzZTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E3C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733190353;
	bh=c06SvUjHVfEepAZnveJHGuFH7dI6alSUjONCqwnbrYo=;
	h=To:Subject:From:Date:From;
	b=AB/pzZTE/hKNqySE2dbhJPLqo+Yr+R/CQAiJrSZzYwXKcxCNY59qsubHMcbRoCObD
	 W7LnWT+KcFTOttAMi0jXBji8OtTSgC4ZHDjW/YzKfV5fOjduucrmS57VGx4RygRs+S
	 QavNFiQy0W3XYg/apP3jmt2tn7+K/SLRe9USeNrdefMpSkyhjam+vo1E6IHiqCGTcH
	 +sYm6o59kxK9eYE/9LRv0e+MwqtiG6zVz/Ujv0xZslFRkQyF6Q89TFBgRNkNLBELf8
	 GyxgIasaYF0mkb27R9DyAvD/V+zihdjOHz+4Es0cb4FUzOvCaI0kTGET3HEF6QU18i
	 69NB18ZW1YU7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB17E6C5E8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173319035358.25818.14811084470116076242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca468f35435a231b1e165d41db3e4795e112ace6041df362b85f62aa14f4a9a
Date: Tue, 03 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733190353
