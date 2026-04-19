Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8E32ECEAE
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776589654; cv=none; b=iHiS/w6dE9C9HqzZYdC2HXRHvJklNlKYKlTo8JCilz9KtGFfyunFpUuFf5gzCnenaI0v1ieJ/obfamgjT39I9B5OTAKA2Wr8XAjxBOxb2bYwQPIJ6X7iN1e2yM1UrUrc6HY+i2tMQRS5LZniw1Zayhdk2AlQEAtqJmfk17WouWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776589654; c=relaxed/simple;
	bh=ka1kZAVCgsJf8JAgl7IJrT7AhFGaxU22guip+/Xgo/g=;
	h=To:Subject:From:Message-Id:Date; b=WRImAh20QHQu/t2WPiTpPowaja1qGUyHr28ZF0EfvJoBWsiMWhO0TNWbZ7pDzi8nhoKCPxg7Lh/Uign+bnqUO/O3P511D2K3lVr/A0vIYo0sT5epwo6L3CnCDtbExlu8mpICP7cveAEjFmW5cY8Ds6uNapFSORl9oDwnFhYoGEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwY4qqv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwY4qqv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9ABC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776589653;
	bh=ka1kZAVCgsJf8JAgl7IJrT7AhFGaxU22guip+/Xgo/g=;
	h=To:Subject:From:Date:From;
	b=VwY4qqv2cmx/y2Cx5VPr3Kkye0pkNVJdUyB3F5iqNYdqOkgGDHa5V4xb4AKFmXBLX
	 UZfAq5XouN1+9Dc9WtlgVOADhwISaEmcNrVlkbnlVybtumXh5HQvrlKsUp+Pw3FUu5
	 l9E14h/jR0hKwpvJRlX3vC2e/OuiudtEjnz1DXPm0aiS+PW9PzcHfHBHwP0XWDWOPc
	 QmvwLJUPZpI7O2yCx3c6VPVD2swTH2kWC86xX/dP7Gz+fksAwjnqu6OJ1UvVAfKSA3
	 cg0Paf+G7pf2NWJRWuh1Z9RLiqDE7XsA7k98JmOZtFPWz+YzAu27RrbwvcmGedSr5+
	 EaJrsh2Kb4Jug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93F3EA7193
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658965368.5759.6529695344179574866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d6110e5adbc19ef38f5e25b0a42c56134fcba815f69c5318c9ed199f7608db
Date: Sun, 19 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776589653
