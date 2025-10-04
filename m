Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F7C2A1CF
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759563594; cv=none; b=tTFI6FA+IPicF5iD7B2SdQyfjBZsIGlaMLopxJxLMHLLRmRakmljFuPRMaFoQE81xUG8o0f6speiz7te17eBC8+vZIfDfFLCDC/9ECOwTqMseHnLDacJXLM1483dx2bZSYUxV5Qf18gS/QHbjBSakU/mO+8JdjWW3bt+qWgItZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759563594; c=relaxed/simple;
	bh=biUqpUqZnZIaIbiCEkiSu1qkDeXslw8fv4sYq7wGCAU=;
	h=To:Subject:From:Message-Id:Date; b=Hu/Ha2g3j25Bja/Iqr9q7R3ix/abLh3AYdDK1UjpC+ri0WGyJGJItY8RMHQic4i8OdaoQzVDEAo0qY1kdBgyAwb59gAXnnoF82UHLImwR6Ep/EgtOZag/WsjSFhzQT/cZVSzO+xyxKygLMnsbxODbYPiOzcEDlB2cq238syQQSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzKqYmWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzKqYmWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83D4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759563593;
	bh=biUqpUqZnZIaIbiCEkiSu1qkDeXslw8fv4sYq7wGCAU=;
	h=To:Subject:From:Date:From;
	b=GzKqYmWTOxd+PkGKK8VLYVbJ4fMTqwtJeERhWzgqcLK8gbs0XalxSLnWlEakN5zlV
	 Z15Pv9OUDEWeCj+1funi+DrJDCKkPHGbdoq5AoQMlaVyaMpnf4rI8GrZSQ53xuVLzg
	 ifeEwrFVLc3uheuFET5wtP9bbgnOPnNs3wsW9RiEqVMAAeCn9Lm9ARuEHSkjFcZwjg
	 uNlHXAQBg11pqwguY95ChCldzcdJELblL9dgFDe5x4AeDyelu3vA6MKdq7U8RThcVJ
	 gG2RaxTg36HVVwRKX5hi03pZZ4sNrGuI/Vk1VZUuyBGpPU4zZpPKCuHhFb5U5hVu1v
	 WRQ7uaEiXNL6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E244CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956359358.13116.8840642079865431293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e8045a1371bb2a603bda1e7511e6db5ce64d9bcc207a9e6124bcd60c347c3c
Date: Sat, 04 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759563593
