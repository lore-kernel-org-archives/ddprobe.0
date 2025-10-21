Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF6C35581C
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761067794; cv=none; b=gEaGiDaxpyENkZB2MY4xorhLXSayGcWJytz+kaLHNaBAa/mgnMKwIi8P8mr3grRbK7vigyr0XjKJFJoL4SgahzyOoru1gXEZknzZ3v9ztJnVbBUtm2++kQJyUTyboxsvvUp4dfCDnhPEVfZvvVEYNE+tgSgZbpgjc7GNqhVrJHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761067794; c=relaxed/simple;
	bh=m/rO9ESSMz3VoocengSuLWuXAW0A0Pf7GTNQ5KC5MS8=;
	h=To:Subject:From:Message-Id:Date; b=UZnNVx0ge7Ou0nizW1zTsKc9bFUQFed+hule4tb0DcYJlm230gc4leGe8G652mXYJfZ4xExVZ7QvYKzDFykNWWpMrpkiir2Dbj9Gi82xwbBBE+ZqDiji/uqcpqeaJP7BQnCFaOOdJdtkPzxejK/CXYbvQ0a9AwwjCr/8pZ7LoTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHIhFskF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHIhFskF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EFEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761067793;
	bh=m/rO9ESSMz3VoocengSuLWuXAW0A0Pf7GTNQ5KC5MS8=;
	h=To:Subject:From:Date:From;
	b=AHIhFskF8pZCQe9Ju8CffdxEI0QoCU5AbqkC0tLp4/ofwidndRjnvZjCO0UmRR0RY
	 lcz1PLKaqrftYSkWOHQN/ZqLL/edJmovFk01fPS93euiTZ6v4snsvDQ6laj1MB8Rgy
	 1xy30Pwe90FzKGFBcRSL3r8XSgtSWMHvAoKKZy/smQbqCstNVmUhOzq8sNDE6bmr72
	 oB+sa0N4/CLHEXud0Y7Q1V59owuAucMICHp1cbpKAS+msorFRjS11LUGN4xoiWVp08
	 SMgxnEeMF4zjqjGJFPIHRuJEUFWZIgkGo908fpPhUihG1VxUQMngs2DoL2VA5NAXyr
	 PE80vD5MU59eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE0CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106779358.12665.8259998810674050450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde20a03268f72410e79a2f2803ff9f2cb8ef949f119f5a0546ec99bec7b5d20
Date: Tue, 21 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761067793
