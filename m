Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67531CA40
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717843643; cv=none; b=HIWucEhSr8rq/gqGk385h32H9B2AgsQTNvGzRF4itLrz6OJaHL4S7uBxFjwZ+wdAlfcdGQ+PRODHYsxwR77AxIe5QIRr9dFFbm5OKG2guCAAKhamQV9pUKFvf/fYF6KVGGx7keqAR7DPBBThYiwa/3aIetCAwBw8EVtOY4nCIno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717843643; c=relaxed/simple;
	bh=H8pLdEIfvXdzee7po5bKMRjK+1nq7O5Tf+6YbgOaTqQ=;
	h=To:Subject:From:Message-Id:Date; b=ZotjQPIHYSnQSMZryc86T13VZSCuzs4gFMRBc59r1HGtH2HRA7iF+qydAkoUP7NSExk7dl89mI+deLI2yQDBnL1I6rK922HYDMlpabaFqKYj7WcYUZ0GbGvtlXUao2KGXc3jZoahXVxjdYa/n2uCTfUz+kA7lGL8BKfKvTO23SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vu4scDGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vu4scDGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1382C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717843642;
	bh=H8pLdEIfvXdzee7po5bKMRjK+1nq7O5Tf+6YbgOaTqQ=;
	h=To:Subject:From:Date:From;
	b=Vu4scDGa09QviABwSgPnhAjuQuT5kg1TASOAgFkYiaXDCbpqRRiXfbLk/BtklJr+x
	 g/eMNgrYor5yFjkyGt2CYMTDcCs1Mp6QOKhqPOeW5ZpDyyN3zelmoKMmS/4IB1iBI2
	 +LqMo+4Tc0WsOi07XtkU9oOHQZC7TO6hUijJFRN5ChbLJsMLoZo6xF7Jc5P5WFEku1
	 08UYCK6V/rbP+3jaetnZ+im8Z7noxDnYWGskNAbT8P9rz0/5APPj3Mh5QSi+MNuq0i
	 k7+Nn4NiowvaJT9Yqv6CIOAbD7G3X6nT6XIAg6ZzDg0RHApDIL0vI2OVXMF2xjjaK8
	 kCLHO4UmbgZvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD862C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784364280.23693.1801318740536309487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9667550cf3625f4b7bf1010ecf1311ec80b0d934f4fb1db43ca01336010ad079
Date: Sat, 08 Jun 2024 10:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717843642
