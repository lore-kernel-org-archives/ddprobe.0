Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE938535AC
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712215697; cv=none; b=PwccHYgDZZ51rEilrfRvjQ8sGEgOYjEb8Fy0WRYvxCQYeFPvpocYFg75aZ8St9avX+cZDt2Vg1cYpZ3ls+Vybi5YppjvVXXkZ9xLPSW5KygH4FkQlGeQL297IRk8RcPHk4TAv+rbruB+Dfa3j7g0RBJB9l6sp7r+g+ZWQtBQV2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712215697; c=relaxed/simple;
	bh=sp503N1sRjuoNmb3+u9kXgafYNfrFk7geRXOsqCXv1M=;
	h=To:Subject:From:Message-Id:Date; b=jTe9tbv5cnCPnNHHwdISUcjeHGRFlQLpH79ia34BvbtD/hvfJIdBzf23H9u3WP5rpzUfRcWT18zNLWBnfwiOpGv28IhYWJSttO3rLFEzvnaIrJTljuZDuebqfs40MC603OE+eWViQ0qMurmkAm75BmpnD6KUm39K8csrdM4aqnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNVV2bdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNVV2bdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1F6C433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712215696;
	bh=sp503N1sRjuoNmb3+u9kXgafYNfrFk7geRXOsqCXv1M=;
	h=To:Subject:From:Date:From;
	b=PNVV2bdwO61mq8z9Hiyi74eBl2Fws/ikj6dIZenGSX//LZI7nAI3MRrVoXXZT2Rcg
	 wmD98NDNSnNRbLSZLbv6qfsLMxXfUMbm9V8iYuLXGCyauHa75ZoibdLSkIpugrbkWp
	 zE3A9IMSDDFmKx1Uc9jmjGTaYrw27gyN5kJHlF1uf5rDQKfxmdHS1YCUMfEF33GflE
	 6hdZred8eUiH7YmHarcEetVB0vO72XQuJfhIWAUOms6PRde2y2PLTWmcctjpifm4c5
	 ng6RqKRpbCxpwvfdgwZhzgPGMUzQG1yaHTm0ntLQGreMArbuDftmeTEQAVE7JCTVY1
	 Cky+1Edzo3Icw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641E3CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171221569640.20552.559665228814354145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca58db812f3dd626366a895b2e0bcdf27bf9765e07a2c8f1438f4ac15ffe1ab3
Date: Thu, 04 Apr 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712215696
