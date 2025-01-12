Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4411B33F7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736681754; cv=none; b=FyDl3pwXdaIJAqd9juBy0KsW1JsLZocZvloMmoWPkpkE2kACg5Jxw4MCeq4uNxK2GysUhkurENKunEQDFEvDOTmaOnrDQ+tr49hZ/AGbJqsg5kDJh17PDFpVMTOyTUrQIcWYVbrVPMyardh4VzIBpL7/v1fmTKq3Nottt5h1fK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736681754; c=relaxed/simple;
	bh=SQGgj7EDdKffrhB53RIlYn9mS4eHvJgZ1hN410V3LGs=;
	h=To:Subject:From:Message-Id:Date; b=uznYWuumFEk7Uw7Z6u4b5NiT1CyTA/Rn+chcIBxQeXi0dtfbacOcgixhD54K5DlMrtvo8UU+yai6jHaqYH/i623hW04VUgEaOoS8r+r8COQYtke2kA2k3uygNJ6XkpsTR1fFYejfuszuZDveS9maviO6SAT3l8jdU6wmtbWeFWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmAzaGT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmAzaGT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9989C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736681753;
	bh=SQGgj7EDdKffrhB53RIlYn9mS4eHvJgZ1hN410V3LGs=;
	h=To:Subject:From:Date:From;
	b=HmAzaGT+cpW5AMQpF0wcr/tFJ5Qzk8bX33aSyO2tvnHbKyS5qYGCmiECiCIN3eF+w
	 br26ggzMITXgivqCb+MeMuZAX2pJi+uW8XEYoEkQPcMptPMiUeoQ+es+eivjT1NSFV
	 0bbXv23wo2jfv2Qqa0A09egqgqt1WgTSKQMA/Iz4jhmddGI/SLgCiRhGfjkzgD8VH4
	 XtYKdFxPK+pWBt4CAJfC0NAL5B7EuPCGLiO6Ld3QJ5VmbSA59+SON2UZ0n1SexJdmm
	 bqZNXwzKwOGygEKt1+RRlXDJIDwabOevJ19ni7a8HV8XGkqR8oMBmmzVOnD+nKS8Bz
	 RHtNoZqX2++EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8072E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668175366.11860.9323066229096343097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9c5ac56af844b7e8355dca74893f78ed9f87ea9fa65572c32d7607d8eec765
Date: Sun, 12 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736681753
