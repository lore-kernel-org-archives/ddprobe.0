Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7D21F4C8B
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757135394; cv=none; b=Rv8Pn527rBYZw/jxwp6u8n4/4WzXnaBsmgn05coRAiIY2vlRvTLHUyDFnI7lCaUkVWJTFyQxNTyH0eP1NIRcim/wC2jubFlC1Uoev9GTcRbAalAmQE4+auxerXmM5lpdAAW8Ic53oqo3vrUVcIh7y6wb0yygq+wjpIBGARt1pwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757135394; c=relaxed/simple;
	bh=eloRS5Yj9rsLWoVado83HnZP+4YQgou5GG6wPit9qGY=;
	h=To:Subject:From:Message-Id:Date; b=WhRDDZT8P+GRLbCoICTHxebk6+7+9UyhM/fuRIydA8bn4UkyYTHQ+eSRnmhr8sQZWyGqk51ukAyWbFrYKM3Fvjrd8+EVIQRHHaVqa9Ebv7+pTQX0LZX982l3PmPzu8c9VjlVRvp9Ke3zkWJ0nOzbG2GFmfjAgIsbk2nvlPS9jOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btffXS2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btffXS2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3201C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757135393;
	bh=eloRS5Yj9rsLWoVado83HnZP+4YQgou5GG6wPit9qGY=;
	h=To:Subject:From:Date:From;
	b=btffXS2iSCuMb50EPWMg0DOJy6dxytQddTDplBllAlUUWpllsMbLDfqLE5ByfOOeu
	 fOhscEsHka/8tkpSzR/5YkdvS5u6n1CmZXXOEO016NAsSeR9yVhSsSLOvE+dbs8TzG
	 cWSFJonBYc7s9wvIhWh/zCXqH6yjGVRSUlWvVCBsGR1qDaehSiC0YkMaLuapuM4PwQ
	 WTk/3VdYtdND6X9RcoXjuUljhOPBTDLtrSfSmpbDaXl/t+XeJx0KZUl+dYTg1RtPJC
	 H1b1XnLFVNBmKMdiPe+i9I0tPp6oHE45gZtrGc4jQnOMkV+QIUTaHYc79m61maWjsk
	 7RulOeav6559A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E91CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713539357.6985.12453471454911627990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbe61d651bac8ddf5b3b5c739d20f4aadf9b59ae64262b99e0dbf1a874f4cfe
Date: Sat, 06 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757135393
