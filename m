Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406EC14AD24
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732059954; cv=none; b=QLBxTWWlsVg7pDgdgWCec2l7EtZr/7xs4F4sPfvmXY0qh6LJJ+emJ+AokB3ue0mLtt95kWb2P0C/DpXXsOBR/WAQ0xTTZuKk/4ccfpRc11aZ8MfQAzGiHcyQSKRac/CrQPO8WGRuXEURn8F3yut9ZkATEC03OhQIEteWq3WNggA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732059954; c=relaxed/simple;
	bh=97bPiq89jAEic6kpIDlAABofSnBgZ3xH3azxMD0VKGQ=;
	h=To:Subject:From:Message-Id:Date; b=gjaRA2PLLsakM8t0sOqahxUnvi0zjUjl3EMvnye0qkRKr5QeydSq7NHpEcGHCERss7UoJhA0YTjGXKdm0Ifn+vOv3Nz7Mg0OZmCl9qsnLqqG1FB+g8lSNSVg3Yz9pYiFpgKVEXe1PK7e0vJ05RSfmCxEhkgAvsTBjau2ZhWE/Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ve2YsqJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ve2YsqJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3235C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732059953;
	bh=97bPiq89jAEic6kpIDlAABofSnBgZ3xH3azxMD0VKGQ=;
	h=To:Subject:From:Date:From;
	b=Ve2YsqJyI4quTDGemSEgRmhwmG2UZmlvb+GaKko3Ndd+w5GOWNUP7riVzZm6YLJoy
	 0Uo1jI953uY2bEDbaCByrsdzKfJaOpWyijUrs3N77BciJdjSVoey41g3PlHDXPCC6S
	 Xs8JLBV7pdALnMWshiyHGdq60OKZohmZQparGJsCTehIOUACLxb37Txe5/V789Jvxv
	 YLcupEU915HMHOUlfaCuh5bErKhgdu3HipnqunzeuZykEn3z0pH7MKio5QZyFztp+r
	 WlXdUqz3Xsyzg4CgTijXU1xNOVhEG1pqt50yb4M1YhJV2oXI3/VI82RDtqrxquA+i7
	 GoSTTm8JrP22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D68FD6C2AF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173205995363.16327.9188314994683348033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157bf1ceba9d1a7fee0df5906bb69cb11642afb56d4a19770b4ecddc25f62ccb
Date: Tue, 19 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732059953
