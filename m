Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B478219A7A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766119434; cv=none; b=LSH1G8sQUrRsAnnWoNdNSfC+0QAEa8sweMp1pecQJnTEp8b0SCGAXXEH5f2VCpws+Wkg8r1UHD+CAkT0fqTJBJev8GYnj6c/sXuD8h4U8NlTvVc+0qoyeg27BrhRruTnOTvlhxyAXRtXIpxfzVgmFwvCGKlyFTcu+vIRtWN+ong=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766119434; c=relaxed/simple;
	bh=whSj2hcZxUsz8+1tSsH6uTGU1U6bLUTfzIqYktqKE3w=;
	h=To:Subject:From:Message-Id:Date; b=A512m19txtnlJvMlHbI0engI+NUfRWAEGfdo4IWliHydN02FZcfIpz4PNURSAo0OnxAz3BysOEvfz29jDYWkWB4iTXXcHbv+f4LU6aGYaQMG/qHI4zb3Gt8x2mtDvxNiKCAUxhdGnbFa+Nq3QG32deRlOLCSh4sHnFXj1Fno1WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFv+6BA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFv+6BA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AFFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766119433;
	bh=whSj2hcZxUsz8+1tSsH6uTGU1U6bLUTfzIqYktqKE3w=;
	h=To:Subject:From:Date:From;
	b=VFv+6BA5I2fm7Bn8cCN0xTITQCIBaRY87tzgOFgo43GIvcEgtMnotcB5z/Ia9mlXD
	 zh5MSI5kN9x3xa+O1lh5k8EUNhaPrT6Fpk2X3KcJeRyZCNw5UxX1Ik0fFj5kRcOIsB
	 cmX9GrLq2RctQhnKLR+W2waygVB81j3l3Jae2iJom9F0pJ0Te6yXsg5piT+GamqByZ
	 7DHXSpbpFlaf+nbQdD472FMzqZIWEfZZPYAFAr/Rrh9Xfke45kbMY6lV9F3oZVpohJ
	 qqBtWu1ZEr7wN9etLKOY0iJW5ngv9pWamf0xqfoJMUEJxxhLYDtTLhmUFwuNdcCRx8
	 UG9EA7gaZdjqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6CD7494F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611943358.31152.7277064662804802506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68caf02c22b8e930453da0dbafa0647bd2c67434132a1369c5421c5b1b3f23c0
Date: Fri, 19 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766119433
