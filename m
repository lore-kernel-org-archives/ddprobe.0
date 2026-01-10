Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBB21FE47B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768070034; cv=none; b=Lga2xMYdorRSUkmap4aTEFS0W41l7FiYssYcMBikCXJxTpdPiaKt8UBMotnXrjuY2NrtUhQgfmWF84AlpLt5wnHOOcx2M6j268qM1RZv7ufca1VEw++f0geN9OEoOEILgRzv3/pRfJHjnGFvOluVrK/5DXj9Zm4XiuHX/nhszfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768070034; c=relaxed/simple;
	bh=YYy0qqSJ2gJJ0xNKyhq+eFrOr1qS/jUKSal83OmaWc4=;
	h=To:Subject:From:Message-Id:Date; b=uWPBnC5Duvi3nxA1NbI5E2r9Kd1+OqBr18xMt3fDas/iRSDRnVjca93Fos/ITUhk3mP5EXSNgOIDVkS43Uaaysm2VH2a25Q13ysGzNLci0VNYPYLQQFzBLolwPB2blh4hwnhwo//MmmGbhzXdCgBMcaRotFDopNjonlImnIaevM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGwgKa4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGwgKa4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61CEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768070033;
	bh=YYy0qqSJ2gJJ0xNKyhq+eFrOr1qS/jUKSal83OmaWc4=;
	h=To:Subject:From:Date:From;
	b=KGwgKa4GoF4DRZV4+y5yETPjVMA8q31TjgRWemIcIG80WFRxrOBMSyGsPMQBPjegp
	 G9IYaWEAYgHOHgxf1e7EdBkoyEtQ5l1u9156M1CXSn+fhKZvVfpQB9mT8KWTcnyIx9
	 qNciu4Ea6sYc6hFomtioJ4i031uz4LyuSFRWqxMRTGIx/MkjV54xkButaQHKniTLPi
	 0DzWqoEYCYJknAd2yJJxzklA03ao/av4s4sFpD6YXMHRMfji9X+CMQypaZCewPFCfE
	 SJqkqcdgy1N5LlGx+hKI3652atl3DqNsA0XwkuKe3FQOBAfEFeA7cil59CZdWPdsqX
	 V66E5qbzxMwjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95869D232D3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807003357.22633.14571044661450760572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e63ce6ee2e198b0ca57265ae72edafa7de1ae957270191aa611482d49c8c81
Date: Sat, 10 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768070033
