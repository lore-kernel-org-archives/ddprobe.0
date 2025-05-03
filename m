Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400A318E25
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746235194; cv=none; b=JynWhnWS7kw8UgoWGMv9I4d8b4A62Vvt4KWeOmQkEld+HtJ8TrUSPGRRv4fvYduXQpEG3jCZIAuRoJQJxPhqn0+IRe5MndfDOZyFAY2vQfCISfW2U0D8ETl7UBUNmIM71v6bpacSbPVQsk28S4mmWQxSbSYWNvyapVJWLPY1yDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746235194; c=relaxed/simple;
	bh=VhKlms9Rv0tUu5gC8JQTTvp8J1gOU9/VyuCX+rKp0uM=;
	h=To:Subject:From:Message-Id:Date; b=MWRzjE32R5jTCMVFA9Q72FTAICsobISp+CfYiR5JswqRhYRzIcO4hSqIGuFmd6Nq1VzJVqMZUVcNMCKKX/WdxmcCbJdZo1eX+/Ab/Zo2wPS3Yqp/QbRfgn9ZSUWtDC4WXlggrGsDCDJ38LlxzVk9sHu4zEXfidoUEYqQ02jqQN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dr28Y/4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr28Y/4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A281AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746235193;
	bh=VhKlms9Rv0tUu5gC8JQTTvp8J1gOU9/VyuCX+rKp0uM=;
	h=To:Subject:From:Date:From;
	b=dr28Y/4BsCDOM33L9XPQyW7jF+Fu/EDOUpIfRvHmT3vFL2WNSM5QJCGq/RRNnzwsF
	 lQ+gpDRZw1aCnpCCmu480TuaBRxVMqpnNeaekHxA9r7oNBvBpbkNK+r8ZELY6FNycB
	 PM25fIAm1BkO7emuORHR80MynFL87zTT53Fe/L/q6ckl1rYoGEjr2Vp09/jdJO6A1O
	 5+1dKk3bQuku6DgEBKCO5d0CCE2Wazwjke3xyvD2UF/gk1KyZ2m8tu8AuX1Te/32CM
	 daceJgCPH7C5EOjEsRGkpVhi+4IiUXeqBMKJjHdMBCc3apBMBGR0JO5NJD5sZHvGdQ
	 a9mjw+BKJUYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94423C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623519357.24667.11814044682010452657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414b0f5a15aabdac7c37b6e3b6389a5cd1f2660f18b584d81098622309a8bd35
Date: Sat, 03 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746235193
