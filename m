Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2580D1684AC
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734066954; cv=none; b=YDzwqLbj/JfkjDr2emT3HdhKb0IyMfNpLJoY2HQuJrS9Rc44DOaYBg1kbyVATdypcMKLAWhiuhed4yYrLmC158vTsuprdpentE6T5jXihwlUCvhwakMskvLt51vlWpbQOeT/Dgfp43yqtlBEJo86Cc79wgHIt/xV96mgQBhYqpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734066954; c=relaxed/simple;
	bh=FhIiVeKMj6Q4d6GkhWG5GKzlkL6t7ouG6QCp4nJ8AG0=;
	h=To:Subject:From:Message-Id:Date; b=uP4C+aTmA2SMXRKhdCBzfW9r9J3ll/2qHXY7UO0WWteg4mJwj1S2SHHKa7bTjojwDkPmwl4yeEAotj57Gi1FjLes8DrfTCb1tXacL11FnQKpBrIBqgPnFoRlm/I69AQn6kTRCVng+vyjHxfcuBVLT5g8DrRAwkVd8e3dG2BOvfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOVUqnOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOVUqnOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD740C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734066953;
	bh=FhIiVeKMj6Q4d6GkhWG5GKzlkL6t7ouG6QCp4nJ8AG0=;
	h=To:Subject:From:Date:From;
	b=OOVUqnOa24B7GOV7+PfEMo7yfhNhnYcxBqRPVni222RY9uIr/x9Rlo0sL5x07UaVa
	 HoR3zwHXVLKpvArMcala0PVHHZc611kzZqGzVestaG9VwwBHzjDkABer62pU+pepL5
	 MIGzprmmldUjfr+OPO/ZJoSMSqbsT8RxDAmce9TImhXtFRuSbm4yA/Lt1vDKP6E7PG
	 iYxUGAyzApXjXxZfd6wQZ3ToonV9e17Oyamh2CNoatlXJpLL3GdFMm26zdyzS4a46v
	 dh30UKTaOZ5QhPF6Aiji8wfe2xrEp/urAiMJWeYpFXUQPnhBl63sw2CMvyDYKe4zV4
	 V9HWgHtz/baIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D80E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173406695361.3492.10864240193003769976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65f762a46f1dbe9b8c9c6cfa37514441efb80b8dfb78af4415bbd6784ad9a39
Date: Fri, 13 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734066953
