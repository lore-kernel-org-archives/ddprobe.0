Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DB4748F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738025755; cv=none; b=Jg2hM/HTd9+zN0CD/fbHmxCiN7QeJFWiC4fJNzIJdHwPmt1/p2c6oUmM84CaHAHophG1fWqfBYR6sUxoOygryERSME8YzeVVne5oDlFR9yiDKk11ZwpD/f/wAFvqfGHW1SBvEdbv2qcnzdkVR7DC0qXKsAUk6NpzNE/Z1vQf2Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738025755; c=relaxed/simple;
	bh=hdoLRu7pB6JAYFXemr673r2LjZ8i2gB+4J6kcBgxLWY=;
	h=To:Subject:From:Message-Id:Date; b=ohA/01f4vMMJDzhhWruNyOj+bJe3LP18qqDMCEnj+jEQXC4LBvGCpVVhk3tQqqcH5a6BnHmapDmZVwqS4mVlqKFdzsxBuFrGSjw5cpMxmfG3n3yIV7sDMvNI6Nkt5gigkPacezPFo74t26hIRYQMUNx7QfxqdOGk9MHPQp1qlb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeiltN79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeiltN79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF54C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738025753;
	bh=hdoLRu7pB6JAYFXemr673r2LjZ8i2gB+4J6kcBgxLWY=;
	h=To:Subject:From:Date:From;
	b=GeiltN79XLOCfOObSGzRA1ueDwFVD/LITZY3f056N3ekapKD83WWA+taRUSYDhZPn
	 zh06ueKP/M4onCk+JiVpQk+Z4T+IrjB8h6wzLpx2ZxxBRmM340ZOxRA1CrdImgrvcY
	 aVMFi2Pfr1hNKiS4GFp20UFLKIUWQt9YSG8ssvwLUuqou5XvrC95EvSwPpHV/ACy6u
	 iSASOljUHqrLdo1FJdLywyPd5nuV8YstBbszThb7jp4aX03qVDYw0Hnj1yslfBgRSc
	 56NI44cSg3aCdeFA8MKkISWS1BQo1qBdhSXui9HEI4yTzbg2lnpbcu2G61JWSv0F9Y
	 y0YJOB0Ef5owg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49BC02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802575358.27282.1970059643664743617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb259a16fd59a79e5f26be1b2ab1f444da36df6d69a899c2d22cf950c8285ac
Date: Tue, 28 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738025753
