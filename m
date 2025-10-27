Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E41624503B
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761541194; cv=none; b=hNK3KrzRXXGFDPEPSMq784u272ZpvZaiQpZgmBSVx3ZnwoJOg4LHedc3DQwtQaoGsKYM5BWiVMrbgxpNJba28ITKKZ9yFGcaB95cDqkq3Poj8MJUYOKgMoAGmdsmD71DBoIZTihi7Lnj2Jkkb7U58IhoKQuGcRJCFS99bjgTScI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761541194; c=relaxed/simple;
	bh=TWeZEdg8irVPs2O4vn1GdBEB9lhfbYD+ZMwwctsNlT8=;
	h=To:Subject:From:Message-Id:Date; b=L2TeU90N3m2dqATdxrthpxhkxwXK33jzKK3xiQaNF/9HjZ+SqeUqayOwTtCLwWmrosITeoF8PqhLHA32JIL73hw9U29XXlmsOveslZOaMaQ6n8MzKkI87Bn0/JYcmt/M+CaWVaDsFX7Hqp6hV6N0lhnvMDdS73w6SrV9IieV7WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYjusrWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYjusrWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06D3C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761541193;
	bh=TWeZEdg8irVPs2O4vn1GdBEB9lhfbYD+ZMwwctsNlT8=;
	h=To:Subject:From:Date:From;
	b=oYjusrWM1QpKBhn9EK5eCunAu7CopIjjxtYlP4ov6XaE6MbkDiimLVUbSllWpPGAm
	 Hi196jI9h68MIL9oiJB95wF9+5fMaLqxkmnm58dJaEt+e42Z1/Zun9rrGE7l9WSb7h
	 0lknGT9nvfFJbzsgT6QQpdpXBbxa8Ng7RKoJ33S4RBdtoWC61Mnd3nYYkWyEAALb7k
	 +wDUXq45LRpybzVFXnM8YfVF3mEkos3cU20tVFZU2EwxDIk9UaFRbN+K3DNT7D8P2Q
	 Et7pPn/vWZGuH+V2HxzXT0cTK/ZGVRYaebXRezMBmss0JBwd6lIvQf4AMKrniLaLFl
	 1F/83ANR4TT0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DBCCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154119367.10101.522172433875614453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da91dd410657babef6bfa5ab6d041c83261489969f40b4748b0703854efc3f03
Date: Mon, 27 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761541193
