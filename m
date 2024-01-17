Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0695522EFE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705509497; cv=none; b=Ty0q9UKCLV/W3QU5bYPfESIzenPshgV/w5jDkCAo5cj0llVrR/MWLSzy7julMsuoWYMU4S1tfY2f9nP3r9wpPncGIXyMbQ02ZkyYEa5EOcuT6lPwMCBYViaZfccFHNtbTzY9MXvXeOi6g7Qi28PAjrz4kjrhztjJAxIvf6hJVxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705509497; c=relaxed/simple;
	bh=H4ra95jtw2SmZqEuXXU5JwYioeMf5fxH/AJMXpeIgzc=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=PQiT9dx4UCXSeJzLIFMekcmlxOHBnEaxB981pLfkhwY5sgJT4wvte5ez1+jXCUVnmCKNKAfBtvK7ORp59JeXJuCr0MezhFbkKuwa8/qO/JLyO7bNcVA/0GsSzz7oMGiXQ5KvkWRHJzMPtqnYCwSdDZXVLQTpVGkbTlDn+V5kwMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWz7ixYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWz7ixYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7B6C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705509496;
	bh=H4ra95jtw2SmZqEuXXU5JwYioeMf5fxH/AJMXpeIgzc=;
	h=To:Subject:From:Date:From;
	b=iWz7ixYyq9OBydMPjzeenssDGc4d0BIqf4yIsZ/x1T8nrCkHBP9voBJzjakBaq/qa
	 7Kqoo6nQmFaJhp0KRfdlbrKqsn+4mXtfIVloDC+KygPJNQnmrQ9qsNFw31qiM09AAL
	 eYAcbcr2U/q528hwHvNoqsUCG1cnbPGmxOUXxi/zzYOKp5RC7GRXAipDK8MWYs9QeP
	 EWtZuOEsoRc2E12k3BAjnuBFRk7CcsOdS2+2eNsZmYnzLbfaxjuqg2Y7LVVcUkqpf/
	 U2o+jThXkD0Y0lE/CZimuRnRBNBfb98XZXNZf8esL68muuAT2aFTX6PkT1jf1vM1RH
	 T4ele9Yo1i7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFF7C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550949638.20594.9540087578087526875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da59f0fe47e5bcb466bbd0e8c7338012bd8a9e55ff5499923a4dd1186382387f
Date: Wed, 17 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705509496
