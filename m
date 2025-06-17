Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CEA2FA646
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750179594; cv=none; b=qsfuo7DAlAKJiQdLT1lE/Bxarw8b0A4NM97M/Rybvv0jcVXutUbpGbFjFnuKb6aDYFTaK8YMeHCRCA3mllKtCIdYjbrY2aGjnsTcFOjqYYN1xMsM9a4hWsm1AV4HBnaSPVKbnz6Hb3elnh/GngcP/Xt3M2QtSikNAInIOT3YBzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750179594; c=relaxed/simple;
	bh=jUkxjqdqkYVXaaGrJWl5RrKBfIpW9CVyjtQLHoXM+jY=;
	h=To:Subject:From:Message-Id:Date; b=Xp0VrzqkFAyl8e/ju9itqtHPAX0csU5n0K4pje75rEZj8f1skV+eIzylZdcsopbbCP3V9t56ebsjL6spMom81cN4siCIFcqL9vJCrKJGM764l78P3731QE1xwJtAPKs4QEVq66XdsawmwnC2DpJYOp+cdH7E8W9HMqyFK7OxAx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YouZ0EEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YouZ0EEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B2DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750179593;
	bh=jUkxjqdqkYVXaaGrJWl5RrKBfIpW9CVyjtQLHoXM+jY=;
	h=To:Subject:From:Date:From;
	b=YouZ0EEnyHWZLtzNyrdxx3M7kKj4ywW2iqdOC+um+tBICxeH8nlchCIJ+sjdVHgLN
	 DcUHc+9FvewCCJTGuajzk3xNlcrfCEudEEMZ0/aUhr+5n0VAhiHL87d1tt+aU4jHpN
	 hIoItvDnAWrfCHxlCCjYqHta01y9O69uOoJtrLG6tOHZWU1jqpoVPMISY9ZJm7Ro3J
	 PCZI0Zhbpv59dZi37RTbDI6ZtNcdqaKGJ2DqyxA8EXGMt3Z0utwmBKheHgwnHXst7r
	 cDrLGikLhP0DJ3puF4OBoPqrzRpPXrhBdM7sefUGmbg73MkJVRdQ4u3j4iLPOuHtEQ
	 gRhnDWyNdyWqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A81C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017959357.5969.10525045970617316489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba6469beb105d811f0ad0fcb59e58293603066e0e7696e9f456ca1741137171
Date: Tue, 17 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750179593
