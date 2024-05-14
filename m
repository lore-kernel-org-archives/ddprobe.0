Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E059181BA8
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715707343; cv=none; b=qnvizzXnls+pCsa5WjtyVUOJuRm23qtGPNdaJXdIoQcgwQBvoKBEpKB7siBu3QIVU81Fqsazgbfho5VvoTfPoGbmoN7Vq2f+LwwbQAanljW0i3agbftulPnUor7ZZPvcHas4UkCermt+I4c887veIRr7kF5B17LqyehzxBBm+tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715707343; c=relaxed/simple;
	bh=c2D8h1dfz7nmc/2opoZrSJ21uT22eQyaCGq6A38dqg4=;
	h=To:Subject:From:Message-Id:Date; b=ESBHd9gI1Isvuk0xZoEklgCpBqLa1dcRxUEzZ3DLJyoepm2GSDcaY3NCBycY8uHGKQ/2xou/2aH+n8PkyJhy0ZqJOuWQzhDZd21lC2TA8iyy6IYbVDYOW5QjXg+VP00ATs9/0n44FNaABCg9tKKh3gVkcRROeevm/Oj+YUvNS6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/j61KXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/j61KXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F17C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715707342;
	bh=c2D8h1dfz7nmc/2opoZrSJ21uT22eQyaCGq6A38dqg4=;
	h=To:Subject:From:Date:From;
	b=b/j61KXay9Aa0laqDHQ4JwTJLs1uTg3XS94IZmYRl+igLywf+SCn4XIuYTSMVtuhu
	 gnMfNRMZmvy1NQwVSCoRBrTqDBM72B/s9C/EIohFsk2Sf820+SvEXNf55fNeEOa0vl
	 EctZKFsqL4V56QyUb0/NqpSbbtoTJD4itC0/maYPTBx74//LC9IDkpiX6FHvFwUer7
	 ajglPLop7rIgyvBc+p21Mlsf7ANdwPVQA+3ZR76wRKVs0lVxOC7ZMMVbsRzjPOQTo3
	 tYDaBiib42Q8IY0koMUBg0uXl0UnQNNbxy7xrGZPt67sDVIza5LYcFsqVHJ9ZsFtUb
	 jCZTEabPEY0sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0474C25B7A
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171570734283.25015.13264589564045229707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce9cb51a8cd6f20dbe9ad7cb7ac5dfd97a97114d3f30a030452cc52b010becb
Date: Tue, 14 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715707342
