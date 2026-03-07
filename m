Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D8F1DED42
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772924094; cv=none; b=ettpnoJY19UYlU0NnGFxZMqm0BIINmsnnwOWVAuTTz0xeROXYy3TKOtFAOCiK75/0uEPD+eD4F9W6EeOQydm3AZ1h2XYEKMAoZ+Y4DZwwL04mtbyZ5wbgX7Ra0C5gJi+frrsMLKE7sn1CmgJy3wu2UDgqzVyX1pX8OmB6IKjD8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772924094; c=relaxed/simple;
	bh=amM40lvDm6ApH55deifc/CC6AjZgmM6YKFsqIAoQ4B4=;
	h=To:Subject:From:Message-Id:Date; b=D5hF2Slu/bpC4k+VZ4gvvITD4MiH3i1FFV3VWstL9mdn2FCYd22hSt7W6UfzJSV1rp+kfsmDsxcMS8zdnsEQF9TUkbLW46k5LOP8AZi149WU/zc3ECtyNFnnLu8HS1y2nd1L1uvjw3N51j5vuawM6hN+vkudrI9C8052YlvPrvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdOqEHOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdOqEHOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C9C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772924093;
	bh=amM40lvDm6ApH55deifc/CC6AjZgmM6YKFsqIAoQ4B4=;
	h=To:Subject:From:Date:From;
	b=hdOqEHOyXl0BQn1qklziIjOurFXXlZf9FKBzWoNMTfKL91fJOIBP/IGbEzP+bHkVi
	 s+ZmRh9rFZk+FpRkM2sLb2UV1GxzQCBUvQuNvpGkXAxrbwWsxzn3jBlX8wgaTQgxjk
	 kZ/G69njTuIgGKIgfWAZYCjxCd3U8BpRjyYAzTBNR/3gImA06wgnme1jWNmataLt6c
	 EGdIgR09VmD6+2NEh2ku9Asa3brmi7O4rvOKLj3v70GOKlAXM5ovgbK9cTRsxKCZUI
	 qQtqj3ESU15EU6BcMxFWbLMgaIqIEDr4ugoiOdrHh2HKySdAR7PCoYaLp+KosucIkK
	 1W3Cow8zzAChQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FAF5511B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292409357.7187.1356183076499113375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75547fa9ad44e79481df490869e4b94d11b3671a2ef5202c71cc484274dab4b
Date: Sat, 07 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772924093
