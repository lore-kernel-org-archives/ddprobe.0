Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A5B217704
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767027834; cv=none; b=tYrmi990v+wEOQyGKUT/YB8ALXflCV2/pCnaDnWfCHXjON1SkV3aZ+cUagDZodof67xHpXSY/BBY1PqB9sWw3rFp0oWjPHcRgss89S5lZ7IHzt14MDAGk26qv5T7zVZ77RqXHTZTZsI1+qLIHjlO/AiMikkhvyjwGKlGH7VOa64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767027834; c=relaxed/simple;
	bh=2/D7s1ugooAoMCSrM6TQ3ZlnWU5MnLbMCebwqG4NdB0=;
	h=To:Subject:From:Message-Id:Date; b=Sc0hWTsM7pmiH9v8eusUCQsTMo+QM7CSd5lspX2QfhME+D1tTwBPHi8bn0JYFDWFF1Sl9puEHOXyY2UbMKbQNdYXkRw/hm/0c5O0kF0eQbFvMqiKrDBHDBV3uGOLZmT5pJRlU1I1TMxZMRdScCx7UuQs5gSuj9+BryTqSxRzCC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls3qsAUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls3qsAUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41DCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767027833;
	bh=2/D7s1ugooAoMCSrM6TQ3ZlnWU5MnLbMCebwqG4NdB0=;
	h=To:Subject:From:Date:From;
	b=Ls3qsAUTrr0m5S2ahhb1QcxlsbuR+uqC4pvrAADnD3wOgnpwA3ZE/qC/1Y60Vlmsw
	 SsonxX7K/2+CjMxYNNaqtYEApMUYFlMvZ0qMQC1UArTt75OomQRSZWL1ZzifwUifO8
	 0lxdp8sBSO5jYS4XGy9AtsfsUUHKmXdZXBJ0l9Xsq6SP5RE0PaWxtDmcA/uT89rtiT
	 0cwHGfcejUx0Yu8xjq1ukAJEUs3QsvuBAk1FPdGCXSVsS68PdIOZ4x73nHGtJ934/C
	 TyX67PzAwtLfUjFfmjiCMjO0p/5RncqFgzOud6nLcrsApy5oxnER26fjinIBK+6rY8
	 E1rxyoDMluJZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F2E92733
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702783365.19667.3688250213393614283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd7f50169711a460ef865da678a63869f141514f07bf7e1bb9f05ad6fb81107
Date: Mon, 29 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767027833
