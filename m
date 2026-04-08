Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7130010F1
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775606734; cv=none; b=i9Tlxn9sC4AnUDoHpAIV0rsJeuYHJHtCCEb/ROWA8SYxTzy8wTCh7WFxje3PY3TJPjP5dE3f3RHeYij0IHm9Rqc1vsKLGaFg1+Xk1jRL73DbWeXYvabkqvXvcezEdxhzDmwhkYhrPADM9npY8Ze6xHEPxDEoixK4AJBegBK16Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775606734; c=relaxed/simple;
	bh=98sGfLlRJQ41VaGHMMplIwGTLelt20AfxOd4MKpNwR4=;
	h=To:Subject:From:Message-Id:Date; b=BgsESs9OPQ1xcvRTFDozcBDXPeIsNe/x3i08DGoI1YdgsgFilaOH4FLljkl3MlsZxK0zGYYuihf50cqIXNeVohjN8fnnH9nBLrj4YePMsjReqWo+1BMH34gDa/TRM+NL4E7Oeg0r3xmNixJyS/CKL4XUEKe32rR3xLIvyp5EKzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI0bc3YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI0bc3YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A1C9C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775606734;
	bh=98sGfLlRJQ41VaGHMMplIwGTLelt20AfxOd4MKpNwR4=;
	h=To:Subject:From:Date:From;
	b=rI0bc3YJ9nrsZVBrEDoRTUj2o5ik0kZMY6z2eZvf4zbT+Q0o6bn9G2+ydnyUi9QLx
	 yWvGvHzkoL/7OoFOMQjEkqOg+/5BzBUFIrnYjccgO+wlm4qVHCFQ5i0U5N29n/pl1N
	 GmFlqpyMrDC2qZXUqxLJ7FEOJ+bRY0XOKL1+MG7JBXbjUQAvMPafbPu3rFqoXgvC9e
	 AyCzTCzTkC3QdAwQoDnloPEb+DMblYzgjhBSKbz1EX53CHgoH4Xfq/Nxq285/JLkij
	 7758h0U/no9gq+CqyOHi0gwRui/S6mcZj48SgCgiBC2Ufw3CKWVsWFeyeCt0OD0y4z
	 DIVtWoKUXHqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0168105D98A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560673384.17996.670610649114026014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea732aee2212e5c28a338adfb7050db02085146db3f153990c25cb1839e2f4aa
Date: Wed, 08 Apr 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775606733
