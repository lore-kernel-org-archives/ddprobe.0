Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADF21E500C
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757363994; cv=none; b=r+RD2xNKMnaD6hNSpPCaElvkm3WItDKzPuua7vjqi/VNnQSbvc5iEwvSnZuVlYsqufl6fAvgw3a11s32EvutXcE4xJuZWzZWukXkf8ESaOFSik+8K1iYnsdD8R04E1QUGwuheODlLCbeEFPyrOR3BSA24bSctS1Ma7OKbYKZNA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757363994; c=relaxed/simple;
	bh=CpPmlLf7PFifqYKUzg9IiMHEUE8g8oUW6UwJhVk7+20=;
	h=To:Subject:From:Message-Id:Date; b=RfwP02phGRwxofS9RR5GjkWzJO5lIafN9BE3O3Y5s4Rjq8ldQc6ibdlQOitp9ig6xvnTbtNQMsze2xaB066R1GYZAWfqhn+kKtbgfANJ2t5Sx6JpuonC8Y08am9mLZrFjTVVmfEdxb20Ak6X26a3b/9OAsXQbnhf3Xug/gL8Sb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL2gdgHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL2gdgHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEDBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757363993;
	bh=CpPmlLf7PFifqYKUzg9IiMHEUE8g8oUW6UwJhVk7+20=;
	h=To:Subject:From:Date:From;
	b=NL2gdgHCtRYyjqan69Uo+QMPbyRd3uQTKdwXoFygBLGds/HXbfNORHUaOdg9tQZtN
	 DMrqmE9+D9iO1hudarU5JKJJhpHsWGqTxofjhePiWQe46F9esoCpwR2Wc8NsAl+UVE
	 JT4qmurFLNidp7NfA9YEwONbvL/8R52o2ZKDtgodQAvNdd1ywv6eYxHnvIkBFemxxY
	 sUe/nsEu3FZ8saj2i1db6JIHadMQTwiDRB2RYiW9JffNVrRwDo8jixtjUa6O/NVcuP
	 i6cgfyVWeEBuErUHORBY/PhStQvfyaLnyP1mh2xfR5Laj45F+4M38ejfyFn57UV00O
	 lgNVV40U8YSiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F550CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736399357.26316.17642404766660169582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9c0b48e07d776dc12f95ca2d892f9c0dc9f9ef70438466198136ea5022dd58
Date: Mon, 08 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757363993
