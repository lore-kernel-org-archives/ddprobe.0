Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C36946D542
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787925034; cv=none; b=PFUg9wL1/tTFGhzKzuDs4PrY11b/lk8qG7lCpwJAoEqIw6GJKNKuHo/YEsfLvtqFICF+Ai2DVzk/7VOZjoKe8UcAJOmCDepe3LF4sXqap3scSkFM1lbFwTXDfXLmyGb4Ujn/IzLghFjT5GWrsJffTAhWy/zOe2Rul6Zv1d3fU8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787925034; c=relaxed/simple;
	bh=D4hiSIWPFdIje8fWCcJyfAArun2Bo6O931SaljRBxNs=;
	h=To:Subject:From:Message-Id:Date; b=q4vSqktouMq7UBfwCECDD/+kBpovS78ZnUZxx1GL5j/+rhEsmmmFp0HMv6BNmZrO74YTnOpxHjuQt+HFDR2sn3JlwjQ8uzIOaOCPdbZS3qh4kxeQDz1TQkT+UsPJlbXlHH4QmDE3bKnZFl6DSJmMt0jyUwrCaAHyz9hwyGOfVRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COTo8TXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COTo8TXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EA1C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787925033;
	bh=D4hiSIWPFdIje8fWCcJyfAArun2Bo6O931SaljRBxNs=;
	h=To:Subject:From:Date:From;
	b=COTo8TXU8VuLcDrm45VIPEtsFQhQBR3U5z0zyzgkpNYa4buLk/NpS48GwOLstmiOg
	 ZYVAaBzzyf2RRLCT26v76VO9KmUAMwoEMtfXnLGmKVvZq5qK07iC/Yq8t+wi5lYpa+
	 S/Drgdx1FXa8TlUaKBUPHxskEwE3Vf5COW1vw516aaSHgfZRPt5l4D6oWLjNfiZsf3
	 FNoJeos17I8dNgO+0xXBO4N67OSldKX42+SsqJ4M8atcH6aBe7X9UbHdCViH7KhVER
	 usTKYAn0Okrdzl4BAJ8YamdQTNowZrz6STmpL+GdInZZYBm+LXCG0lLp8iBOhkYtRh
	 py3iQXEXZofrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4A6C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792503369.30308.3933400093309060130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b584e2ff13264bc9ff3af31834cc729a611bfadd291505f8423174b44e473b
Date: Fri, 28 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787925033
