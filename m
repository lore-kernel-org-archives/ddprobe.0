Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB0E22A1E9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750406994; cv=none; b=H8EhI+4p7/Fk3/E3c3buGCFaWST/8Dh4xGIKJ2mwL/FDiXHrxpm0IIlKO1IQdq+ILR37Fx8sdu5qXOizgdUM+Aij7B89Z90UBAqIPydY3dhqBWCfKrQVAjWjUM1eCVuq+iB1uSfR5K7ft9ue4MzqX7N/O5wAF+7FPEJ1Rf2NKQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750406994; c=relaxed/simple;
	bh=OqAz8ppJHwDzqwdehfwLjOHAAlkWAmF8HTkldajAUCg=;
	h=To:Subject:From:Message-Id:Date; b=GiDJc5lZWTQx9L+dfJjx7Bn7mKrMSFjrtiqAoDXwjCHblAVVNE+3kL/JEQNOH+mPvH9K1ZvPbzBywtMeXjACV/HE01BPtQDM2AWnjKxfrYgGc5o6iioLrSvwYLzXJeTEfBfpM5Qct5MpRtMfuPHHNlfb6qmpb2U5HFZHztOAOEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulm91qdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulm91qdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3B9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750406993;
	bh=OqAz8ppJHwDzqwdehfwLjOHAAlkWAmF8HTkldajAUCg=;
	h=To:Subject:From:Date:From;
	b=ulm91qdhaV51hzhmC+s4ZrKO4EKcKoGU7IsJ4QN4K6g6V5jiR0guCKTKrke9MGpWy
	 9XQAxYyvK4cNm7RqFD3pTafMALPCm2slEQjDhcHD1F5Y7lIx77mVc8xZfVKjtdHJEb
	 cM+2YU2BZqTBaP8BHBvzIUMy9iiT9rIhwRLbH9+N7OyC+OOlaZ/wlhj/uC0hy8HMqW
	 YEsqgoaT+bSxh3+LN1XuKHg2E2DWBtVaal5s+mWedjzO/XAbOK1i4fDwfC6XRqOAW+
	 t3R1GZav+x7vBrA76ItkGpKuC2q1vTm0nZrJgE3VtcO4gG++qhGiBDp/k6vfMHx6xf
	 N/yeqUIEkZBPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E584C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040699357.26349.5005941190827880722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6fb1947eb420dd04ae7b3532d553b36ab1d4e4d357f3c4601f547d5a408b60
Date: Fri, 20 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750406993
