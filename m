Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A193916C456
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715091143; cv=none; b=nKHMXTcfiaj3E0Pl66DVFJfteqBuGD8UdBbtOyrvmiXh/3G3E+0Xtr4b+NqJG9B4tNZwqswPH5jRCN69qqSZCO8ZhogTwTFnmXd8StbYhtrqNpX+pBjPDdEQhtREXeQYRvb2ojPxf8ly34Zz+4bj5Cd2EpIhiBtedMiBSFnVKMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715091143; c=relaxed/simple;
	bh=VivHg4NeOzcRSEd14hC4k/yXJ6I/rLrfCgK4VBQltbQ=;
	h=To:Subject:From:Message-Id:Date; b=f+Qn5EeMEEF/RiRRL6GNRKuR1XWc0RidJ1hTJ/Twp/pIDHRAYZTZGiWa6QXRNmwggd4ldAg4712aRpFRBuqGER0ona71y+6dBU/ZEL9FD3Z3EPR4kU6mnadF4MOMKu0wq8hLb0i6NawB/ZAijRb4bmZJZS+gODtFWMysWGoq9N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtgmtOAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtgmtOAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1F9C3277B
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715091142;
	bh=VivHg4NeOzcRSEd14hC4k/yXJ6I/rLrfCgK4VBQltbQ=;
	h=To:Subject:From:Date:From;
	b=mtgmtOArfD55YLP3cCQ45D3hcwnB8xzIU+U73JmtnF5NZFzmxq0RPmhPEP3FehV1M
	 LUN6dP8fUHWKNzkIZKxUekY8F8Xa0vU62LJc0i48wMyGyzQIy7NPpMWUIGIyzaP5BM
	 cP9wjFqfObNT0ixBJPli1/SEP87R89BPYOuM7liuaKTEkKSCIhpcvcR1StArcS0u+V
	 Et2mwH50fpKs3anzzSVWehMcTUuHF2vm0EMwWOc2iRCAwl1pgUbsyBVTd4PmmY3Kig
	 4Bci6qG7KAF6hA+VCiC5L/UIK6mfPrbmENjLRdumr27C/7X8SMd36hhw/WKjBPrwWU
	 HmphJLkzXB6/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCC1C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171509114276.25221.7235248892267081762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c001eb4a328b6a9d8c0463ad01cf55fc598b303055d54701023e09117220be
Date: Tue, 07 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715091142
