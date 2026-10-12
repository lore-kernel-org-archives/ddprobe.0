Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E85478E5B
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791807034; cv=none; b=LLrxpa4AvvfpLiMQ6/6oM/z0cZALyzJme8Bqtgtdn/uX9vUunAwSWQq4SpJ0/cOY4XPMVtU9iiJzngpBx4WjFnHqIcSmLi0WyBsbj3DXtuogP2DlKJmfZGia2wLQXITqZB89z1G0hrUhZM50DwpA6HIhN/ebTxQpUhCn527sUSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791807034; c=relaxed/simple;
	bh=ZPbasPL8oF74IFCfMlAGWk3Y8hlkuVY7uxV/0qUUIsc=;
	h=To:Subject:From:Message-Id:Date; b=sCZeJ/ATPEACH5WTRbZKtuyCTWm8F/q28WeFta+T31fq64dR1dsqjTD9iWaM2unUmoMAyZSP3YcTBBn3soUVbALYpumOrYmPnR9kgU2qj9nHfWPpF7hPBoX4fkGFKC75y3Ryzns52IYcIuhy0wDS6qfe8sSB+K8f6vuZB481mxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB3UJ5Cf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB3UJ5Cf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFEFC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791807033;
	bh=ZPbasPL8oF74IFCfMlAGWk3Y8hlkuVY7uxV/0qUUIsc=;
	h=To:Subject:From:Date:From;
	b=nB3UJ5CfXRrdoX6ulS6hCE/7aEM64VPpnAvWnX7YPO2FgmM+0Ufo07Sd08/LVrvFo
	 R1e+KZmSwEC0JSY0GFc++wytX9lQ4tiR2VL0r7bpHdA3piIfVKDtkqQPlGoQtxPCP1
	 M2qH3WmgL4gIv9+KUK6ab35ZkFTkwXXH15Rj4sumLH1Kkp0uNH7vU0u8CJ/AS4O1n/
	 H1sew7WBnB4xRWr2txikmiKpoAo64/yLYE0F4OlcXKvEexd6vOQ+Zy0m+fIwl5p/pn
	 yTDQxV7Lt0S785o1gGTXhdA1QyeBkVP8b82mKRtVhRkoMJ37ezqszfIinKjPtHRmWm
	 DlTXUh/qhewiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA8CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180703368.22817.16897080956170979847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ebad1a6b9045067af8018db2740d4bc50f682701b380f6b52bce4b8cfce899
Date: Mon, 12 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791807033
