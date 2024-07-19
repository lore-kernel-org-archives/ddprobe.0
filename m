Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959022AF11
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721382354; cv=none; b=ZqaSpCWUYCgJe8LKMGiDyWgBo5JACI7xyLL552TZbqvtazaDoJB+Ol00v1nFIDgpKITa5VSw0mZvH+u8fjdXK08O30exXvcmXqPp4thyuDr8ccEp49XfmwVesktYiExRH2FtY18bJXGf2T01LPLfss577CPPPASE2CUOhzO+qiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721382354; c=relaxed/simple;
	bh=0k/ZKmpxu9XScDc1AQ6rvMjTfL49oK99fs0OJ2xLCvc=;
	h=To:Subject:From:Message-Id:Date; b=iECX/6Ujsnpy91KQxkeKZQ9rx3BBfxVesioJoxRRhErVt2yXQ6+H/JDWeNXew5Almx4As3yzF0xgGCqSaP8tlT8xhWHF+kNbeATH8Gn2CM/iGLryQZAVJfzb5HemxemRzndzCt5vP+tt2V394AiY+QZrfCU2yfkYgHxudj5iXtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXeH1xkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXeH1xkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1411C4AF17
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721382353;
	bh=0k/ZKmpxu9XScDc1AQ6rvMjTfL49oK99fs0OJ2xLCvc=;
	h=To:Subject:From:Date:From;
	b=HXeH1xkt1+jq+GSAi6Zuk0gGLKQlkfnWTGwJtODsHcQauMOw6H34WWaldSwBPlAa/
	 I5UV/kHQiA8bW1a1yB1P/d9q5YD0/BrMbifIj2iKEzfqq2JhcaGjOjy7oq0zmwOO50
	 CRVdUdm3tXjHjUZSZ0DzBpMC7HQm8y/GPqDJd446z7XbsuXYYVOwF2F6v78LGwADxb
	 hBv3bUOBDDY+iDgtBgO7HSBicRk1Fb6EgpkITcQEn6++46lGY3pjhiffE99NH0RjX/
	 wBuOT49hJHkioxzrBZfdozX8FxvUWGjUX5C2jFeR7M9K1TtMWEoj9UG/EBwBgSR9tH
	 8Fu0dRng+8jIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9AEC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138235363.4554.13789735124821968582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232634d37ed742944a17c14ac14411a0aa33ddf267ece910a84322b429339b01
Date: Fri, 19 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721382353
