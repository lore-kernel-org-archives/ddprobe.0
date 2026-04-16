Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F00B375ABE
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776379654; cv=none; b=nCG4bUrp5mI2lbrj1Vg0eB/vIbVc5V20ZtoYs7/etzrAMOJptchmgfca9iMcCMdg84likd1Zpa2traFKpo1IaUaCUf8K6SfzeVKsPya0wrnodxJTZSE2Ace1QB2T4s3nG1yDS3kWb2cUfOINICZe4IDmkeSQnNIr1rIqFKH+Bss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776379654; c=relaxed/simple;
	bh=oOB3O3HoC3lA8mwL3cmvyIzNnKaa06dXquU0PZ2RVF4=;
	h=To:Subject:From:Message-Id:Date; b=tjhGZr5ZuUAnEbjJSVw74Fd+qs5EXgEebOMx8Dg+moQztniTmGLmACno956OfiRHtW8lsp2DDiGckWLbEHJdMzEjkRvga7ldgnC0s4XaVslASoEZGILEga30JClpzQkW6OHkKwidocZQOySJOGQjPyDYzOG7SP3W8AIaSE86eVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdcRgv2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdcRgv2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8939C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776379653;
	bh=oOB3O3HoC3lA8mwL3cmvyIzNnKaa06dXquU0PZ2RVF4=;
	h=To:Subject:From:Date:From;
	b=IdcRgv2VVwt/TIoIjNDqAn7ZZ7hSTZEaozRaRqMQ+lLLb3SEv6EVAFOAQtrrBSoyC
	 gKjrvMWzwGbLECoHl9a5CpN0wloNBpf9OC7QK53WuyFhkGU9ZsX6iVNNIJZS0Y9eZL
	 OyewYEtvWUA9FhZ/fapWOPktrdKw074SO2tYnSD8RZ1tRmxwlX4Lf3GxjAynx4iNhY
	 Kvc8wDlva8HllniVgF13jo5y8k/l0I/7fvV0kPX52jbkKHFnBqsOhxLxgCBxg0+9zV
	 aVkjZENXHyTjh8xhlnaeNMSL1nyfkjROaWGVZrpRDTfNRtiqWUouccH0z+7TTdkcBR
	 SYijx/Rhbb5zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9160F8E48C
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637965368.15196.2871254922055755029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620619513f8e8b57844ba0793310f30c49ee97b5db3a31971a15115d127c10ec
Date: Thu, 16 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776379653
