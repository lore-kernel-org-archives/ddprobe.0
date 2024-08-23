Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8031586D3
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724426154; cv=none; b=RLJU5Gafj+EqwFtBTOqfRCIIIP3A3t6EJHEWbMRnhPgmOFFbL1BOoAwKFwKVuzFg/u8RHVIEjc9EO3ubulIEFGn26WDoJMf1+V4VMmSaotngpPOpTWQs0m6f6j3l0N6hsjm6HVaDhL5+k4+vvxOsqr6Hol7tN9FU53TZ6Ldd3rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724426154; c=relaxed/simple;
	bh=5nFz+KflCZrzMHsEvP3y0lP62xIdbRXJRj2XDeVn2es=;
	h=To:Subject:From:Message-Id:Date; b=tQbn5xI1VLo2RlNkJDjgOsfXRAUtLrnUhLLa2UizAcKJXwk2PJEIRsUCpSEbbk+UpEai1G6R9IZjvaeX57yTIHUhm3g9p7460fruCHvmtB51YJqocsUN89wpeXrot+JBRkGbIriwJZKnB4TnashvGMlmYZsdttv63BIgR4FCjBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0WGDF1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0WGDF1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88B1C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724426153;
	bh=5nFz+KflCZrzMHsEvP3y0lP62xIdbRXJRj2XDeVn2es=;
	h=To:Subject:From:Date:From;
	b=c0WGDF1YK6hVuS+gANl1Qh0zaAOx+kR72MDGXJOWEFUCuoRXkoVRCeN99HxQHuWKK
	 eIHJIYWRofBa2cNWrtdTtaGoPbO1grahWAjYF5P3Azm44X44nJ+5N+8B/pPTe3Zdem
	 7/H0yjM43PqO1tmhvDUlUHcye1QJX5cSG8lD/w+MklZUo27eTK6pdSUO1QcTpilU32
	 xKUeeEZg+QM6KYb3m/D7k+tCGDKr+14P6W297lWF10zkElPT6p1H6wmNP04PbfDl1e
	 XCu4QAuoi/v/dOrAeLDsc2lTtnevVLf/dA2RyQNKYZpBswLturljf9V+JnuX4e8uLA
	 Gv/8yybxx2ePg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DAEC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442615365.15546.1417553081847649656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc58d199dcc816e48a4cac7dbda294a488baf1f4f20c5dde7d07d2392ac7b8f
Date: Fri, 23 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724426153
