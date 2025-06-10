Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C9223505B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749568194; cv=none; b=hSpVAO58CruoFlBej5t04F6MtEVf32voPE5wPY0tYBRBg5edctowwpgVI7pfpCE46YjGUvSVIPdT5TW6NWknDNtcT8GqSWDhrp73R/A9bXH/wJAzrHnTU8DJ76oudHq1DyydVhWma5P2xbKGlbJU7CKXpX8aclFapFZq8DaUSqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749568194; c=relaxed/simple;
	bh=+owajEoOz/77OXjKxCZw+gM4vugY/cNzgqWPlpPOMmo=;
	h=To:Subject:From:Message-Id:Date; b=OyHXeIdUI9GZFMLstZPVS98BkK3W0bXt2BbBtfu2lk7dLvEOQYBchNio9bkVBXK/FYUXivstOfBjdJSmmdpAtNUhpN45iw52MZH2vZeQchlb3X5OrSZ/7j15o+2wPRfRv4EHcpJbqUkaEH0SWX/Q1SXQj42sm+VpUB26GBkB2ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJWYsj1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJWYsj1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5297C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749568193;
	bh=+owajEoOz/77OXjKxCZw+gM4vugY/cNzgqWPlpPOMmo=;
	h=To:Subject:From:Date:From;
	b=GJWYsj1ZfOzmkTDAs8whmwAl06sKWEbJeoDUidJfVLHiQUaAjmdvmrdWeRwpGdRfZ
	 dwQVPqHqIAIo2HAkMbmWTYJNdm37nAjBm0oVlJ3y9yU4LKaNMbvj+3b9KummefdUHh
	 ufBk+Fg+h4SJ1UgyUwgXtuipUqU1joiWfbZcqSazRTBtIVNZ/obomDuIDrwAzaUdN1
	 C5lPhGz9ok9NqwQ7RQk92jtel6qZI8a1m6g+V7Roq499KphPBiVi5q3VAyS72u0SmN
	 KdIA+Synj+LlFlS9xERc7vUDdnNikOOk9RLBioVQEYgV/HWxV1/FeBOiYNjotpsk2e
	 gCZP9F8V7/SQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F804C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956819357.7827.15262178928003350780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a3a6cf60492ed2f154452b992fa4edb1cb54552e4ee0be4396cb19cca03b9a
Date: Tue, 10 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749568193
