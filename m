Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD7437E5FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786828834; cv=none; b=TPgrkQty7wq7MT17iMzKyjO9mgONT3unDDGoAleaxSoLVFiavevK8fhGro/nZMHWDkTZ2SIGUeBnSwuXDAz4gqd7/BsSlbcidryhVbut09a4wPBjtdNWEM2r0D0B77XGvqc2M7FCCqQ9vZwtro7jAMEs5mvP6MSjw3A6jhAEXo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786828834; c=relaxed/simple;
	bh=7FHHrUnufyLFmUVh/47dj1ocIaUlqfhyv7VDmNwgt8w=;
	h=To:Subject:From:Message-Id:Date; b=MYiBf/BJWoZ1dsp1LKaCD+jdmAFfPQ0dZx0MsiruIsliT7B/js1hj4Kev0dqVbXe/LRpMLZYtxDeiVJLrMaBops7zEnaBot6nghI9TSdYs0skZbVREW+4G8URKzEaqzL9Gs2E5CFhK4/st9nP2Qd2ipDOBdszyRJCTHFRzXsJY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewhS4M/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewhS4M/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AE2C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786828833;
	bh=7FHHrUnufyLFmUVh/47dj1ocIaUlqfhyv7VDmNwgt8w=;
	h=To:Subject:From:Date:From;
	b=ewhS4M/bDufMRrI7jXILCTJtKUWq5cAzkNtEhChUnE1f0h9IPmeTsuSfQiXSEBYAs
	 EMMI13q9rdvVi1P3ot3pRdEJ9MHGNu/XoSEgkLF6mPFdhylcJKlz+F0tDEc+NfUs5u
	 fOGw03aos2EwYAU2H9Q0+S54jOEpoQnKBTGJRFA2eiJTlT8K6Uzlchv5zBf/RVQuJM
	 u7jcSy39NDA96upzyjMcBkhwXpOjpUZjCG3jbKWkKMPQex2vaRFWdImNS70vwRrPjC
	 P35dfjIZMT+UnyFcqWiW0BBQpMPTxM+C8GRp1RNWVNcWgB06znood1CNKCsH/Faicn
	 2yAufi+XICalQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7B8C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682883369.31450.4196590538365232578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead068cae1f7b94b7abc002387a2d737e897ef9b0739a2507785752ccdb71b1b
Date: Sat, 15 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786828833
