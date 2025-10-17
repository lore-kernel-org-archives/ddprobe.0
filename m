Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1153321CC
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760736594; cv=none; b=YF3p9YuJ6N91vJ2nj2/it6kd713rfijlDDahd7bIf8CWRZghDPVgXRhT278t4o3kB9dGoJQ3HLMXn4tCUoRKUOcp3VerBTcrYwAaVx5+mTW+gX8ms2eRCUSLu8eYIc6qVFDU3nI2GRDVIbxYv/tAzkk34In1FBw/kDdg+ETiypg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760736594; c=relaxed/simple;
	bh=2ha8xSyOo89CtOuobdwTK7syDMcagd3bix2DU1gT1HM=;
	h=To:Subject:From:Message-Id:Date; b=WJ7c7tDjwWJxVGie3HAIadDegSZKysUyUjWdHqEzRnsLPT5RQhjo3jDlE9bQkpx1wAZHLZ/M9y4mjSjv7A4qA7xgS2xoAnF5dGGs36iPtCFx3ROIg7CfHHn+jVjcQF1k0HsXk0B8352K2FOWZ1MfiTl5QbVo/zbrUfuw4M5TWs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmnoXdl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmnoXdl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFE8C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760736593;
	bh=2ha8xSyOo89CtOuobdwTK7syDMcagd3bix2DU1gT1HM=;
	h=To:Subject:From:Date:From;
	b=JmnoXdl5qBI1sbuML3bPIYAeRwJ2+HUMwqwxdtPCUMGJ7o6I6Qdh3DfT1gxn9xcnj
	 F07fgQsCxxO1nLxibWhu5VFKYgk4v/L1DFb4kyHd6q3Pv7C3XqxmOyTjWbuJtf1d0t
	 FGoHD6Z87cix/CZ+QwXRZhY/I1UJrUEO/6qdpf93VAE6fXOTMJX8WH/AiXo+H7ODD8
	 aW/fAb6cb9pS7g2i0YfWXFg83gRXdbkJCHVRhOOBAC3gVQFdqlt+FIjfs4M9YVZsB7
	 VxulTkVYjlj8GadLfTA2zVyaB04nEHHVX1+9J3umpB1ZW9wBWjg9GZjxi4Zhs0+GK5
	 nu2TDlpF1FqUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE5CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073659358.18521.7704149792080562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4999c7571a3fd74f32d91475171499e538a1281ff22e8e05e36c39acdb3521f8
Date: Fri, 17 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760736593
