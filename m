Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9B14A07
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715067143; cv=none; b=mYsKumNW/z3QICm2VWA3FYmoDlAnBAikPN5CsmOFEtAFzF4dKKS17W9hcTkYO43tPAnrrOvtIRNfkOf/DjzP8RxBBUL+MAEMNlkEO8RhgaXsgve0wNrYCgeOBK02sjVEhemNIV4ZNoxhbyy7f8VYY/LNY6jZ9bq18H5Rq4BtLkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715067143; c=relaxed/simple;
	bh=Mkq8zV4xxIYze75fmvqY0trQ+oabzhlRrTbt2QZ4zKE=;
	h=To:Subject:From:Message-Id:Date; b=TbMMdDaWz/DFcAXXL9aqCtewrM6Fwt0hKlmJuu4iS489lQt8e5G6ua7DMf+sQqI7v3axRIcIlKqAZQ2Mh55eoHbN9SmrXHOj+tpdYAEMF6HhKiobHo54ssy6WMiXbexQaBTC+cGl/IFszONoW9V4L3bQsqy22ruvlWN9DHT8V+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ievHIDDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ievHIDDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5B0C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715067142;
	bh=Mkq8zV4xxIYze75fmvqY0trQ+oabzhlRrTbt2QZ4zKE=;
	h=To:Subject:From:Date:From;
	b=ievHIDDmQ3KgtYgTzbW75Lgp7wWx7eBCnFkjSHF/NdDSm0Srod6pbOgGD8vdftKib
	 JltjcQ+QU0fTGh9vzH4iBKGQw5Onht31KusANMQmjQvzqwKFn2o3ur1btJcxWe5zXy
	 3JXqjC8w691s/4ZEtwGcxKNeQTPAURkzpOBvD5OMXfttmWUYCngGiV69RUnhQ3YVpL
	 XHu8B4FXPbVaOYxbybLAkImkVEPzAg8vagHNK13CL+1xlT/A4trudRyszUGE2hAKsX
	 Cb7eFgwH90yKbHIDr6G2pkCVdsE/0TNYUS7Ify7loFIWRT+TWMilHZHO2BicJ/K5mO
	 6Lzxd8uidd/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D52C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171506714278.26804.5680183032211088393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b722566dcd9119a8ab82492a8329ee0e264b27cc61865b75104e805753c1d275
Date: Tue, 07 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715067142
