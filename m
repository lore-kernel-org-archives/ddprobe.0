Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A29335067
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789753835; cv=none; b=DSGeVGoh8AkqfOXRcItqKFgrf+ABOhLuKDmnGqiJ90+tlKusl5e9hXo36gwX6RTRifYWpsN2KgonAnhWPqL774YxXBOD3ot2S8HvzlGWNiiEaE413QDkHc5INxO1+C2fLW+42TAStzLxtW5j3TFKSj1SKgNsXKq8soPAgjxDjYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789753835; c=relaxed/simple;
	bh=bNVcYcoLw2eyDnuhOb/pDlo2zJpxGQhb6dl1TRs7fuU=;
	h=To:Subject:From:Message-Id:Date; b=qDC5tAIr0dF3vIEYP/jXZ9AerRcAZt1YBeVqUdB+AL1MXqqDnmwZdQgFuTTmC/7baKygvpT++S72iKgfoVUTcZkulGvrbNTvaWy0dOi6tm/H5LRJpcep805nAqzXdfXk6pNlNQrLCg6BEOe6y7dg7e5QNArLdstMLbnmBOF5JyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVmvBTHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVmvBTHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4BBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789753833;
	bh=bNVcYcoLw2eyDnuhOb/pDlo2zJpxGQhb6dl1TRs7fuU=;
	h=To:Subject:From:Date:From;
	b=jVmvBTHhUkPW7h4fhWTmC9lGVJAFF6UqCnQiDKP3Q6Iu7JmTBdUpKZD3LTSBDBr1q
	 c6jqHu3MpjxY9vZ4DIQ0hun20lhBmK2vvEORiPPxmPNgxwHmI6fFV2NERETgAvwMtb
	 V9gpyfMAfVIFWFhK9z2VNhcjVUdNKmyV5VEMNPl5vcoU4fpfQsl9g4tKLZZNeQY4Ba
	 3oH9l6mJjpxR4PCB4rQ4y1ovep+RYutY8N14EbG9QFxF+cVQx6NCCLuJ4Vg9nryVUa
	 B4UzuXq0BaxCp/jQOpZ33DueCuTEtc/UbDtYDzQIXAEmjhr1EDcjxWiFTXcATFJvsX
	 O7bSdNCufT8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE25C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975383369.16592.13579897233242031277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcff34d5f793943356507f2f479e20d1c8f41d8de3efe975fb31c2a6775971a6
Date: Fri, 18 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789753833
