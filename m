Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299C32BB13
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746586194; cv=none; b=FwRNGC8mG3EKPzqDIyqtZZHwYdX7N61/a8NcyeMK9pk9jM90GeX+px897G+dhjs2WIcj65d598AV4Oa/2ktCBP/UOjVyk/ywPCod+sETl8juymZaAx6fcrpKJBBr89F8adQgZyFJmi5mA/tUTdcf7mcGosBPTs3fPQ9a8KsdQjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746586194; c=relaxed/simple;
	bh=VRIH1Ox4DnU1VatOWm72wJ5pnG3OL2FKy4reG71yzxA=;
	h=To:Subject:From:Message-Id:Date; b=IhGq0dMtIsY11eGPgHjjqGSb99i6jA9l8ufcuagAaKUSInZnwyPWc0QRjsO0GEfVXcmKjfhy3E/GIbTW7mip1qN1rtWLImpwS+a3WQ0CrfnF0WdMZ37i/yHxSrSnPy2e489G4D8AjRykIyqtOIwLIssyF9Frtyw7ZHPX42Fz04Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8pzP7bQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8pzP7bQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0643C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746586193;
	bh=VRIH1Ox4DnU1VatOWm72wJ5pnG3OL2FKy4reG71yzxA=;
	h=To:Subject:From:Date:From;
	b=m8pzP7bQ1s0PR7u2ZeH9pMrLi7npCrpMOP5qkWhUGxkPizMXCb4zvLkTGiqfBjy4R
	 DEjVLEMJ5vCaeBNiA562u7aQLZo2nU8Fe1Wp4C6rok5Xl8kyZwd8x9YJ4Ir5JmAjt8
	 JimHzueo2nyI6SOWtpoH5uGbXZYMSDrwU9w6KmUqjR9FJwFtN11RfiHfBuD9HecR1I
	 ohwfq18QUpJtDSDazicCUXPFUgU7+4Zdh4uiiVDgChse0LWKOB7eGXcLlfVSCPA1wu
	 F8Azpqg5sUbBjk9toPDuZHAFZuKTAIVyAaVAlfzrfPTuRp/qPgFrR96RFl2unWrGSV
	 QN3sQMUOGEl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E019C3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658619357.12028.15898139088740196376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22268328282203056a184b5f4910a471d12795361003f4c6ba1a82e29ee8f3c8
Date: Wed, 07 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746586193
