Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7081CD2C
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746267594; cv=none; b=BmyHMZaAXKCtJrtvu08RZ8nGpH45UetCenZiO46xXeky/VbeWm/Tlfn7NEw7teSu4pSmPkM5FgHi0FkJ5AXnDebUjHXOCgnH6GejvGhA6BkFInyXNVwCx+1ArzfNDDJs7HABMc0xNBBRRrbxagBkLcPCMxZa5/OgmiULsoln+YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746267594; c=relaxed/simple;
	bh=W++18QmYJX4yl06JijzLE7a2Mlb0KvcVT2UMoej/hY8=;
	h=To:Subject:From:Message-Id:Date; b=mn1S9lyA1pSASzoZ1DUs3LhZGuk3DNG+Rom+qwOzjxamHxLhukAoprN50/+7yCORtlk8OOpmt+o4Rndn2oOFVywgmXOggdwnn0nTf6ieS1FtOqpSdWbd3Cf4hsRRtE1MxAU7ggs0QqZNj4NO4AFBkurxiIGGTXwx0rprQ22suBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAd285A6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAd285A6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E52C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746267593;
	bh=W++18QmYJX4yl06JijzLE7a2Mlb0KvcVT2UMoej/hY8=;
	h=To:Subject:From:Date:From;
	b=hAd285A6Pv0tkWGV7LfKMgUAZcMKkyxxQsvro8z25qMbbp8saalo78YGNZnpznaVn
	 iXsSUGE3LWGG4+RsjaPZ9wdSiH2g8lRVuuW1D0zpZDUN4nfmtpCcU7QQoerXILzLKx
	 ONsAPgo8wkFRozzMoASMM7FvSMD8JV6lqyeLsZwYnHF+BxjzuLIDwSdMeNEmJX+LiM
	 0/VP41c/QNoWRwnMtNPEqmXmmbhBIyiED8GMmymO7qbNaZeSTG2tLnqd3NsuHyvFF/
	 uAliOZmMia7kqU+YQPGWPvXJwZTZKYtrYpTNB5cinXwCr3dj08x4VIjRJadFAL3FWN
	 rbgFeBHtIpYfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91259C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626759357.31067.2262522588640371309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d5c10a8a4daf87512a7c290ee8a9f559383e9e5acfcf6b078cf83ae1bd18d1
Date: Sat, 03 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746267593
