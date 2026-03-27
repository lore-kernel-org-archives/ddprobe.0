Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E562FF170
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774584294; cv=none; b=mKO6MtIC7pd5yuLozCDXLDiltpGla72P3OjfZuWVGg67dTKUb4g0XCqL4B9Ei67Ps3/JchwBZued9TDHarnUvU5mV7i7d5m/L9ijSXug6HYQDy3/DQpq2AdID0yruRL3X7vEKx4bynAF2sT2WRCCw7YaOtSHTsxLcxpr8ykvPfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774584294; c=relaxed/simple;
	bh=F1E3TfOKAwSr+wG0TbIAOr8/k/bNYxkjjV3Dcm3GR7Q=;
	h=To:Subject:From:Message-Id:Date; b=AVZtHOpdDFpEZMp7ols5tpMyfR888lsqpfvHqV2fAm82nflX1g1Yk3LNPk4uy7CJnSoAgQMb9+gx89s5fHL8sWM5dkoTWwQs0M8YmZEzOXbkmZFIAf7Hh3XmHVprxaw30i8aOL5f+Z5stHxzIyEdaIrBvuT0CPOAQ7WdHhiMJ4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIzYO12w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIzYO12w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7B8C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774584293;
	bh=F1E3TfOKAwSr+wG0TbIAOr8/k/bNYxkjjV3Dcm3GR7Q=;
	h=To:Subject:From:Date:From;
	b=LIzYO12wpdIAIwQBfN2uk6r19ZA8azWvHxuYkDpuS5axIocesEVmMoyH7YOJKJcrb
	 nz4vsHK4aHjoSOs9CbfEgs6bG/AJvdWEmCrsd2sQVOp8zrFhByD117uRpcAeMrKlAt
	 uaSRl1+kJrTBaHK5iPPu8AYi5jTTG3Ow3hNzQP9w142a0qk7DBsVi2QClCF73meosm
	 v1Js7V4Cs5P0ZEPpEN2ej+vwnM/T1EseNHxQU/zdE3c/d+xaN9Hv+yhHgctjuEyAK0
	 m/wPqsSSmy4L3ngvFhrpCuV5gKqmPRU0Sy6L+LOQq7dB2YNlr0SrK3Vvtfd6EBCe87
	 LMjJaiT7GmSWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9461710BA420
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458429358.24332.2444779547187585649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8301f3a84e192bb7652622b56a23867b15ba7f5517dee2e9cb295d8b9dd8e796
Date: Fri, 27 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774584293
