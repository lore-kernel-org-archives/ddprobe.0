Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EBF20127A
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744265994; cv=none; b=jW0xL17rfHDqGjFtZk048uzCQrOmG8fqNDskN3oxdngCfymIfJ1kzpsAbxix/AZTI7SxefHuigq8+al6IQf6HXEhw8GthKrd78v5XpNjAN8mg25XhhBl9PKfYewK7R0Jzqm1G4Hzz5PGLDIKckw468BopLirbRnFC5os4nSLw/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744265994; c=relaxed/simple;
	bh=nH5odNXZY4XiRYIIYlOz/VnC9p/9iF+TF/MVUme6TqU=;
	h=To:Subject:From:Message-Id:Date; b=jJYyO9YWF4JXLgfOKKnYNNo27667OORclk0x3V5OYMA4STu5nbhvawGDslSShZJszw3Yh+3Ci0lQpd9FMJb74jszm79cOP3zPh67hAhO9fwDx/+HY5BrC9auizk2dRJdLy2mn+y1tYN41SowKRDaBC7Ybur/cRejDP9iHN8Osx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDaDHAJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDaDHAJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96A7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744265993;
	bh=nH5odNXZY4XiRYIIYlOz/VnC9p/9iF+TF/MVUme6TqU=;
	h=To:Subject:From:Date:From;
	b=XDaDHAJnrg2g397ZoyyeFnBT7Foi7icTkq50Y7ehb8w+bK2fAroeRn3xEJfJ0kWsv
	 9WVClknlSarLwaTqVK0OZ+1cZub0Qy7IAf1YWK7RV0D1gGtuD7/NcY8R4FA+8lL5es
	 fJkMoRFmYpkAndnB9B0v914fFblGyLJv0EvdCoXTKx7uLfXToVGytjDXoFyJubcsBP
	 +rFzYsBRE6KYXeY6tjiFAxsDDOGHXEm185FUAvmrwdKmPYzhoxRxM1puE6M9rTWhZu
	 DtqH1U+7tKh4dD+pSZqLtutmfA+sY74iRihcSJrrfwJPNUzcoZ3eNXzEpMXvi8ylXX
	 oFOEwmtfbSLDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94498C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426599358.12294.12756015618865024879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df43c5e2eb5600ca8d3b54955fa4230b73f50763ff259f6669b659ade2578fdc
Date: Thu, 10 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744265993
