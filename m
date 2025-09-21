Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E7E54652
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758489595; cv=none; b=bx8L5AKVD/nKUFLELtJdEnpZWQOZ4awiXK4o6crHhxu+ObE5TzICbKjMxjR7Nz+Iy9F89yK5YO2S0gA+krR7+jx6+x8fL8ckpu7ZTHhQHFIeqKjPDLlSmVxv4Sit5dz/yUKwIPU/zDiqwSKOih6MEoaAe6rrs50FNludHHR/Irc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758489595; c=relaxed/simple;
	bh=BPD8Oy27Gh5nVF1mpjoKxHc8yf8P554SxJr7J6J2N20=;
	h=To:Subject:From:Message-Id:Date; b=XtTn89g0GlX6gTNjhKnmvSzbvb3yuqY/FieP5uqY+269kU3zEV1MBGBZu+sKDYLoclD2tTGE5wDZrcpFd7d/4liUx//QYXFWqNno8F1DquzSbuttv/3nnLKeH+lf0kCLqmQ+XmqUT8XUC+DoXtGLOiPAFEo5CEInJxSuUCaAcFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkgMHgBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkgMHgBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758489593;
	bh=BPD8Oy27Gh5nVF1mpjoKxHc8yf8P554SxJr7J6J2N20=;
	h=To:Subject:From:Date:From;
	b=YkgMHgBO9dPTyaQaFDeaaptCIwYpeIIDlPxx9WLefX63RI2Uerel//pAVdhx4v7WT
	 zb9LS6f4u5oK23NKRe0wI3315DBPLAuyGE9d1caGfqFO6RK3l/c9Y2lVwwgsyvm4We
	 6J0t7n17XGpRq0o4zJI/kj1+Gjidp5SvjOf43EoTIn52KcILGS9yj9E85ajz6LNxhW
	 qPbCoUld+JH81m9oyQyAKp3cCID1/liIpMJ7Yg0qe+735ggwzv95ZJ13lh9WD/9qA9
	 4fIpt2GuJnCM14VCQJ0ht+AYv+/Fqk69+aQx5/dnRtOUBvoszwrI+E6kAThACSEg+f
	 ovPR43184m4iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B1ACAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848959358.7042.1440467174170100899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c51e89e5c00864a7de267eb9dbf1a7831a06a5673a25b6fe0ee232e139a3d8b
Date: Sun, 21 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758489593
