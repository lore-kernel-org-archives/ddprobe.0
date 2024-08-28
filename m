Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3714B64A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724815554; cv=none; b=UvAJDp7Jpc8Fjz8lVCdfUmRzXJtYGdc1CG3//CmTPZ6+0OmVm40B6tFGzTE93WVBJyZ5LfnErbzyN1djelApNT/3Ho4V5C8dGb873sXk8CtWNQ8jVfCjCTVC1OMl7GcUg4C8KiTvVsht30mG5p0NA51zS10QIsY3B/b2+uxcCIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724815554; c=relaxed/simple;
	bh=pcFXvxTsZA8wFaruzEVi0J4s6Mx64OgAOwx4IRYkBFM=;
	h=To:Subject:From:Message-Id:Date; b=szyZ96YxuL1/EBZA8ml7wTDk7Bgj3muPoCM1TaGkX0F4f2UibXwdCp+X+7P8JOMCGjgPDFt9vnwK2IWNDFXWiNwVZ0frLjbLudUK4dqzqdAwxxDsugscbhS7/3NLjwHCy57NGlrNagFMT8EdBmoqFkYKP/J2V6P/noz9NLHg5m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggEfFoKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggEfFoKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFA7C4DE09
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724815553;
	bh=pcFXvxTsZA8wFaruzEVi0J4s6Mx64OgAOwx4IRYkBFM=;
	h=To:Subject:From:Date:From;
	b=ggEfFoKA/W2MzonfxBSCn3JwvW0E+dJbo0Yn19oEZibj4qefRwYkyXKgKX827vzK9
	 QBzsgPJsnA+/ufJHQLUqXEm1DGqxsS2YuI2ec7NeRs9aKm5LB3/GEuiEoUn/rQm/v7
	 RVnva2ud2t9BsK9C3lvDy5a5fnHaKVzRVXpJrF13+vDMcCjXrYlTdR7IRV2V8ps9Pd
	 zQwiDUnDE+id+ZSHlYZvsYj0GumnJzwaZ5LZKLuXUItq6diR0L/8ogFnIyXp98ZwrT
	 yLm1sl/PYswrtYOG4GWeger/1hjKywQRUl7w2XKj0Nh9NKlXHRo4olGEIOFNSrgGaF
	 j4IKV66g+TaIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967BCC54749
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481555360.7921.14024832290744802373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5543b7a73c75e6c7d360b94f595ca6587d15e10f4527a4b050b0225f4b3757c
Date: Wed, 28 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724815553
