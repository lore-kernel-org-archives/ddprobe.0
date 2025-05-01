Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7061C5D7B
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746095394; cv=none; b=jD+GxSjt2qlBLD6McWOGinoTdtk7WcJniBxlk7QzvTmUwgVLbcW/UvI9Ihef3RAp0oRai/7A/BaTEFkgps0UV1KuTneMHa+5hwnVNJanw6K7PhWsP9Up3j9AU2xmELEjHYBzuYEqgVsIuWrg4c2zV7JAfL9ezfdMOhk9kxX7JbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746095394; c=relaxed/simple;
	bh=uDvecYC95CSCyzcxEYa3F7ob9MHpIgdDUuZqMFlPo4Q=;
	h=To:Subject:From:Message-Id:Date; b=ZEnp0W7fJ2M8VM/cETnYK+W+VtJHNh5ZjIuKePuKY4TPMZoPOp5cb589xQ2USnP1IlQROrbW5C53BpnYjs848EEq9DY2S8T3lV1GWDNS6ajyzTrEVygww01o/BQyBW5kJeK0i7YCVYbKTOpBV4RmuTgz878zhma66xqRePOY0p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bthcGHgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bthcGHgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D3BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746095393;
	bh=uDvecYC95CSCyzcxEYa3F7ob9MHpIgdDUuZqMFlPo4Q=;
	h=To:Subject:From:Date:From;
	b=bthcGHgQaLwm1G+X4xsqcvrTfJyM6AVhZeD8/BmEKBtcoqK5NcQospp7dwnu8T67t
	 ncpHCGxWQC35O7oybPCNg9ZExepn2/eL2BfCn28RSzygX1z6MjV0LT9cq7C8Wz/huH
	 fQgHc7KQ16Pxkyba3aF+B6CExtBmk8oB6o2/axlcx0DyLFXCUeE/+BmPLRlcVnqnAa
	 i13EUa+ahKYVKah5IAO9FQPhlPigtuf5z44Dq231TkumynT5g88egK5LHCHGTUGmHG
	 Lb9Nm7ugYDlStQsQzmIymW9PvliLkz3T1VjE3/mte9p5vAm1k07eOCIY3BivxUFkbB
	 paoylmxo2Q+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E686C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609539357.13839.5848282175316308125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f52678b2f00b81bf3fcaff285bc340e87e77c3d4cd5d6464a7bf737633a5890
Date: Thu, 01 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746095393
