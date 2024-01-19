Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A835465E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705703297; cv=none; b=MVva94AqiwOqqew+2juaCrt4MUX+fEH3ElG16LMhgONkz/t45S5VXPwB8w+V/okIwRvFYh0ShNw/QrpijkGq/s1l4mg7hPig2Lhs3NFdM/d70adtPEH1XMv1O3HL21Lh2gn5SMWOzCPWJGDicVriF9ikTivKEx79MLyOmnBWoYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705703297; c=relaxed/simple;
	bh=zM4JCCEXWDJvfxUWROBVvQYU+mkoic8uUSivXG3ah0g=;
	h=To:Subject:From:Message-Id:Date; b=TlIWPm/NeLVwUJNGNeA0XFeBlZoC9m/RUPzqRWsD6hanXOOmvKfUmxEINLbWqWVngR9AwtzuWeH94zqSoBoCHp3kgKGz+xsIxs/TnZuVSG2FoNJ4vUWCjxF74Y1pYACbhqv21BaTu4T8WksoUDpJNu/9srl666BG7SNucJXkybE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdpUH0Aj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdpUH0Aj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EADC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705703296;
	bh=zM4JCCEXWDJvfxUWROBVvQYU+mkoic8uUSivXG3ah0g=;
	h=To:Subject:From:Date:From;
	b=AdpUH0AjuXkoDq7yvYgN+Jyc3rTLwYdAbhQjb5ZbG0MDeDrqpc9NJ+xf4PL28PbXR
	 ZydO3x7a2Mqjq5PceaJWVFSDv7bXcdpVi0k8ZL7YOUaetBJviKCBodgbhU9utqWKPw
	 BYd3RVmnqIPMo3fDcUS9ZXIfXtdtsOQoIwHsGqGA79GLm+Pdfm8JGxq9dZx5o1y8N6
	 Z9gj6iuVk4jmB+UGESLMi3cvv9WAGv4khTJzgLoFQ2DfvUD05CLafO42xff9SsSnoR
	 ywsvRuY60hbftQL0cF7Hxoyn6xzAPRoM0gzrulj0b+shXJWmaShbtL11aSTKWrTv1A
	 xCjmxi3twfT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C73EC47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170570329637.5356.10912728589635986304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297df16f1978225e0ae6959f62be21def2e9447d62d89a4dd5ba8e10e87b7c87
Date: Fri, 19 Jan 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705703296
