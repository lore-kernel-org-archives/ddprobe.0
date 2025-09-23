Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3A814EC73
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758641995; cv=none; b=i70nkI0MNwTTnG1Re/0Dnx0+kwx2B0MnufhWYKUtx82eUANR4OfCErfEryxxwNdRDn4og8u2zFeVHwlvt3THJ2mUSnX7BtVk/1pxxPAgyv7KxUhjhz7Ghq0E99KENPamJduT7IvZUmAhf3atHVuuHnpshUNnojwyTdQdxS7x+WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758641995; c=relaxed/simple;
	bh=RoY3l58nsAO4keR9ZNEwMiI9t1BiJEINIM0G/gLkGpo=;
	h=To:Subject:From:Message-Id:Date; b=LbIN8hj30UUHNE1MjaVbm09QVOXx97GYqaPPa8s9+O/hHfWw3cWND2H7i36dp/lWmKFrG0az6zUNpT5DrxARMkv5tpiMWby4O/hEge0HCaJHOAlpz4MSMtYbn3wpKVWZovwI1W3mkqGD5HzbdAprhgSIuGUuWj3r7q5qk9yPVjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egW7mnWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egW7mnWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5285C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758641993;
	bh=RoY3l58nsAO4keR9ZNEwMiI9t1BiJEINIM0G/gLkGpo=;
	h=To:Subject:From:Date:From;
	b=egW7mnWVvfT/+uX12ZYaheB4DdcDhiyVrQeqDkVSyfPMsGVQgCyZSqlbSAC2YvumT
	 nWyuEoY/u/GE7fav7X9UhGI1qAXxw2iwiuVqUSV1Td5Yl/E7Girqk1DnAtHTM/0hH8
	 mK6r/VpLOtBH5LW24EaCbTrCl8L2AaPEaRDBUZlWg5ZBMU5C22NTyT9PrY1slAqs78
	 bP4lab/Pkg0FN6RaWrbyCZjPzurjI2WwfOf8/4Exwnxr5/2yK7F0UkxCiqHvtNBIeV
	 NyG02CqVQTg/S2o0Xgk5rFzUDzEbyS//zmV89odzqsH7eiLUvWpNtBejcige91riny
	 KgtMbSIyKw+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9080CCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864199358.10528.1896711794181823807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7258180d35c4a95b9e81cb40b973c3cb0e017ae364dc0747c844140e6dad2485
Date: Tue, 23 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758641993
