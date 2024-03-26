Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BD01C2A8
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711472897; cv=none; b=pUop9WJmisu/BFSwmxoDcpjYyf/JfP4Vhvqocb6V/Ai37bqY84230PqvSAtLS6IEVrpOZppspLTzWQdcBXYPiuPbrWQSIkzSO/RwpZigezdls0KFy0Kgq/MTw+JihY7qSzUM6zNWlSPhgNMSKn/FdGeVM0eS+Z3p4KW7KzZUERE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711472897; c=relaxed/simple;
	bh=YBk3yJi7NIgBqfsy42fLv8obgtCReEToYbPnRJOAdYw=;
	h=To:Subject:From:Message-Id:Date; b=LtXlVggDAVia/XgWzYskoSOrZCAtN6GL7qDvpMoHWhzvacWwbKkpDrJvSKPdzBtQWihGdJ5lkHgAUxJoH2EaUtOnjsiP82rfElN+RflwSJ+6w5udoRomba3My/COpKNc7nrblCHtjG5zPoAuSc4JzBxJ/j3sVEamamfpti3IBdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOuzjIQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOuzjIQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8038CC433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711472896;
	bh=YBk3yJi7NIgBqfsy42fLv8obgtCReEToYbPnRJOAdYw=;
	h=To:Subject:From:Date:From;
	b=IOuzjIQtUGSVvVUpqGzEVx3V0P87Yv5V8YC0Tbyeqz74DOVf2cCVeZ+g2JBi9FGiR
	 QaXr96IiL6I/v01vw67fr1Axj4AIbXTr12IpqsnuNYAIERDhlIM7C+uSQY5l+4Mkv/
	 kS06ivZYirjFSuDOA7Q2sUhqQQnO86GS2Spf07QY9R2ng76uXoxvZ+9vhMZ7ZcOyDW
	 WELM+qQtlmyFXMjqkpn/RBT6TB6azRGa3V9DmrWzxMkvGDeSrwB54e8Y9K1MR2i25i
	 +V3hsXjuN5BoydnNdw2D4z7v38OMkqCIXwed7qrMVi6snwDN202ZO3fjp5NYFtNE77
	 0Lxe+hhrKWXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666CAC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171147289640.2690.9403638556200202154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4784f101bc560778bfeb32ce701be6e08406c8a8a8326679582293a320aa23a
Date: Tue, 26 Mar 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711472896
