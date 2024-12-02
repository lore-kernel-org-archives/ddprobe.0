Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F681DF96B
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733180754; cv=none; b=YUuerADoABGkmZssB1OfvzmHHBZF52wrAvfGcZ+cZsrBtHuVXskzr3BGzbGU4diznnf91w0+2tx7t+p/e1jN/mRujE1a0m+ONuFyn2pKXNq+aew8fVm0dIEtL8KHhP3eopZNlxgqpatCdiXollx8r4/LXiZOYddK7/1Eh7LzXeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733180754; c=relaxed/simple;
	bh=a4bnYuT75EBAFIVb3O50kj76nlomaxWuF/I/o1UfotA=;
	h=To:Subject:From:Message-Id:Date; b=aRxa+GqsDBnL7l8hiEiN+pVzOhU10xVwIfcsBBYtYWRehQ1TBYwL7JIqbn7R3K2qvM1S36Uiff64wIiIZoWMK1sHdXqtFKmyPDKLkU0S2Spx2yU9livUMNX3nKWs3jtwxkLoMCxtroZ4Ps0n1VAr0C2r1FzYj/JL0rsXM8Aie0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STe8Cc7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STe8Cc7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1308C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733180753;
	bh=a4bnYuT75EBAFIVb3O50kj76nlomaxWuF/I/o1UfotA=;
	h=To:Subject:From:Date:From;
	b=STe8Cc7yD+rc041gwx8zDa36iHExbn5kQNuqfuaOeAovltq5FB4Bite+mDbnkIW35
	 /74OS2TfVHfLpZwssoSmmYwrvFAd3miHBazjbOOAx2D+5QDUEbfzTdk/Mrc+1x2cAV
	 5NjDAr/4j+iriB1Q9Shtm1F1GWVrc2f9ONV1mnTNCaWF9y/FOmvpNrFlkdjEVnmkcL
	 sF7QrYg5shNPMCLL2kPqsFwnaNmwcO2iUtHP+H7Xtgo/P522Uw6TccRYYtlhF6EP8C
	 FV6/YIA+MsyeUc3ba7VRHhyjxGrde4rdKQGGTHbG8klEPxoocCW9Xw6/Rr41nyPhWJ
	 wCFC52rq9loIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC95E69E9A
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318075360.2880.8712172987992066077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2f4b98fea242c2e776f0947918eaa0de61f369344ba1502350f8a33370d7a8
Date: Mon, 02 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733180753
