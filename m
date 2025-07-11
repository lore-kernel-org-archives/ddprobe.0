Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310E93FFD
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752221394; cv=none; b=idXUHw++HtezX/KUO3VVxGxiHKtk2BdC4mUG3bqN7Ub2iF6CRKWXu1jaMxsLnzdWk6ClZyjwVZxpvUibvdFQo87RJi6uovMPRTFQ8E3Hd8kqeILZo4kvU+4Eu9l2lL245WgTlz2VjI9xPRUkiWDkahF/PKYbfPByVPrV3tXHSio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752221394; c=relaxed/simple;
	bh=lHOWQ6eeXrNko/uxG1aggaa8zrT2arYmwIDCs9yvwEg=;
	h=To:Subject:From:Message-Id:Date; b=qBwQTj+yJt1OmQdmeLec8405nwuQIFqem5D+zspw+B+3CTlE++gH1NseW7bvPJI0nQ8vdFuavM8STLiumskPyNAzORMWWEo/+GJ07XgHtBoKpHkZdyyxDPEmzLbkXn8mzovxfUTVSQjWbm9yxllmAUaKpAyHGg1dHjp4qJOiTW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLdv1Lne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLdv1Lne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D85C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752221393;
	bh=lHOWQ6eeXrNko/uxG1aggaa8zrT2arYmwIDCs9yvwEg=;
	h=To:Subject:From:Date:From;
	b=dLdv1Lne0IImryo0xJPYmUawvnMhG4cMMHqZqMHo10oH9dyw05tBo9AjcPBwlLgbP
	 eiqydG1oDhhV9TShR45Pm/qGkwnetgY2pdKo/Gxs7ntrxekUL/tkH0vKIrOGVOkd5g
	 1JCPmv23cFO+3gKNnD9xcGSxdUrOozoGGxkeZxqnUcFnInOzKFGIN7LGRnowFR9G4q
	 vFlMRVyGVIoamm93KkldSKpXX031m2BSfijiKVypYB6cBt0OU981aUg6TA5y2mNOza
	 GC3TnOVZGMf+bOLPu6pqyZxRRDm/5s9I1Qf40eYA/lq0aW8uO6BAbO7P1fqPy7unrj
	 yn7goKy/+A+Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4CC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222139358.2467.15207794315603920873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6631082187f81ccdb761abe5d4cc81f46547f5739a71465b02bc01ab23b88b
Date: Fri, 11 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752221393
