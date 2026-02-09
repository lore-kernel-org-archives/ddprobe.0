Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5334013B58A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770599034; cv=none; b=IZXJKcgAdB7CMnaR1pKEAJFnt9kr+IHHJiaNI4fgFtm7VriOHSGO29kN5xBErA7FogB1piQ8CTOp96NHkr/e9F3sTEccriv8gtTYIi66bcr085CuqsgNO6Xh1CuT3ygOgf5cto+e6PGrPxq7TmxBgckNBL5DmlqfywVts5KtNaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770599034; c=relaxed/simple;
	bh=ZPty5dbB9cebWtlCWUKqJAN7syb06F1jHvx1//+KVbM=;
	h=To:Subject:From:Message-Id:Date; b=dyYZWovu0Lji6CXz4jQ8Uj7gMejdrE5GQRk5lOhu1HThYkhkfSWRqYQJmRn4j72c1DXDWDH8ZQ00i1iUY82x31eqTGimZExN2VEUMt+/LLGXKbkYYFIFEv/xnP+9ppI8umvLi0mRZDpaTTBE5YzG6ifGiRrRMZCWJDu68l72DZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2Zp+M7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2Zp+M7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B9DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770599033;
	bh=ZPty5dbB9cebWtlCWUKqJAN7syb06F1jHvx1//+KVbM=;
	h=To:Subject:From:Date:From;
	b=f2Zp+M7EN3r8D3cV9zLHlFwPLbUiIFrwAYAlFlYVTYIDFRm5gtZyxikH87u5n3a4/
	 1auMR/E5ssN+PhnTkihlpLXuxavpt7xV2yLU42kNCPQblYf4I4CfnxYKgafV6CLVe4
	 rYH1UC+qX53lATH8oigmvUtOipmJEqpNMkvOU/vi4CGNKZJr1Dap5CHGRyp/Yx4ld8
	 FTHC7i1hGt6QqG0oGrFuYoMArPuuTvm8sQu69w9QB+u5AO1RrN7ZvjZhyGDCCRGr08
	 YIpyTJnRJFLoTYZlHrgr6iV1Naq0ANvDy7xsOymEN7jJXJ9O0s5NPWV2oiAxvcgnuY
	 8NUq1Tz8fHKyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B833CEF06FA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059903372.8416.17011626745614447861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581b646cee290748bd362df397c18d03260a8e1ccd9da0ca148ad346d60697ae
Date: Mon, 09 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770599033
