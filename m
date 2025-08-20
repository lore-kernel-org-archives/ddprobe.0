Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D99BE555
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755670794; cv=none; b=I16Hcy4rDojeTi0ukNvmzJh1wZA71bgWqCfNKTE1vC7fFQZG/cQLbAlaeJAJ56gZcWeScUP5Uzlaqjy3ZUy1EH0xhgbzd8zJjC0WnU53Ccyujoai3yDJXxWRR7ET2EYcbcjbR9IZZ55HYV8tBPePcMNYcH8VFnalSmK8pJrlamI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755670794; c=relaxed/simple;
	bh=Mt8ZkSWy3OHH5Qo1GLZddmZ4/Uh+IFwsW56KblJjv2E=;
	h=To:Subject:From:Message-Id:Date; b=W528L307tUxWYkjGcwFo0hhZIkpiZCFDx/t3TGVVNQIIILUegO/2CGQOkOmtrRJZyVRFUgWViZ0eq9qfLw2ff3gActOxnKmtXGyMXIPSfgkYlGeT7xGtGsdXFfNyGJknYUDGCOlT+ew/Ek/5MwUrGctXyLKn6C9OzaQjb26pZMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi/c5RSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi/c5RSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0C5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755670793;
	bh=Mt8ZkSWy3OHH5Qo1GLZddmZ4/Uh+IFwsW56KblJjv2E=;
	h=To:Subject:From:Date:From;
	b=Oi/c5RShV+4lD20QcWYTm3ZQdbNSKLa2HDbJVoJvFcT335ylXCSNwG73C8W0uPCox
	 impUa/O+ZkIT4c/kS+BTHnxYpQYCyeKMF3yWfCHq2laaDzDguh0BqxUfmEs23oCO0E
	 EuXOTZmUrV4FLDK4QB5LHBucls14HtlTzINKne/8DGgkL9Otd75JN75YdQEXKSI2wG
	 yZRuhQadqgbIJp4qJeR3wx/MrlOipj9HT736wbMkgDJs7wRPiXvl2ZcpBxG8QoWwYd
	 Gu1/Q1sP0GpVtcw6DEyZtBuTrzZyb6U1tXq8JM4ukdAnQEPCDQk0LUlg81DR5rX8n/
	 IJ7fL3nfkSc1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB01CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567079357.24538.935793858522727185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca373ea59d681f08b8f1b01191379e395197e7ae8d2370a4ee1959a0957b662
Date: Wed, 20 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755670793
