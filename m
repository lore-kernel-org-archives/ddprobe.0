Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249F0318121
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770329034; cv=none; b=l+ASs3+Zt40mC4/XhSvf6klwBakTAXH7ABF3d8ymxoNazWDtewQvlUX4BOrdy9PDLHrKZN7nU/IS608qScWkmrvnxfNNtueLGEC9sdDSZa00GygDu69+gVQvwDYZWJqfqfWIaOmuMiDhKOUATs7oiajBhDzU4MlrvhgZyWjxIo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770329034; c=relaxed/simple;
	bh=8bEazR4ivrKgcTqebFQSARZPiyH7GLSy3NS90CFITlg=;
	h=To:Subject:From:Message-Id:Date; b=JpI32/rQy9gDNRUjr+/K850zP7mDMO52bTeVprV5qkn8gfmdacx9K6U8QLp8n7oVBToVniV0EW/Xc8yCR9N87TK/MM3kjAwu0e1yBQjcd/rc4VdvLScRGRL3/uhPHvYb3E1qO05wBH5swGyS4/mOsY7LWKOrEaKQjAjVBa2YRjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APoe/mU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APoe/mU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE78AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770329033;
	bh=8bEazR4ivrKgcTqebFQSARZPiyH7GLSy3NS90CFITlg=;
	h=To:Subject:From:Date:From;
	b=APoe/mU0hJ91xZjMWNyuc/8ikWP0D7Hq0uFhsTrTppFJt+ksw7/9eKYuKP5+JHF3n
	 WjUFvmuzBANZ1EkTi3g6dZcjW8oChEKHg9Uj1kO8RS7wfrumcazz6Kc/FAzvtgcE2x
	 qx8Yn+FJ8NyPVdLF/k4Dc+Gx8oNsPytC7NQ7JveLx38N8lBnZlGB/gXqdLVZ0BA8sN
	 EhZVrGtBabyKYGCkDo4fXtiUuIltB0yR2bDWaZXKSIDnVxqgyEQjUIsVKThddGis1T
	 0nlhCpKp2Pm8fyuw+6Q1Q4ga+UMrXM9Q+KsoccfHXt+e0UtWrjjNsTokUL+3eJuQ41
	 0xll1SJnrY83Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E064ECD9AA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032903362.15083.4801849864842719500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa8956a2361d9efb46a84b7108dae9bcfbbf3ab67773587adf6f1c401542254
Date: Thu, 05 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770329033
