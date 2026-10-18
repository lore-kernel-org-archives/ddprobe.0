Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505AE265CB2
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792304434; cv=none; b=BNaqWj4969rKE7EQ8KC8prdFwMdA31rbzQX7ykmLo5ywDps3IlStBoHLVj0nISO5UgTwAL74qwFJ7XjR15cbXyORoFxdtKVSnguvsBdm48mAkrDs+7x70HWJOiCEMNi+QZdpGN7k/TiWOVvC/mX9q612j7RWr0B5530lXwMIdKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792304434; c=relaxed/simple;
	bh=zIdJeErSzkE5zvb8OWhkWn9sOdZW7PhngfVMvntyO1E=;
	h=To:Subject:From:Message-Id:Date; b=tTWAaKyEUzyXSWOoz1VMTcVzHKmLmZLf2Lyh8JwxvHO07K6VRfbMssyJnJ3KydQZwYUPRd1oR/Al2fm+TzdyA5wRRBbjAaginv9L/PmEgujP+L0C08jwQIcXE0o/XeMbndpxe/sP7GP5h00uhGLVtqsDeaedIyc3z5iSZYFfQoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+c0nLzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+c0nLzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF461C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792304433;
	bh=zIdJeErSzkE5zvb8OWhkWn9sOdZW7PhngfVMvntyO1E=;
	h=To:Subject:From:Date:From;
	b=j+c0nLzv1HSZoHhXdwOaK053xr8dUBdOB4q5kDS3kzDv0dZzZ9gyWtyRa9VynV/PJ
	 04m/5KOjdYLnOuSmsbPA2TsIPZkyAhlJ875fqd/WcfMhsldd3iu4+arsL3H3VDWYvI
	 kzz2cRTET06xhwJRedEQsP37Q+p2Jlbfyj52FnwUWMGD+xf6G4xwo17oP8zljLV8FR
	 SM3ahO3tExNrGRok49R7YthxcyKJXUqNOFbE+gDYhIy30yFmSdwSnP0zv9fa6SzurF
	 sStQv+qb5MnFdOxwNSsWEudOPfPvKgLKraSBUgM6GjMyuo/wO90T3jxOJnVm/CVMSO
	 v73VTVXNS/UAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1E4CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230443369.12932.770558834308294471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c842515ef7e50b95293c2a8775a989bf4a7ebfc3869e4ceac6fa59fa65f170c9
Date: Sun, 18 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792304433
