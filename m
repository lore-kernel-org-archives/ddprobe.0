Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C307F257AF9
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753486193; cv=none; b=Quyozu8ibe0oVwdnfgdK7CET3udQja+mW7BW6tRt/ElTJgvw3wMkdgD4bnpXYw+XivJYvNcV9oMaIl45qrEVLyQye4c48A+QdWhYhgTR80GdmC9DM4n5szOsSYEeeMxkg7po50efuHnaFE2OrNkioiSYEKnDfACIsom+Bp9MQDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753486193; c=relaxed/simple;
	bh=7fq+GvTqcpreytqcHIha2cCGPUxgZdVIPoKJ5syJpXA=;
	h=To:Subject:From:Message-Id:Date; b=IY5qNe4ONgOeiVBOqsjg56aaLnRmUoTzINfagSYIyTfPVZC/9ETMCI2EMM2t56eATWVk/Mxt+THrVYMCUjahSmEXOGVfqSQgUtNWs9A3NyCdku6TY4qnDZhCaboU9AX3Y+z4M6i42R78NUWN329BGi88JwMTFdRQ3tUadyH0HtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXwNwJ8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXwNwJ8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B4C4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753486193;
	bh=7fq+GvTqcpreytqcHIha2cCGPUxgZdVIPoKJ5syJpXA=;
	h=To:Subject:From:Date:From;
	b=AXwNwJ8MgMUEHe6lpWP0VJDi9jEE7pCkpivPPJeniizWQ0t7Z3kVqOz5TsPWfHFqE
	 7eH6q6oI6i2bdwKuUFKlnvfXn67+7+tJoLlXbVQUpuFgiEdhvhugtJMD1+J9pk3LM8
	 PFdMdhNvmrsqYKY6zDaczVTI1vPprG3+apBW/KT9o5K6bjA6HNIxs9cMGwNCTcpPwB
	 zgs1luEu8VJz6s21tTkCtv8/udEAg6Vsn8Z5Jr0CC7ckIUCRbrT9PvALjiip0eNr9B
	 +5Of7s3EcQfZLqW18EzhTUZzrLb+6E/sR36yfRpFQeL0Qii9URj21vURaKXe3O1WjU
	 8eQTsSfpNaytA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A1C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348619358.15638.7195479679083025475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add4e8b87f16f9d79e06b31a56bda990a8233f65d4799fe224283d57687cea37
Date: Fri, 25 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753486193
