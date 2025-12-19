Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF771922F5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766105034; cv=none; b=i0+wmxis8L1WRMOd4aA6/OSF2SG9XL+TpHnNbLzLNvG0wPkiJgbsetdnLvHqLINxiJLinKXZYoKJtKjNMMbGxRngYkLR5NqdpnV0lGyfMrmoxbI7fQ5tgj8y5cEww4qEIYi4wTfkHo5LWnoGxbtgvCexVuoTHzLs5l9IoOgLAcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766105034; c=relaxed/simple;
	bh=w8kRQh5yGFY7s5tX07F1oLeg4QBkcrCBcb+oQtH32Is=;
	h=To:Subject:From:Message-Id:Date; b=ZCvvnOPw/AbSIBi14paaCqcHA/e42ZMt6/ysCDp7mMqucDaVrHXYbglA88EG4wRpEuMJoneKBytrqyCngRyRwv5kH+Jjc7L0h/9N/LEAVVhqPHDElzszu303FsJzwahMKeqLhzJLmPsg+a+dKyGmne/zuR7ua2FLlqYsqFDPJfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad66Zy7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad66Zy7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054EC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766105033;
	bh=w8kRQh5yGFY7s5tX07F1oLeg4QBkcrCBcb+oQtH32Is=;
	h=To:Subject:From:Date:From;
	b=Ad66Zy7D3ddxwDFgum87kLBgAmSdV3sxJBFfar/0D/PO0t8nfRG2U+YmyWarIo35n
	 YX+4/2Ic0LKXIRGbCdZ+yB2BSk8shG35CRlM32M2uhe0dz1kNazY2FCF+zC1h6XINM
	 tp+DbYLBb8NBJ7xdWVA0TH//Pr6k6UFL+JQPSzWwIm46SyS1cY1rlG9fL95KGQZR63
	 MlOATJh19RpLCpcOlYycdZmHriNLQNAHlLQHhw9YQZl/WTeZDx0oJStcbD1E0ubF5Q
	 3QxUTQydogm6bCfRrEAJUcNjN24+WHKzFrlJenWAUPwwo2yyEWMVdXvJxIFmAm/WHv
	 SYtFYdinUaqOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91899D711CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610503358.10017.6643741044020824057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1becf78eb2d7c4cc74ea00eb0a111005ea303b69b78461ec9f31ee8c47b033
Date: Fri, 19 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766105033
