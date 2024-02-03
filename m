Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0201363AE
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706924297; cv=none; b=pH4dPPKOGIkLojv7DVlrYyuvHpAeyAymaC7UIHaOq/HSO4rLpMB8pnzoyjhkrxKzW2NeEqCQ3Kjruk/lNya0qMO3qVKILsXD1erKXcOThuQiY6DhJhEdRA25AreF8VocB1KNbml0QC7Yn0VnRE/MWNAHTuZZxIkB/mxQWCJgixE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706924297; c=relaxed/simple;
	bh=RvrY2h2Ea8rzub9VtrsChURliU9LdxF80lcp6dzhNWE=;
	h=To:Subject:From:Message-Id:Date; b=k8iaub2QQbFAKeWkLAFNKIbxLPLdaDGBKVrAngsPz/pisnsxrB7dHkmSkFd2jSnnATN0IC+tV3MIwVCNMeHah90EtUd0LRUd3L5PE1mxZv5wFtdz0VbTtJ5GUorwmHF3Yp5MGPGox722BIkjyQIaGNBBG6vNwkCOatG/15RbPIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klv9v84I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klv9v84I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9F0C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706924296;
	bh=RvrY2h2Ea8rzub9VtrsChURliU9LdxF80lcp6dzhNWE=;
	h=To:Subject:From:Date:From;
	b=klv9v84IIjKdLegbEWzQ2Q4VPlSHfDzCxkbFVKy+5Dfn7XxwTBe4OJ+MfGyl9ERgh
	 UoXX+ULrIwsnUiLbjyd54WXLWa3pY6nx/IZzL4/Aisc9tiWnSuK6puI5ZLHlIMvXtm
	 ULAJIM2Z8OEXbS7Z4qqF6qATd45L9dPYpzEbCQZcgBGNulYbsy1htZGTFtZ5eYGZaA
	 gs0tM5/zPGpMiDETIoHQQoRDpApEJf4tRK6OdFVMu+FF9ATizEvvjNwVQ+22weaMJQ
	 38ASr+SZHuBrEkBagqK2LKvMElrY5bgbnlu8ke0WzXYiJH/N/U1NwCpcFZd9iKqw6r
	 fvQSemmb60Ixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631B9C48292
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170692429638.21164.11573145948136859930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411c14f73d3b03d5d7f63bea115e580565bee5faaa4aa5a039dfa3b0e3ce4452
Date: Sat, 03 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706924296
