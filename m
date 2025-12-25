Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBD02DF146
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766655234; cv=none; b=qwtgL17dlDJ0d9jjPdFSIZsetTavhoE5i4yx+AA2EkzMYSFDpd558hjSPhbyPPjRE1tDMLMtPMTcWw2JlAt1m9YN8ySMd73xfpu0gTfPRlKkc/dFDxX5+p1F5hdzyuCRJD3UO++MoF15CTiLBUMliie6yw2Wjq+b5YqDVcRjC0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766655234; c=relaxed/simple;
	bh=PxZLeAKWN2n2BFQkhVz9f/R/7dTBfAX10CIO8Xoeoyo=;
	h=To:Subject:From:Message-Id:Date; b=HnWc51g+qokhbMfh0Of/QZ04asK4uou8uEnNR1QswnDXjvYOlpbh2jU/ZuMofnMlLTjo9jLIISHtwRH6kdJ0t/WsxNgv08JtQEKuoVOWS2jQOwGthD5lJFA16eK0YJOSZ2Nw8O/Dly3rmZBMoUzP5AYu+VwG+DioUk3RFWFYCH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NER2O7fT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NER2O7fT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8A2C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766655233;
	bh=PxZLeAKWN2n2BFQkhVz9f/R/7dTBfAX10CIO8Xoeoyo=;
	h=To:Subject:From:Date:From;
	b=NER2O7fTKJVR9WjxHNAXO2R+IL2rTqtyolhImoW46cWPtbdITHNp5S9Tu+/YPEQPy
	 iU3z6kXW8aSKVC+wJVpkk/nfF7CJ0F/slOcflPJyrUj1TUbL/fH0hvPixHtK2WSter
	 0hcH4jnFmZCRxkpXFJ/lTL76HE4BXRAepxeInlB5MaQv0/qx5Lt/7ol3+jWOew5WR1
	 q9mMItMvalxv2QrEMgc4A4Kt68WDGNRz9QGXwVs7OzywtkMnGW977DhD5lTVFCuS1I
	 UnwcIWP0dRiLLRc532IGS95BGayhP9IRde81DCpFLEzNpGb86dMuZP3cvQkVXyteFX
	 fkYArU096yQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C36EE7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665523363.18581.14392367801426641742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933873c3c780bf14c9fb569de36700ef956ada0d15fe47c709b5bf9918150298
Date: Thu, 25 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766655233
