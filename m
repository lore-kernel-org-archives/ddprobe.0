Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E275228
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728606354; cv=none; b=mpYtZGCJWfvMkED3oAX76BHOlhGjcJQ2VDQ2nLHKeuoHZqeIGD4XTN+nzIM5R1+8wuibrgrias3DDYbCVsxoApvDtFlf+7cqOXib5FRj62kKhaTR/qN5HuC4TIcSg1YTigWY2Dp9P2J36mu3daAavzkp/QC9E8AfPpwm7hv/o1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728606354; c=relaxed/simple;
	bh=xdtEkheN2utQTX7bmvWljWhx87/wWk6OFkvJBr0s4LY=;
	h=To:Subject:From:Message-Id:Date; b=jiYLczq8zoIr4W7bqZP+xrJkYf6JU6sITgepx6U1UDOPDG+KuTTtj/rpKeHnhoF5WoC1+eu+OsDj2o/bGx/HvFao4ER0cD3WVzXl3uDG1jGFdVkni0xyV08JHhQkv7neIZf5yNzSfHWh8cv60dyXeLJTZG2iBGC/melFxM2VoHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRI13j/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRI13j/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E26C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728606353;
	bh=xdtEkheN2utQTX7bmvWljWhx87/wWk6OFkvJBr0s4LY=;
	h=To:Subject:From:Date:From;
	b=cRI13j/hc7JGHTIFw8tslDPWugpb7ApZ91hwcQjo0KHhnWvnfxj/xpxnTXCY95uKR
	 7lYabMuawp4U6JXFXjKmC2tHJDNU6OTJCJlCrP552PU6Nne2/XZFEuPZKwJ+ZxyqPE
	 fHjokyxUpkbKI8xnWxv60pdzuegMs6fwmp3jflrKZNB70u3klp+0NrL5o8nUcnfwpP
	 cxJzbYgFbK17Fdybu1KaWnDJcWh35j/ikqibNGqNT7eaScNIjDfaYYnOkxwFUG4PVx
	 4pX+g+QnjBAkEHZjhL4tCei3x4IbogLiclbtDF3BA3b0VYl/+iBnLW56VSmE+eed7A
	 yLBV7O2KZJzcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEC3D24462
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860635363.24833.7078893844399887999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025130ac6c8a76ce6bab01a8727848d59efda624e0ba3c1b74cad01e4340ef91
Date: Fri, 11 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728606353
