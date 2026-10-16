Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C422222AC
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792132234; cv=none; b=mf22cYZn1BAYuQLbORRiP9kTS/3PIET2kBou0CoO1veF+S6CnJCgBX3gQPtbJZvkKjILUGZHKaZd9T+qaSR9sccMbCMdtzAdEK6Las+fusDwFBaOJHTlRnCKXJMA4B4EQlZjlFb9orvKu5yzHRL4e3/+x8rVMATr7upqNDH6U/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792132234; c=relaxed/simple;
	bh=qXZQqYOh4lOAJ9YmF1bjsX+VzXpsCfniNJwV4DcHvdU=;
	h=To:Subject:From:Message-Id:Date; b=N2NjpfPhsbEGZiotoBDfSZqIZBUAPH8K8sipFYHXPZn/VgKLs3IqLuMWwHxEgUrsPHA8zk5H39wXEIih0WSLEvRfNHaqXBAWNfHhRrRkXFsNiHAUHK0LuDPwiWoVKp7kyPJFSjRVtnJRdsWLnnhG5kTAhutlex4koVB8Tl9CXuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR3oeN1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR3oeN1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC23CC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792132233;
	bh=qXZQqYOh4lOAJ9YmF1bjsX+VzXpsCfniNJwV4DcHvdU=;
	h=To:Subject:From:Date:From;
	b=jR3oeN1+32k39k88GVM73l59d7Yy0oVBKkGsO75Acrdh00WURVwkQ359JnA3tnfXE
	 0NCSdlGUOEUdoDkuHfGGfsbWTsXMOFYrB9zw/SZGekHMbZhjoxou875QrW4LsFHmCY
	 gCdjSAfhEv1/J0gaOzwoqng4fmAq3WhsvK5OLTIaCz77pFPFT1yiBaissi7I9AFhN6
	 mp+9jzRDypkQnL2VCIIEpdFoVdCiNbNG7hksKUIm14Wh2LZozqVv/pOq4HLKMEJe5c
	 CnIzbJ0BomlORUzGbEq+NbeThKGfY+tBkKKzrrH8PtCPzcGrLntPZIwo9bp3asgeDn
	 bvfG9UhHn0MdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7C1CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213223369.28460.18197835597149176140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056923cb981fdb257139dbabaa9154d231c03171a82ab0615313626f1f49c442
Date: Fri, 16 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792132233
