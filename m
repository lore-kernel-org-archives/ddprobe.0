Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467962D23B6
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756183194; cv=none; b=hk2azTtQkxc89NzpRcJH1vPqdS62ihKugaSuScMCgMvsrCix1KeZkSp4fm5xhuAFL9cSoiWHuX+PzExgpczthGssambju7n+zThEbXiB4qcUB16IC7UVE9xEv3PCIjTUL+YrRk4GpexnGXxHReS3POZLF2nr1ZDrI26qnV5d2Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756183194; c=relaxed/simple;
	bh=I7IDUVa6HBYpSdr2CmJAI/7ufnhxH47IoKQQGdznMMM=;
	h=To:Subject:From:Message-Id:Date; b=Plq83+flaIZSdk+PANthNKvaNLcLewPHQLLeyk6jmmZXnushoH9epp3hgHijU/SzAqOnwm8nRlOzE4BJz7Puweahammu1PE1jkCE7oygEeNN6QqAi+UcRL51ZtHIhHoDVRWA49PcXcU9kyo8ivf1oSDUkTsTXYSIN1ebwtdh1pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utKeq9/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utKeq9/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBC8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756183193;
	bh=I7IDUVa6HBYpSdr2CmJAI/7ufnhxH47IoKQQGdznMMM=;
	h=To:Subject:From:Date:From;
	b=utKeq9/8JZKD8TGjgdrNbCDemaYgAlv3nmWIV/mB45SkjASbA6OmwmCDpbOCJS20E
	 6VRM1qlGojxICqkC9JYRDUmR090DvJa9kVADe8JPa5UdB2xGgSxO+fe5PJHTAB5uo+
	 96df1gfHT1EEhfQVxdh9j5XDy4EVZTI9e6drqYu57ti1h+h0/XHBnHogoQySlAcIpB
	 EcQuu1WOR/4XDW2e13lL7TUEkv9oBbzEaxKQZkKNl02OCJ9wvbVaFbvh2ZC4eEE3W5
	 r566OoZ8cbU/RBnT151ZDL7Crl3z/GxgecbLblCUtyoyiljgWPCEBxOo0v9r7waYqQ
	 noylIPibkvFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F934CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618319357.22016.15753022958763018737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d840762b5f2938f1482cd0afae7b959a6f7eaa04e09c269ed6d6853b0c35af79
Date: Tue, 26 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756183193
