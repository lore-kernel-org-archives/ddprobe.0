Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EFB134BD
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718641103; cv=none; b=JhoXZd/d26D1ELIV+OqA6ces5hQKkSuzznlg9flmeYaPhI9nlJM6A+9brNQMhBd1Dcrh45/ogTN3ngs0c5qTz02RN6zze/AJYfjNfY+b/dcFH974z4+F8PZ/TnQlObxxqzgsVlRhDIZWwL/vM1oNzsCxVi51tL5eZfr+i5YEW/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718641103; c=relaxed/simple;
	bh=0Tb1cS8LtYpmdhAIQ7rxc5ibj0PxFNi46BeI6tn3t4c=;
	h=To:Subject:From:Message-Id:Date; b=hjnlAeXMMRE+9Z8881eDQYe+I4WXgU5vMkFcGavlNMj24fnsSOdwPJx8oqbaCZF5sU03JcIEJJNuXYLxTiV3MbFOMybWJUHyWiTfAwOJqk+5GBSjo2yDmEW7KZAz9ktaIW/UQDispQTX4Q0971bxw3Se6qffd3eCXcJhRPhDC3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCJdpjCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCJdpjCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD1BC3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718641102;
	bh=0Tb1cS8LtYpmdhAIQ7rxc5ibj0PxFNi46BeI6tn3t4c=;
	h=To:Subject:From:Date:From;
	b=BCJdpjCkPjJf9nqxPsCBQmLWg28pgaSJA+hTrEJT2wvTe9Ve80LrWhQM+p9XsLZ2g
	 v/QoC0jO7WWNfiSbJ42BP9NHwEHP2NGFjpjGyWnONb3e0bpUQb9Oh4YilYrInLG87V
	 QCNGxWVzL2H8Zfwwu25adRav8BQgKPRmt21DZOvL8fgXfZL8fUvtcTTRf4/fFWJsGA
	 6QLyqIwv9HfTJo/xi9hOq+o04gwg5iLMpmaFI8n8kjzmw5WMjdUThqYtxDv/PdSqrl
	 CO112Wlh87N/baUlqnWoSiKrUWrPWxj0BbOmcUDZsFUhvp5Xo8cvFMEZA/xRASMUUM
	 CbunNSAHEd0AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8692C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864110280.4228.13321355704506745580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645308b11601900ea58506df2c36a35684eff11315e6b54dd66522fc1a45ef30
Date: Mon, 17 Jun 2024 16:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718641102
