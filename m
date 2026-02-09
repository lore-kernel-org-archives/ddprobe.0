Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A0F168BD
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770663234; cv=none; b=DosZyW3xy5AGWwBsH7IVx8pzPR+DeO/4SfEo04AJGjxUphVbrUWzMiuKFBNNMhITSqnqGtQYd/hemlQ0Xhe9HvKicxya0PMJBypdwYczQyony6dzUrn0i98UnMPG0Cq+o5qoe1W1ag38KNgDBIPC6bA/k1nl8qBm5K101vkIgYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770663234; c=relaxed/simple;
	bh=1ixvAEmJgJBxlsEo0jTp/pO1bNUNWSnIdsUXgsjbe+0=;
	h=To:Subject:From:Message-Id:Date; b=t4rCABUcXPzeZmbAGk8gr/5fSCZZF/LhWXKSGie9qAbE9QbbZXdb7k8+rL3hh5o0M6ZcRHDSCscRmr25HvaEq9iunW4NqoPcbruC4nujxjRL7sPuqer7D3nH3iWPkNrzTliFhtMMNiOFw+cT6EhgTgGVj6iLhLJDVK9NPnuSsOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiEn6Nxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiEn6Nxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F17C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770663233;
	bh=1ixvAEmJgJBxlsEo0jTp/pO1bNUNWSnIdsUXgsjbe+0=;
	h=To:Subject:From:Date:From;
	b=UiEn6NxprDGwkZjAXmNFcZCZ2JnmzYa6euUNLC8oVTJSF5TpbOO8Zyv57XYMX7h/s
	 wUpJVtQRdHNqxvj/MU3mJerBHW/DdRUoG/2yel9b6HkwNrwxd5pVwzB0nvlC4WCUNX
	 8AthQulkv8WV2dLdCz/wi759lLVeeTdrbBEQ4SVle6JB2eDjT0/xSkH3Vnt88hIYPP
	 r/1dSIYTmvmyYHhaw723lpbSxHdjQobaeiFezHBORRilEh8UjwqS9HSfOKBbOgHSe4
	 +CnfhGNE/Xch92P+KiA0jqgfXwarexxK0qHZNGu6HSs2AapgA4hcmp3sjSnoj4K3SO
	 So3UtvkwzdhWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0357E7E0D9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066323364.30600.8856504417186090659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfa51ac988389035354bbcefd169b0383ee702458881327d93971f198343c5c
Date: Mon, 09 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770663233
