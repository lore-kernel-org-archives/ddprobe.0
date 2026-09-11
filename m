Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378E835E1AD
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789144234; cv=none; b=Q/g2xwbWN+RtT/C2K5o2QfdO2vlRUIreCGxWNct1ZJ2PvkiRiERep3XVL+QCZNnU/gxSM6uHGux0t/9w68B8AXMl9edr7Fs5KPeXMvuWUpUTrlZWpwKYPPpTeWJsV//ms+V/q6CKDzpQXHGSfP4mKylacTwo8XSnphweBkzK9fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789144234; c=relaxed/simple;
	bh=OvZhzcQeSFv/vxUbZVrRhU3kN7qnSlZRrT7YvsQ4oxs=;
	h=To:Subject:From:Message-Id:Date; b=lLdFeizELI0xeyOWppRro6c4y2z/pkW5NoqfG01w32FzbbnFFzIWWnt2aCmfOteWa4k+dakBwHBUX7gH0+Ux2ZlXm7gsOcAwBnlILG2xsZt6AcYIv26y8jFsPUkJC4pYYYpU7TXD19kaIiNy0l1cUsaMI4ir+EVO3rd4Z6D9qDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQPQhmwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQPQhmwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC179C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789144233;
	bh=OvZhzcQeSFv/vxUbZVrRhU3kN7qnSlZRrT7YvsQ4oxs=;
	h=To:Subject:From:Date:From;
	b=IQPQhmwUzOIqKpw5Y0bXTmX0iOTSo7k3IiPUkw04T+oEs4UqALaaRIsqgzo73HXKC
	 JiZpMWaCArgOJiLorn94orN6FFk0LLaRdfjm6SgKe9lwH8yOlh3nfqpAyxctan6/MK
	 VqfzmQBfV50TKyMmmJArRNlaRvZVvGkmNQ71AdHOOwkRhA1iXsEj+n86bIDieEvhm/
	 R9zWAOD7iZrEojOkgRtwp9ZFmIs/rTxrvDAZrv8Ey2SGtvEBrz1qi0+zLkoRIiH7yB
	 ZCpAwn2CeHlVO4aek7+99mPS6c4IryKUS2hRMTZ7fhHUg4T5O7CkOLQjGn5B+sSGPd
	 KqoDqeKMAlLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E00C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914423374.27017.18264259702970528259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff86af7ecfd9aac297f7819478d0ae19c2bcc273578cde2ecec2028948ca845
Date: Fri, 11 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789144233
