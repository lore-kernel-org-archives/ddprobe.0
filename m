Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562234279FE
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791367834; cv=none; b=OrL1l6dOMULCoxxUQQBThPgITVbjk9+bwPyMoGye2wNPncaGuqUWxk773jNYu3HrMjH33sP9zCd0Y516Aw0xUYPkojWYWgiz2R0wzmIbjHRVCkee3x57bKto+fxNi9Y5xhFnE7I/JQ31txhMRBomB/PPBXaVEeUsxYtuLR6fhyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791367834; c=relaxed/simple;
	bh=GtLLmG/IICOYpvIbg/qafPXztzx3Rj/8j9SYedQN0/A=;
	h=To:Subject:From:Message-Id:Date; b=gJAJlF58P6x07x17ZKmJqMVArlt5V2Ng+ZrQkz86PCYdTAFbcoNmXFjuQD27B70GYvet8BxIzq1SPcSt1cZmdGd7MWd58uO8yuSOIFjCA2HNt25KJRAdzPtmlre/on86OAVVdqNc2hwX35mypennIiRAgkhCqYKfyePYkg+Ii7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hx3kPJ9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hx3kPJ9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EB8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791367833;
	bh=GtLLmG/IICOYpvIbg/qafPXztzx3Rj/8j9SYedQN0/A=;
	h=To:Subject:From:Date:From;
	b=Hx3kPJ9rFPNWhRBPq5WJIBDrKClcjRoWABzgIlbg3duf8D4fxll1aJ/iO5AcT4nRF
	 GGdtijuYMI7d/EPAhMhCyMQleDRI/C2ET7oLTrGyzjdmpJMSbNDlpAX34sskhe1hKM
	 UPFf+2ptp/oEQoT7LUxpl8B6ZN0td1Whs6MDJziNGKTzVMOgF16grMAn0/06KOEgrs
	 bbJl8eHT5e6gHBihv8F5EHL4O34mi+5Y3Vb8Rz72QoNAUt98PrV7JhfmasyJqh2rLk
	 k/24CadnPL+hLHlRuIkmNmSxOKmSbWlH4EVyhL0UQUMQkd9jXYK72n7GKa1ivvIyur
	 pOmaOCZ+y/QgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA56ACA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136783369.4064.755503018764100444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f3526c6df55de29d1efa94a7b0b29d287bb2906478e4a338bc2add6862662c
Date: Wed, 07 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791367833
