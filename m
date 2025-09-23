Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AC4252900
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758591594; cv=none; b=synnv5SThqfs3BrxYj77xdRXJ3lYsgKTfPGv7dsJn905/CKMWVeOVkaH3QuClf3si2qtckx273G1hURjcQb4HCVXOPOWhkTB4jIWYbN+9kENIDLGH31UxhtO3rOx+wBmDtaHA3nLICr+BJjCTK4lHC/UHcaOwrIAwHZK18cIJK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758591594; c=relaxed/simple;
	bh=uCQvi+Lrff/VWJIbtG9ut6ZiuIzaBWAT+7w62dShwMY=;
	h=To:Subject:From:Message-Id:Date; b=fEDg7boufXH2rAXZD+kjFBu44WyutMkg4/1EpRCIIkaYB1IoBXYbym+5JBPB6t1F1qpaXHFaTHeV/HqLzRn5I+qMs6XMQa8LtGPvhRVhFD45oxwqgMkln5rVANMUtK50um9CKtxQcntFX6D6GxcAYyEgwkLXB7jXZtPFsewJc4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBsqnXql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBsqnXql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAE4C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758591593;
	bh=uCQvi+Lrff/VWJIbtG9ut6ZiuIzaBWAT+7w62dShwMY=;
	h=To:Subject:From:Date:From;
	b=hBsqnXqlOzL58YYjv+BPdBQ6Pi9z94Oz1LEDIiKAp/BxWgdhhgqidvfpkivn6k8zp
	 gPMNi8eAfn9TejO3toaCvX13GDxVdBODW4BAdAu+arFMNY31K4zibG/gnap8I3toS4
	 BABDDPt68uVAla29RFfpxpG4dQYxZQ8al5Ut7m4PHnWzh1HWtqhBAlybbmc61VV0Zm
	 XNNR/3YOIzfDdrk5dVdAgs3qbFnC4KAmVMTfgiaT9//pxk8nCTF3AJLVuGtWtJHoeA
	 CtOaCseyW+bhGDdu/2vt554xhDK/rMQwCzKQWalqv7PeL7ivQWyd85Qizpbb8aR2JY
	 Yhx+K5ssH1tKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED36CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859159357.10601.17544327936937879451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38ea5dc668578550e8115dcad30ad97e0b4db663092bf9d5b0d089d6ec1323c
Date: Tue, 23 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758591593
