Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA3F1373
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749320394; cv=none; b=DFrN12IJc9fFBR0b5Lq1/aznb/DB39bEH+hmnIc7/bFy2qrn/9G9IJOjc1Q3pwhNV9jcTMuOR89ngaCHNYtkoN3NVXuYeoe7vMG5P7ZM5xT1NPsc2kRbTs2rTq9eggjX6fOhhkfnz4IdMR9ybHlnw5kcVbVxd4CGkBS2qx4ge58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749320394; c=relaxed/simple;
	bh=bK1/LsQ/IL5PIyMAfe9TKiWlr/aG9EapALlM9qSyzas=;
	h=To:Subject:From:Message-Id:Date; b=a+guqnJ2LDmxEAaO8zLKKVlQcyfi2sKXb07m9+y91P27KbZsAFbQnJTwByA6by+bi3JFEWK66Fuq5FQ61Y706emQQ9bmRCvXjgoH2/gN+0Pyw/p9dm0ezux/tjXfB7DleG/cjyJTUZuXrCmat1Yh6RvTTpb0SFagC+c++3QjR/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcTHK4di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcTHK4di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749320393;
	bh=bK1/LsQ/IL5PIyMAfe9TKiWlr/aG9EapALlM9qSyzas=;
	h=To:Subject:From:Date:From;
	b=WcTHK4ditUKrSk/vpCy69N05pyJLi6mweXARUzifFelDzCngUYs7jg6qx6zKbaiQ5
	 gl2iwjdf1WDVUImAtZflgMN/KDzCidfqlPCTwICUHNFWyZE2LctusNw/+67I/d/059
	 ErJ0CyEGE+uKRMJQSrkFMJBDGAPASt2YsAStTafPikAZ5Ov8WQRZHHY2TrJF/eXFwK
	 0iv792aPxkgzrCmrCOd0HUHKH4lsQrYiij9mv1tmXFKL5jNT+5HH49ZUFOvU+KIXmv
	 76cPrfXwcIzHNn8yB+TucR7+GcENIqXsOgIjn9OioonAn8psAlp8REhZjP7D2BXMI4
	 EEXy6hU8cKk+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B94C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932039359.22913.3185929287059235080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e21fa9023ebc2b0f0c05382cb426897f64f2ff08459664a66d910497156942
Date: Sat, 07 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749320393
