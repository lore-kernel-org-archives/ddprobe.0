Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E83510A03
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717997843; cv=none; b=buQFOMkk3GbwR8DkI3dmPfzTrmLimgKiVHzvk/MdXXw9G/L46zPe7M7Tf4XBN/zjyf+Hkz7tkI0CJ6rHjf2/ms/7QrmeedN3NjkoAi+HMrepbg6Iu4nrWCYquHCPKyiW07/OKXSVSvZ3yvPQe6jW7PQjn7cVsWNZumZQopEvXpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717997843; c=relaxed/simple;
	bh=Z4ii4xt7Y3biadrirgivfk5O1b18eBTIL1F9V81YIgM=;
	h=To:Subject:From:Message-Id:Date; b=LfX0BMqAqi2TsUNeHUC3LOfnrRfyQCxp6dSvuPWkcRexaDoN1swNVxVYbW54cQAmT6erMXRo20kneoRFaVtBNtUkvQFojK//nF8l7CrdVfYQZxBi0XSmMdOb9aT/+1idcJ3VuuE7gHWZHmm5/GZH9Rn4nWQdcC/SV7/KVWJfkhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNSLDvcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNSLDvcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE03C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717997842;
	bh=Z4ii4xt7Y3biadrirgivfk5O1b18eBTIL1F9V81YIgM=;
	h=To:Subject:From:Date:From;
	b=qNSLDvcwy2VfgROhidPE20MbLBJ+/SfvEhIphG2SflrBILYXoDkw9i/bvshQIhbio
	 gpNpFZRGrwpqe0lmsege6k41QtolTOG0u5D+Lxyq21I//AQLRxYlLNsNIS7aJiUsb+
	 a6EAJlXpJfZEwbytv5mz9pXjxIzyd0880LXDTBYiBqSX25iTQZMNmh9VptqVLivt1w
	 fkKRNVuHixXfnF2j44q3d7/2SGgb/XwpQ27D7qQp0OA5WJgGommu2kgGR3LC8YCAhY
	 e6FSyN4Nh14Q54u+moRp08+MGhCPD0HBOCtSvrpJ1mXczfgrTrPd1BC+EiodcbtkBW
	 LB7en4ezgSv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF783C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799784277.15647.10329352832151158439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8182385b6ee669a2f1382b121695eda5a56b26915de95d28b730b09fd04c229e
Date: Mon, 10 Jun 2024 05:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717997842
