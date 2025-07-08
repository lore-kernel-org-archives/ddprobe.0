Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE553594C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751939994; cv=none; b=Zyq86NLMwTasTGWV1gBDBOEDHF0Op2jytTNRmELp/kbKaxiU4XpgmuLA92IQ7jZL2Bc7eqaL4ROPr2qBOaXD61eyQblNvqqxql/OAOy3otdJcwpd2kyJeSyAgWjRhqefzZYzGUe9dTaI7aGjWNmbijN8iuKAnpJrQMJvwQ+wCfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751939994; c=relaxed/simple;
	bh=hRH1zYqxmsce2G2BufLELnmm+rkeSC9OvPPagNaobDE=;
	h=To:Subject:From:Message-Id:Date; b=F87VdVGVi4iy9Y/al3pgRLmfftN+1saK0GH0GDo7IgUPACJKieUXAl2fBoXmoQy9rTlI+aZERh2nfi0i6y6z1I5Wfqeurv5A/JSbZXMWEdrmo0RYHBaWE0JnzHYS0MeI613jLUzkN/WppVOq3OuPSa0kXZB5ufy3oX+AnJPcctE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACm8upfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACm8upfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE7BC4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751939993;
	bh=hRH1zYqxmsce2G2BufLELnmm+rkeSC9OvPPagNaobDE=;
	h=To:Subject:From:Date:From;
	b=ACm8upfoJ/ntjvdH2MBtyYzbbY2PxqEiS1Ic7hOQMutrAV7AdrQnJREmaWtJHbIwF
	 lfkMJQW9L9sAOLkse9iHWNotOzi2GsYLIl5GuQHBaKIUAj/A3Xv+Fit7wtFoU1mMcL
	 BI2QL+yQ+3ugkodolTSdujXaLl6BHBNvY7AYn2pOjeMd5U69r7789Ha6rI8+JROq3w
	 wqYI7ftW7MEOuq+rc37lb6DfNdmiFO7LZw0FYujuOfhlhHHJGsCeOEC/oX9UOIsPAn
	 gm0iDMhc+dDcb2AQKTpXlbeh8+iWpgKdZUUPa1IEvYF7jK6dgiSSNAlhRP1vjVNAsw
	 uhHMtEcXyN6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57FC71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193999357.22683.17675435517513321697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55036c53e407534240d7ef2b0179b94104cd09eaa0dc473dd4d240aed21c99db
Date: Tue, 08 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751939993
