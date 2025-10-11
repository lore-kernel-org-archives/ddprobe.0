Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E7F381AF
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760144994; cv=none; b=a1IYnR3MBV3rQBN1Vwn+L+BFt5b5M3ZvSLEpQoCcousi6M1FIP6pSHRR6ps2mFYX04LyaQZtc4QQxAZz32sIgIqYPMAYaX+q+9plluhd6+1uQ1YaQkjYarNqicoryFKaD8dZctlDLzxwx/rQ5LCilN+mM0rlvGliDJfGVF3vscc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760144994; c=relaxed/simple;
	bh=fn4iZUHqnY7jLimprw4QQqjaEU1mS629P8GwfpU2ajk=;
	h=To:Subject:From:Message-Id:Date; b=TFs+Hr24IT2+oYmwoG2kRO94lmy0ftyTCdLCs0XovEMJTxr8iPyeoNUQAbSNPEIDbsW8p0KnUWpkkaB8XgFlrLDpXbmLQT3w40cae3qn31LJD1aoHNkj5DZtECYPLgmyQL8q2Gmy7uDcxerfQYPnpQmvYxfqJt5+10UoN42vAOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQNOqmMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQNOqmMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5353C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760144993;
	bh=fn4iZUHqnY7jLimprw4QQqjaEU1mS629P8GwfpU2ajk=;
	h=To:Subject:From:Date:From;
	b=PQNOqmMrgZVLIL1XuwfDONmU1Ldt2FHbga1/Pw+CeHXJhPBiX/95aCeVCghaVPWFo
	 SbkYc9BnpqNhAIVqEO9oqjsDglLFfvOZFg7LVQuHbN1nd6vPsHzhSf1im8iaP/LGdf
	 1gBVyrgZu30tI1X8KcVO6E09DwCJo7cfhY1aTro6BD7z16vL/NhNP3VBrW6geSt+FI
	 juZgvu1W5msc5BaSG3+qoFiACOsOGNLcu0uPuO5hAlSHd9qIG6qgE+IAAfh78MkyWo
	 0l/5zq/l5KfgIYI6McsWlq/4AptgzzzMHiHLarQBinICvep8dRAjLb2gAkwRD2+zKq
	 dazO0rLSkKQtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A6CCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014499357.3589.15595239895947594910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bedc7d144470b7fd1ffa17c75512e190bb926bde5f3deca178872c47d7fef3
Date: Sat, 11 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760144993
