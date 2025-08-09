Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F95CC2FB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754705394; cv=none; b=qsyI8DUlVQp4UXQ0fE4BFkhtZDbW7QiFjrSulZrDVRP/l0Tf4fDQYrEJcf4BkMHres2X/Cc1o4HGZ+0dFaSn1abbo18zEaIMFOmzoIkFgJApHBxUFKO2UtgVe3bBPrRb1qCLPODo539Jp+4xgEhs/1gIhKzfICErRuCEXY2kohQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754705394; c=relaxed/simple;
	bh=pasWj4Bode0DvlVE3nO4yiAB+fHk4Tzod8aNHfdUIrQ=;
	h=To:Subject:From:Message-Id:Date; b=FQ/VfK7qc1lOctte/6DO6fbYrBwgEntvHKSJKi4UwXykOBkCf1yVNcuLgzo3NBGExAHvA9r1eS8OFoSeuxzexQluWjzyHfONfcksyfm6j41T4zo+Q/tgzOKiEhK+fGvhwZuj9ErxS+lwsc7MXYeAsEnGSyelz6rCVf72WMYFI3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQhiErTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQhiErTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F2EC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754705393;
	bh=pasWj4Bode0DvlVE3nO4yiAB+fHk4Tzod8aNHfdUIrQ=;
	h=To:Subject:From:Date:From;
	b=dQhiErTmzueOub/+L5wk8Ij4pOm4PS1YKicyWeLrIqz2E5VWDF0zs3ZSEJwErCi3J
	 yXDTHAaOOK+3BJjLmCvSEQtc7pB8WSlgGgK73Y8EoEgOo529JtXfFjsB+SV0zW9dze
	 ciozix1OCtVDA1CMETG6uJyjNk+x3tAOKdlQtOe53ywAvXYSVDqP+rpVOioSEpzk1O
	 VdOu3yMnndtoSxXpaefMNZpsGQ2Ay3TB2a3b5KoeQzDcl31Ed47yQdl0QEu9cZuzpk
	 0GXUblJGTBA2VBU2IOroBZib20/WPG0rC0X1XvRvR07LTkSb4+JjO1TciT/DVEwwGv
	 OICXNnrzXmbHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D1C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470539357.2287.13454221356243891751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e26a69d33167379053eac7be6053d1000df10b76c05cb94d25e5cbc56da52bf
Date: Sat, 09 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754705393
