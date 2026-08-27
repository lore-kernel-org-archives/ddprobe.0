Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F4B1A6836
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787865034; cv=none; b=MqfLgvMg2Ow6j/er7at/TLnJQOhTTDGqS+pgiH2862hjfw/pqUOlQccMaVRhAk/8bMGZvQ+lXLx7xF7DjwzQyhWTO/t0cFa5Ahtm6gOytS6OxjYn7KlSdVSp1eGEGpJFU5o7UiBIQTQ4lxWcWfHjw54Zj3JVxej+r4J9flUASbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787865034; c=relaxed/simple;
	bh=Zm1rF3IuYVicE1hkLtR7xRIjtc31w330BRDaB/eWtpQ=;
	h=To:Subject:From:Message-Id:Date; b=jv0aKWU7z+noLTfgsRWyQ4myQeYnn4YO4S7/LtkxINODVnQJOcebj6ar+mDEzAuV0qL0md039l0qX6FPwSUELbMfVByh4Oqqgetxfy040rUppYFfBNeDybY6GDdAE+R9H++u72IXlufpqSHPDHNkJo6wWaYxtdyysQ4uHVoH2kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw8XRzwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw8XRzwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5EEC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787865033;
	bh=Zm1rF3IuYVicE1hkLtR7xRIjtc31w330BRDaB/eWtpQ=;
	h=To:Subject:From:Date:From;
	b=gw8XRzwJ9a5kl/N66QKR9E/tSzX7w8WzkilaOlLmX0+OzuNTiK3SeZkRf1VAlkNM4
	 Pp6ztxIZvu0Vs43PCyVcZnOg2oYe/kCdPOcVulwtl2tXCI5tFwZGUsRNcZIHUQxnVf
	 ARJgTwfXp75kFDMwJfu6hGMs6l2qrFMNd+Xqd7IYoHyEEPtjc2kH6PEKmRvBrLv2L0
	 qMFtUdZA4pElUVw7zvyQDGtONlINXg3dOOFjtsEWtLqZ6PxuRe+qY+ywZUmO92hz1s
	 wr6fHdDdTmTpYxkFhNawoRtCfnzMhp6rbE9nrJX4KLGtPR+nzsNTCZSTtx5Dbrvep+
	 8GKvhNVTXC8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB6AC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786503369.25588.2612629074692315928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848ac27411473604fa29e2cf11b7a22035fc2eb472259150211554bb9d91a673
Date: Thu, 27 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787865033
