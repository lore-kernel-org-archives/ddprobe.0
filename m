Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3619C18C2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762616994; cv=none; b=sspgrkDmvwJAmGNPh/HojCDhsRJaPsBhJiJZZE9co2lSGvjrm2zekV2vPlEW9oVtIr/eEe+5/tDOaqVJCAxMSQoWxtyXEVdGGZkCX3ji/99t1CcRoE0FHBmu94V111vIcEJHYx9bqP/518fI36QXBkeliQSqQVii87Uzl0KSJKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762616994; c=relaxed/simple;
	bh=ApBlh2GAH5IwTRGDFhRTLpg/9z44A3wMkYCzfZUhn/8=;
	h=To:Subject:From:Message-Id:Date; b=TVhB7J44MzZ3wF7pbRdbbpEDWhwRk5kiDnkXzkUYfnY43WucF5GdJgB+XTkwjnTfIFENhQPustCYswK6SmrlsxGfCX85CGJ6AnCYadwVKpTZStNdR6mMAh+7MwNqf0MB8uGdVQOx4Coifom2vCRQSt2zo7An5/uxRdE+y0Ui9aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRYse8ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRYse8ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27DBC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762616993;
	bh=ApBlh2GAH5IwTRGDFhRTLpg/9z44A3wMkYCzfZUhn/8=;
	h=To:Subject:From:Date:From;
	b=hRYse8epFUzaAqhsMI6CSRVyTZSIrhdxKJqWsAzdwS5LWE42YPRjeZSH+nfDkSxMo
	 TFzltKrvSnpafisXA2Swlq1bfF8iCMAOOFZ8IEj6CVYpU+VBFwM9hBcBuSlfrueq8W
	 qiHBx8buypbSrypzWv1gUn8KK1nan3+DN5WQM4cQd2rPtuHVgkZvsevJIL5NHw69Ym
	 0Z6TOwiutTy1k7Sr4Evr40Uix/bTVw/ydLV42LCCZQPf57tEtYZjolOWyrdjDymZPm
	 NcHI2Zlq8Ni00yuL2/KYfmBqabutyt9iWOw+55TZPuY26wd4MYnDFutXglXWrR458T
	 Wb+QPdBEr5AZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E1CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261699358.12876.17414647015876074766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5e90c697de98e06b63fdabb39dfa8b34d6cef54858ec7ef7139b2ce9759798
Date: Sat, 08 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762616993
