Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154BB3431E4
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761907194; cv=none; b=DoEUpdsMvyWb9CRsyCSe+nPN1Zsebt1bvMUNFsRxRZIkZnVOs2Nq0gsxjTpZu44GnJRJa48/CRpcWY2uZTtWK+IWgz5afS4V5NnyjTudak8A/dpuz4iCeu7f2i3UMGlPryRfySN8V8uC0FdcVCYpILp9eH1JPPDRJrjLa57H1SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761907194; c=relaxed/simple;
	bh=tYZ9GcxeGAxTD9MDEydMZto3z9Qnp4IrrElkAe/3vCo=;
	h=To:Subject:From:Message-Id:Date; b=Q2vjngBIaWR4wN5ByXANT/S5LbsLcb6yrg0uxxe2rfS31fvT9938/gIL0/H+5z01eCOoe4f/FwZQn9PRfKeKworPG1obYyxeufyoC8c3mG2FbpqyQzmg9imKGqKkIsqI4saTiVUXZo1wi+H1WtEhGM1MTgFg3fqygk+5uosVbJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9GcL5kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9GcL5kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D20C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761907193;
	bh=tYZ9GcxeGAxTD9MDEydMZto3z9Qnp4IrrElkAe/3vCo=;
	h=To:Subject:From:Date:From;
	b=X9GcL5kkH+UESvEd+3nPJZnu5BKa+5rvyo9UcXYka5+qQAGQbfBSB+C5LRs+n2m7R
	 L1EvXukHEQmN/KRo3kaU8t6BaGOOkSkHv08HrPfY6Vb9FINxQRbbc6R46AU8ujHB/L
	 ilT1ksL6eaQcxQ35JzuUl+MxIxRUP6BjKgxhOAycpKXZFqmozCNps+gsjFCOm5eeU1
	 sudLpUD6prI6xYik/k1xVWmH2rc2ZtZDbAbFQv3quhmfVThEAXRzUkT6YrzgkDVGiB
	 /88jySwukmySIm78FldjJMOZ9cihBfVcMPZ/edmtvLqD+4dO5EWnRMLuSkhzkuD4k7
	 4aYTwYTax/NNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F7CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190719359.20902.13723047136015170890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2c7a3e0dbcfaf949f4c8caa4cb172a67fb877025a92286475e442d4acec2ab
Date: Fri, 31 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761907193
