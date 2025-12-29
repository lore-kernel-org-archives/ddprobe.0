Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40242D249A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767041633; cv=none; b=mD2XxA+a2wzxyXp/x/e3ceBiQOM6FMgITAb+6O5rP6lIYM3nEAjSMJ+ALU6hmi1SeWg1Mhs76luO9rRUX3FM37KgJUGbq1BV+s2c/WxvoYEg91m4mfq54xVwOdkH6b5enukMBq9HBLq8JtoVPJX3kqHNKefDS9iPNUV5NwjxSuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767041633; c=relaxed/simple;
	bh=T3Ig/rghuAlitewg6/HjwY9awcRA8zQi5so+1qmS1iU=;
	h=To:Subject:From:Message-Id:Date; b=PsTaKWjx1gg7sFm4D3uZ/pomj0NEhT9pwCli+UtuVhJkA4/pWtpCWFyw0H39gnKAson2x/Cwbxrn71vNud1uj1Y59cws+W4bTLlfAyHTIlP+c653z1bz0KaostRDZDFFB93ZiRReLqRroN3NIIqlRkrbl39XaNoHtPHVLVFVu1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjV4RcSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjV4RcSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B8FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767041633;
	bh=T3Ig/rghuAlitewg6/HjwY9awcRA8zQi5so+1qmS1iU=;
	h=To:Subject:From:Date:From;
	b=qjV4RcSOGR1vnKJa9hh88SDUGGlEmZk8MNEN0v0IUPM1DBHMM62Lflm/PdUuc/o18
	 4UTbygZCaC8CY6fadARhKFnBcOKCJSjqylzOH8XwZYzpkJbAqIkdCL9SB2y9+A0Ffq
	 tT36gTkN9qbd7TWgNxdOB2GqCP6sFDQz9FFXr+lxbCcRyUhfVqGQvd81PfGAI6Nvk4
	 Vubd+F/j2VPhL2TJAWitouOc8BdH0nZ3JyQZ/DrBDGH0HlFvXXJm3jFB1HHrEUzxsZ
	 ZQM7JYqWWkPHY/JIyikYMZzRpMBuRnYXvTB4ww5jmKMQZJCq6iPCo983ZYSoi1rEah
	 uER3+4/a/bLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90993E92FDA
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704163358.16635.6606042348153355651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd56c312ccd7294ab2e1e6b61961c0c9c63e529a8931552b38c94718bdec1b3
Date: Mon, 29 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767041633
