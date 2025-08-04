Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188822550A4
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754310595; cv=none; b=cRVmw3cn+7o64XbFQNWXRN7wiKk0apjoyRagCamjN9khH5qAxoemSJcxhvIxC/erUdKQFfBYggz6WxjHSfiSMNCFWMn2/ADZxYdQ1JliL5FhXsjXEgLAXJmEFHdBVtj7dYF6vgte25djPxylPeT1oThib+oeD0z7pJl1fKvi8X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754310595; c=relaxed/simple;
	bh=n6Irz7TqOuW+pK7bsvZeOqyJ1P6lsz7fWxijz2oRPfI=;
	h=To:Subject:From:Message-Id:Date; b=EtJ/M3vLmrXirnfOZohbne3wd42jDaFM9ZCVKbKOtgVYSnt6ot2dmwO4iLU1fD4GBPz87Mkn+9WytruMOpTF//48+zmyUf4q70vW2hLcehRdJXsjEPRp9GfdiPtYwN7tr/Ld1A7o597aBxcGtvz/XfngHrbzz/cBJsl44aCna4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQGyL8DG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQGyL8DG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC16C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754310593;
	bh=n6Irz7TqOuW+pK7bsvZeOqyJ1P6lsz7fWxijz2oRPfI=;
	h=To:Subject:From:Date:From;
	b=QQGyL8DGOYwwGO2mO2aX0rlvrlxZvT6tX2NaYvMQ3XFN/SzctMnBgBwfYM7UIgf/S
	 gmM9z6B5iOdmgb3t7DOtJhCVX9yEMVHJOC2QLQX7C+e/FjQ+T77btjc/sLv/PShgj+
	 Cjea5eM95hRm3moPYUMAKP2tjwd+CRNyOz/1a1hQ+r7mnGQ36q3ItwLHn+nfCVv8G4
	 JN60bbRtVh+T/uIx+tXsNNkPyO0w4zeAj+sb6botcorASxHtkBSdLhgXjA2CQIIcBG
	 vcPYOnaYiphVf+DagG030fgD/fcNPoRSNB/KslAGMLd5w6wk1epTVwqqgym/pWF8Lp
	 8Gsq1yEPTIUXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ABC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431059358.6602.694502138094919985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c86ef6f644a4a655f50ac13da85194f10fd07a8bdfed86cd542251cbbb3baa
Date: Mon, 04 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754310593
