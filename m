Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F331E8320
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776586054; cv=none; b=fWG+FZMvSv11TcFyFf11cULTL3pIeSdYVImkgbwZEDJREsj08j/wW1Wz31ywZtoTyplTyJbXMkr/Grfg34cbu4pKBwIi7CwQn/OdHwlqRlm191GSZExH/MbWww5sRmT/OAp7MZtt/UEQ1zpek79vwOw+44qYvPDDtxNLdFWcn7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776586054; c=relaxed/simple;
	bh=fNG683M2uV35NoXKBy8eFhrUt0blZCmHcAxJGvvmZeM=;
	h=To:Subject:From:Message-Id:Date; b=Ife462cvkv7RXzkjH/coittnb5Oj9kJI88+8eqelXICmOqxXiH4JX2DkIvCywD/XhaD99TDZMrguzWEWcOVGDJcxqbu0hzLZ8KhAycBoKe3mAOQGbVra/mbiwt8W2RMY5m6ac+8eZknzUUc6DNWBXVJUaOGhJF/V7R88VYZfo+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsRArKRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsRArKRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49C4C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776586053;
	bh=fNG683M2uV35NoXKBy8eFhrUt0blZCmHcAxJGvvmZeM=;
	h=To:Subject:From:Date:From;
	b=CsRArKRDjAKuqvQ90tT6XxwpVM7yZ+Calb/m9q5Ms0ZKtgVz9Fd8+vubec/K4rNxR
	 pE1TXz0Yd+cqvEvB+P1pVntqs8cOAN+PkZYU1IW5HukRi8nJBFQzhzqjTSwi5tEKg5
	 HlhbRQ4nEPI9m12Axcj4O4gTS6f47Eox9VXq84Igji4HIfDXDiM08Rf00n8T7GP4KI
	 75+4tx9X+YWn7JfAhmx5StW4ArtH7zYq2zTubO22cSJXhwkmkVvJOmS6mf04c3c4/Z
	 +iekB32ksLcSJwcT4p6V354GBHMQaVuarD79qYubMYyxvaWjc/hIx9D1StrEH36lgG
	 IRJ4FftjudF5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF53BEA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658605368.12766.1445774310505005461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed449b13ecb835046b826b05f5b2c30ecb38a5051de40c719524f34d0236a49
Date: Sun, 19 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776586053
