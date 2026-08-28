Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDD43E51FC
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787905234; cv=none; b=dtZkiwZ951AN7Yvkr+GCjH874DsR5syf/tEhR/Y1Gz6GWWDDveHs93uPJe01953o3tPJVFozUj7LW2f/4UB+9IBVKHzrvYZb3eG4GOas6P1bGYquqSIXdQYjF/tPkLXn8gEuEirYiGQ+5o9gwlF2I6CN/dbFPMM8iwVrpvIpStE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787905234; c=relaxed/simple;
	bh=B3tEYpPfW7R93ymAa5/Csf2Mn9MCD+BzI0Q8UNYrLVE=;
	h=To:Subject:From:Message-Id:Date; b=TsCE+6SJL+dKHA+giR+3oC7kZEeGXJfLgAJoBGL9Mj9LEa+nUtP+TihAh+EOctoEqqB8G61Ffc7jrf60noHp/ojsLLC/TwpyhXgjzWzHH3/RBIQsYH1sWQqRXBowuOHPdv9eSpXbEIINrM3A7JFlweP2u8Bh3lQRDPnGd4EkJ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9kqQcxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9kqQcxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F0BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787905233;
	bh=B3tEYpPfW7R93ymAa5/Csf2Mn9MCD+BzI0Q8UNYrLVE=;
	h=To:Subject:From:Date:From;
	b=T9kqQcxxlOoea8vvDrR3JviqBAzKdhB1aeqBxxNgNlxI3VWi88kN0jEaS4eroy/3Q
	 nAeV4SZine27+PKdJafFmlzuGd7yqbDCff/z2c2i3KoGoTD1L6sBTA8wiNcu+iGVUy
	 NN1ria35eDGkmrLcEhPxdwuHBiaojVHWgbRfVoB9/sDr8MccYZWH84ufC7s23WSuKa
	 xcmQKOLQ6a0G3WQOt2n9XF7+KIdcLMAwbgHCmgtUm9jJjNZ/UR1g0m11ucZ3X7sHf2
	 eKpLhFyIc8wh60R/7jYBXJAlj+v63lU7AsIcuAQxOj5MshIl8lJ0GZE0NOueTTpt7+
	 q6DBVpcBkLrKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB96C61DC6
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790523370.22389.3392716137434937168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eaba25426070e62eb91b8f72965eac6347e1cfc1f0a9da4bfbac156e3f4b5df
Date: Fri, 28 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787905233
