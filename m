Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABF03D905D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774601094; cv=none; b=MxG6oT6F9KkC0v6s10ZHiSQeJXazpaHGe39AD+dghZE15uV8f/kqSk0Y22WIfCyPXD7n5+TaUc2vSt1TE53K1cq/3pQs/ZHloWdqjL7THiLaYMHZlE0vmG5pIrkSfxitqJSY/ITCTE1jSy8Lofh6Gn+E4e9KCsDp00on24MfEE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774601094; c=relaxed/simple;
	bh=jqNekkhf0TugY0YITRctnT8b3YXePGhiCXH7Azk90Tg=;
	h=To:Subject:From:Message-Id:Date; b=BoLEXUBuOl8hFqdVKF9mHckRv5MZ5id4YsUD8PHcNVNblcsLdiS4qfetZ+7pTlQAcm2v/k0fc76qPkdNl3QG/2iNq+PjYrP3EGYiBDKg68srUEJA8lav7iZ3ipUCCxeCHF3voMEMjhTJilqsjEczKahUFAa8VscqDADGhXpgtBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DC5dyxzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DC5dyxzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12B7C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774601093;
	bh=jqNekkhf0TugY0YITRctnT8b3YXePGhiCXH7Azk90Tg=;
	h=To:Subject:From:Date:From;
	b=DC5dyxzMLTkrHmy2/sICeA1lxIyGkoJsfPXWTSqh8ASoJD7mxY5EastARvwhrd4JA
	 +OFcDph62bYHYIg02Manj+uoNBnv3z26/HNsRw9BUlsoT4sFCVJiFoVbKUk0eTyaet
	 Xt/wkETC2ETY8tlJX7olo1yFMOe15AmWIEhKTsBGss0Xo97oYJKNgHNC11B/fxXuPj
	 SY3OFG6YpigSSeRILK4oxLuLPISwOQZpqf23cBIdK/GOg0bAdO29PIWNwonsgP4kJe
	 2EvrHEOxKmkdWSgUem1M64ei4TyWqrCC0N8JmwELs8KL7Rbre84t65LMesR/1NKEFm
	 e2RMvIjLIVZtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A186510BA44F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460109364.11275.17887224620989389792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d292c7ab6b0bc9cbfe954727434210b60a5667d24b60fdc6bc914b7a82a7c3d
Date: Fri, 27 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774601093
