Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F76D35294E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782181594; cv=none; b=mzlmPeyMCi2B70kxXHPl7mtM/poLT8awzl/5RU6qoLpLqlARdIZlSJIECVTyFzvkK6q8kk83JGorhlSwYblvt/N+5WavtlrRx4EA2TEDzvXrnzBJslV4k1VujePUeHuxc5t6fvWCgZLeTpeUQAuwnDVtzO0SclB0y/GWgzeHyDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782181594; c=relaxed/simple;
	bh=jUm8viKcqpo6dqPdydFdO445a7nZ+AMqe7rGI9KMKxw=;
	h=To:Subject:From:Message-Id:Date; b=Iu4j39+yl3X6vim3oy1PfGaP7OKyUR+52zfKxVFpS3xoyKEdkmqGJrS7fGu2SNlUGEhu2wqn/mY+PSjh7be7Zt6Dxv2+cH3fVruDoGwrZ29BySTT1LMlWq4Rli+8v6eWEul/LUvo+eprYauWtmBkQGnWzzJ6ojKUaakgLWa/wD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvjPGnQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvjPGnQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB213C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782181593;
	bh=jUm8viKcqpo6dqPdydFdO445a7nZ+AMqe7rGI9KMKxw=;
	h=To:Subject:From:Date:From;
	b=DvjPGnQCz9Y1zS7dc5dnkhJ5f+Jg7LAAfM9Hn5NI6Qj1FY1/2dCvVQbw6t2e7G7eC
	 Er4o1dg2yK2SIwMurz2E+gqxEnz8VB/hqXIKfqOiFQMoQEUwp9Wzctkj37ATpm+waS
	 jrCEU+UyW399nwhuhAfjul25C7YF7tYm8qARaVQ6xahc9dWhj44mq/ptvs8wUM3/sl
	 OEjtjH9w7sEhvSYOlwUba2jMXWFFBjApsTWNm5c6pyKoqxZ8i6BL90zmwwtJ+FBEta
	 cIzGTGAWptJEooBlB1jAdPJlLtABeK/dtQpD2IyjS+BfsfNErpBiNXdMGaPJ5rLW4D
	 oqzOTkjdduI2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0AACDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218159369.10805.6872364764045349760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7267465324edb35e5bd5e523c1a73f9d386cf7709191752311e82841c5184083
Date: Tue, 23 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782181593
