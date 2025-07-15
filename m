Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EC3186E2E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752598194; cv=none; b=PKyJ6HLlD4ZAh8cl8pNsJC5fIYl2v0hSv7RzlGoFSU0nA3Oi+7JkBPz088YfQWP/qc2YLyA5SHCP4eeoqDnCN7QHtC3xsdJBu444rHGDoVMeuXO9EwfKvUZG0XY8INg4VJzZFxBiVTroVGlZ6tWLo5P0jsbvDKrUEtMJBK3JKAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752598194; c=relaxed/simple;
	bh=VjwxTtKm8C8wNIDkj5jfYIvS7iia3gNB0izaKumKKY4=;
	h=To:Subject:From:Message-Id:Date; b=uCvAaAmzxvHk//xhLVmtvViW1xGCmgiaElBLCuV2rdZhRoBPRLroVDOdmWHJ6xL5udMugZ0l7RtQwNQ/7gU4t9WDadaxcULh5HxWpC6J6RNDFZbh1lwpfecercgR5IWp+AeFKLqsIXrzrwrywp4ZU4C5LKFMcTEOHA7+3sWXPxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpQVu76k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpQVu76k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752598193;
	bh=VjwxTtKm8C8wNIDkj5jfYIvS7iia3gNB0izaKumKKY4=;
	h=To:Subject:From:Date:From;
	b=rpQVu76kbMyeLjVc+V3/7FJviAbsbA0elmUENNcG/3IvXljkKQS3Eghhy0S+1YxVS
	 jL3FhxWcPHqilhdB4Mh/KXWKz6t9YT3m0SJsu7c/G0ZdDXeuzNtvshyg7O650x4rPx
	 STblx2lT3LiFxobdDq8XquXeJQ+mK0cTua2SEwQmL1YeXEHZcbwVN9/PlTN0fpiKaF
	 Z53zcxflg6UuVu+1cFK0qfdYIAhPi/Ie1BxuqlpmgxtbmgAfnKd18MsEphCBS3AJ2m
	 ckN3ywFk0kQ6hV6Ce6jdsRZRs1EoEHhRtip12zVO79z3vrsVKwkmAzYZ/OZ+WIVJL8
	 Im0NNH+7L7b7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED9C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259819358.24151.17731173321091610401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830315a0930c3d4c799221c75011d84f8844e7a99c8a070456034e15468595b2
Date: Tue, 15 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752598193
