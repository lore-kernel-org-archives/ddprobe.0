Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0492A23E32B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771102494; cv=none; b=YNycsCwEjsWt8zt7NoCrN2lm4gSJmdqVye5LgHR8CdFyqq+JCOcIWD+Ayo8zr51PHCbiIvmNMTOvc7PZjodZDNMYZd6KsagSSmK++7nEYrL2hnUAJ3u7+HAUICfUD7MlhuyIeJ9eoxgH/Psj6sos/+Xl95pzDMpddFL7TJ9BEkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771102494; c=relaxed/simple;
	bh=VHrXg6AOczvnDIO/HOC8Cle0GGAR9QAyI4bamJSssL8=;
	h=To:Subject:From:Message-Id:Date; b=olhG0l8/St3IJPAuqFClwkSUH5vkIyRjvy7EkRXD0Ou3dx3puA1WxmTQEO4AM4ltbEbjN+OSk1X51RWoY7sjeDvS/gNPTp/LJwq7cgsMBNtZi+xj4KGoCwL213LrO8qdwo/eVRsdRy7iZIPjRsy+TkEigqdMzl9LosGLM6yYTxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOYDE+eQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOYDE+eQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B784DC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771102493;
	bh=VHrXg6AOczvnDIO/HOC8Cle0GGAR9QAyI4bamJSssL8=;
	h=To:Subject:From:Date:From;
	b=XOYDE+eQVtEBRVB+Vwgqar69JK25yYL+R1sxuVvoHtf+nVzb4cQ0pE6MBUPbk13Kf
	 lDDFsoE/945vOGitNAWDzJti5nWvlNrwRruZoS18yLBLhocwbcCrN4DsPVeiPsCfAo
	 aKkMWcHuNMy6AB+StxIqH01Xz4vrpErBLJbL9fkONjWI1DiwP8Wd810UebtInDRrye
	 FMoxTvFfk5gllGi3DKEnyHnolDv2bz1jMGDbX2EWw81Jxep08ljRsPsovGnxTA0Xac
	 uQKohWjf0/xJwB07OIfvxn2a2WSELmcqAoZTeZbHVrAOosqNR+y5OmrdaUUk4UZTHq
	 E/PVD+K9MpkEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D669EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110249361.18767.15828288397828324461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5096d99e9e2dc02e5de2d786f86f9bce29d820aaa12e77f69307c56020951cc8
Date: Sat, 14 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771102493
