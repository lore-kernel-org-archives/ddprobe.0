Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA1638FB0
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748486995; cv=none; b=sHRxA4HAf8POpchoVWyCYvJe3m1wbokRskX0ZUu88Ytylrk37DEFE9iQY88GnLsKDR90PCMQihUzQrzMT/xPSqEvGul1O+i16sIJrnrjMLSRrzuWPtIzgPGTixgo49Pe6q6x566jygCQZxf4fa5sZuuSRC5Q0/9WNE8p+vdUoz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748486995; c=relaxed/simple;
	bh=FxceqSHGulnELG6D1bLWjy9wua4IR/1Mdb6qXkksoxI=;
	h=To:Subject:From:Message-Id:Date; b=eCy3MvOwe3qWGBHx5IpJl4me8zjj58k3BkSqKLCDHbFGfvxg/YjCN60iU+iv2bVHBRHCtRhgRkx3T83xrPTDfPaK6UK+XCMDMop422Kezj8d6l3KWeNr7H8wOSiLMoRyPmhUp0KxB375M47l4AWJADsBBOO05D1ZpCZDsycFYp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZBz4naQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZBz4naQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4707C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748486993;
	bh=FxceqSHGulnELG6D1bLWjy9wua4IR/1Mdb6qXkksoxI=;
	h=To:Subject:From:Date:From;
	b=gZBz4naQO6rkQDryldwbd16jP7zCU3EV5YQqaJgop8LJuTGxQMnzA4aV6NYwC3Zy+
	 VUVSuGVvaPust+tNA9h8QREPRGxm4UI4gJ6oOhy9IMOrrfEvTkcBn22mjLaxSjVnB+
	 +qnMN4B68crgN1+fPVudQPLt6cOFeKrOKwv7K+BBUu+pnk29yL3+IaUutEhVtPsDkV
	 04Yk5nve0amZjk0TXDHWWs+97zAnQn/QjvlmVwIbFG9UyHP8bHysFOxFOhCohfi27W
	 18WLIIz/c36tyftgGO/eDwiilhG9IVeBvwjH1LjT9xruWVHS367ZB8cyD2prpya2fz
	 rXPDIAQKQuMFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F951C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848699358.20002.10270687046143777279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c20a649f2b1b43f3a248bfe68b58e507b0fbbbe8daf6522bebc3018b4f72ed6
Date: Thu, 29 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748486993
