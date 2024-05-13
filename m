Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6FF83CD3
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715637143; cv=none; b=pnp3MrJZlD5NlhV3OCCkj9RElmFm3gaD9Q5C/my+TpFs4lZBgRHqtIUJRyZ+4DZPi38bRk0uv2wLJZyjX9U8IJt/12qjtMxT5RUiRJOIIXL8vfZEbznusL6h9bCmCyGs+Q0kPH2OUA8AL+i8m09DdwxeYrerC22IUNBWagk2mks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715637143; c=relaxed/simple;
	bh=sISexBPjpTBcKrF7xk1z+0us6GO0qAp0AVen8G492KI=;
	h=To:Subject:From:Message-Id:Date; b=KajFeuHgKTFkDx/LKK6bAKmVk7AtEGP64TPYs0j/awpcwBxp8zMZxror3KI1ysg/FOM5Ne6wvQ5YRBGjqqEtOVc1XVN6KDQStfXesuwWNxXwxvqgGkgftUuj/kt+npUMI8mhzjCXhUa3MY3CIrQ3CFZ90gF/JwJv6lvjgzpbnTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2zL+kuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2zL+kuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA35BC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715637142;
	bh=sISexBPjpTBcKrF7xk1z+0us6GO0qAp0AVen8G492KI=;
	h=To:Subject:From:Date:From;
	b=e2zL+kuopacEL+7ALjHDU9qsN2kSTBd33RiS9veYRNic8Imfk3UqshDIAtoxNLPgB
	 CVzo5Joq+25J7I4PueENksyptB20CcYyqpID17HI//fSO1gQJyNuAqQMoeD8T4h7SW
	 sjad0L0ZlLry/t3DzbzM9xXRQxXzxEAll25weBXZdfVXJuz80saKiXiNCc7aKOdoFt
	 wV2gAcEmpaqr+3FWadcm9owDP2sHwhCXSbNDskgK4pqJj2Mt8O+PClbHdeeoAostLS
	 9yD/UOOfCoit0/lFvHnxCG56phLeDt93GFYSWR+dRXKGolF+hCL2Gsvq+VdGblDvq1
	 Ka2v37HSMdpnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0D8C25B79
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563714276.10204.251176487761813412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a1720adad14d7afc2df4aa88fbdea54ae6848dd9603d06a2048f1d67495ade
Date: Mon, 13 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715637142
