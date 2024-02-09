Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004D44C80
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707449297; cv=none; b=dwqWjn/Pu6rHULnyI81mILdwceLdXU4oCC8LFMqQe7KSJLMu9Iyp9R6Wc0w5MWU9ncDNKkB14ScHEP+i1elAfNMLNkkCv46uWD+p2+D2tbV+7aowQzs/6EOXRY/A2eC8O+z3zTINiy26xeRJVQwnDql/fuUM7/kXsYgg21+3FCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707449297; c=relaxed/simple;
	bh=6nPnK8YcYisGAmjHbgI7tyZFxbnl7x0ZkWc6pwJ/sU8=;
	h=To:Subject:From:Message-Id:Date; b=Z6IpKqe6jTOn3FrDtlk1cEOZt5BBBHSlBDtUybGUfK7tgMYfboNBfZy6qNsxpR1E0pK0y4t3GPkFf3g/PAw5UWb9Nbj4oOYRbuvWQQurs1xTB3AuCu34ukD5oT06xbK06hl5yRBXG2fHOGpHBAmidGkmqtM9PtfXDF1B8CeR4iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNqqXo34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNqqXo34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A863C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707449296;
	bh=6nPnK8YcYisGAmjHbgI7tyZFxbnl7x0ZkWc6pwJ/sU8=;
	h=To:Subject:From:Date:From;
	b=lNqqXo34ZYL7/SEbpsnSgk1OB2McOb5rNgASKB5KgjMjLGqIW+0/Fb/fSqyvbd+3k
	 XRslsJcwrIwEmx2Uo2XZMPcaDKV8P+udEFIjfQUn256ExKNwih1AYjsukRD4iPBN8j
	 vlcU9s939J1C7/ILbY6US5GW757BSep5TVWD7RcdURT4Fnuv505f+MdhIqjIAIdzgU
	 GJpEmziq9YqLawupWJ3BAQ22p3b+gp0KSkosvnf9d9lq8TcClmVMDEvzNbSwJ7AL4W
	 jJD7vTmaaxTfcp4Ltyly87aQEC0VJM6FyDed413VV6TFW11aA7krW071pDpwaNEAeE
	 fV/wzV6CwP9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E27DC48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170744929637.16544.13673406221167081675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0addf13d856415c7ab9341a813004b72afae6ba4ceeb9b01e9af9e41fe700dbc
Date: Fri, 09 Feb 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707449296
