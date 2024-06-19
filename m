Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532A7F9E8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718840363; cv=none; b=cEccvhUkPg2jyIquCzIcz2MVFCtyPleQ5lp/2a6La3sNR5BnHgjQNYiVq06BCZB3cVrFmUNothnBZ9uzJuYCx1K1vh2t+l/v6X+ebtU1Ie5aFr26mH61ksVyEam23OLvn3SPk2pkCo+Q7mt+RpgD12BkN3VqTPVddVBLpKTC/O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718840363; c=relaxed/simple;
	bh=cH5yM8uHaKesRz/pEBc0ycKWdctXoysHiMJhL4JZZdk=;
	h=To:Subject:From:Message-Id:Date; b=Mzd9tyUnVAz1XFE8MVIaMYajKY2Mzl+0SiX9LdqErMrOa/JvBH/Gy7E8nZEYGw1AfZhMrItOy+9X9FSXvS3ZqFmsj/sRljp2NGiK1sHBSkqRr/n1PUglnbZMPnbzHQEynORDW0EWYyeB7AHXiaRbg6CzjMplhRnqSmoAjf3qv/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2kIH25x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2kIH25x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73C2C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718840362;
	bh=cH5yM8uHaKesRz/pEBc0ycKWdctXoysHiMJhL4JZZdk=;
	h=To:Subject:From:Date:From;
	b=Y2kIH25xQUAr0YKrsE+rvmY3MwdJIQVp0koi2L9xv49WjlrEmntCGML1katTiWl9x
	 zLhTOgeEY1fSp+jfvVV9BVU33Sr0JskGVn27wgcNwUpnEBbb9M0WDBHE/EylqzyYp/
	 dWpny+842SSSJYtkqRtniXpk3++9ErrmUshAVXtmCuix4qY3f/80QnwCO71zb1RfN+
	 zxCSddPuHrq9erMTXqTLT2xYscdIHIhYmNMZshCO4bm4SvUSEOvoREKIiOK7Sxw4RS
	 XTUOo69qPc+GiLIkuFM/MhGF2/zhXBw/lrOMmn/a3Y+XpxXx74+FAwFQWxSLb8mU0C
	 yJmPGOEpo3sjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D06C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884036276.8355.10617675304400979984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcad9c4d927aaf492857383cb1e15b4d27fe6b7b3df91b9dea2bed7631b1b51
Date: Wed, 19 Jun 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718840362
