Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377EE25CC74
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776487654; cv=none; b=SGrG1evfvLgZBUlpf2tC5kiInLN63I9yAqQd1mhIXzk8wcBWqDNc/N6N91GOnlMXnMv3/ojScHXgDMazIyA689Oewh2fH8QDcPP1amqTE0Wk63PYmkL5eo6Er0ezup+bjoQOpv5UEj6PusbkBUg1sVAeHw1dw8G/JdwRHJwtOuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776487654; c=relaxed/simple;
	bh=y9E+myJGsvAHiXNW6fnmGu+IdHAAAt+t12K+n9zChpc=;
	h=To:Subject:From:Message-Id:Date; b=knEFHZ5NfaGpT22SjVh08KH8l4jgELvlsc2tShPDUxs2HzVncFIdjI0fAeLXrTNl7mGEdOCgo2IEsR3U2MVEC8/xQcCSQl5TaLaeByTQatoU78e8A41VMDLbNWUbuakBfXtfxtCuWDGtxKqmicEiW5JTMUce/9GXQ83wW5ABEbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clHkcsfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clHkcsfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1537C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776487653;
	bh=y9E+myJGsvAHiXNW6fnmGu+IdHAAAt+t12K+n9zChpc=;
	h=To:Subject:From:Date:From;
	b=clHkcsfinhgKCgmaYPklqUhKx6B6zaqCw0gE/tIOEF8h8IXUqGEPjMQhydP11HZj1
	 jKUIpO0TjS22Ibp/FSjgY9OGg62Zzo4rM0rOti9LhyNtstKSp8sOxPtqTDkc427TJY
	 aJnAl+RGhfqkNuWu3fTm2aYX89rU8dl4VmFPm9INZUUaU/EaAoDmRSiTMHmq0PdGOz
	 H9WSHnO8vQ5O9XsTht1mJd0mV/wvRGDnJpegCswt5aOSzSTaww3W4druQjI6i32Buo
	 a7M6T4FinG3VkD+W5Gh/UwBU8eV2a2u/+v66aQKB/+jCNb3k5+h/N6fivUxjbowaLZ
	 CBlOkq8yGp30w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFE3F99C7A
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648765368.23400.10575538405700747515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8024acd54d133821857f92c2941ec7a0f26e727d2de37ae7823930f4f0254d9a
Date: Sat, 18 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776487653
