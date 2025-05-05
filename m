Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E2C2580E2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746462594; cv=none; b=MlrwF2qVXgAXlu/LAhBKyY8dfH5VW3MmOVf+a6NDhUzjlpM6oMiwfR1qa/jnz633c3bPe3JUfd7yzRs8yXdcAimvo5y+MiWakT0dTl7QVynAXXQL2rfuBVwDaxQ9N9r66ukFgdI7dzns9r53509Q6rnwREegP3qvp2O/OTVACvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746462594; c=relaxed/simple;
	bh=gwdzW2/YA+XNU/y1ybWT5fznzRrJIbN2zXVYY+wgPr0=;
	h=To:Subject:From:Message-Id:Date; b=Hn72vAGw4Vfh9AxK15fbMqAgqNVLGaDBBDTCqqetyquT/iiE0Y5CkAEj+fraTuVmlcjszQMRJEiW8lbxMHoOMfaXnaa/ut7EcLjmW2bLL4Ff26daXhuGQ/J5uL+B2YaZx5HdpCcSZyHEnfemEAFwN+aZ428hn43SbYQnP6CHUk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsCZrvwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsCZrvwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746462593;
	bh=gwdzW2/YA+XNU/y1ybWT5fznzRrJIbN2zXVYY+wgPr0=;
	h=To:Subject:From:Date:From;
	b=RsCZrvwc/FUFbBAalHeA6s4gRiS6cB4F+NegfC4+2G++34qhOFsffM3zcYaKd5haX
	 Nrs9OKJthFWQ5vOHDqTkEXNE9fbzcU7MMhhbGFzqm7iv+AeYRWgrp9cmA/E34pUnaj
	 m4Dw9MmcrC0az0Gs4+S1+TGKCt9zll/lXRTUd8Ox2Xguk83nkJKGYry8/oK3OZ3kIl
	 72KYeye10sE+zpN5AYX0rIC6OPzqrUy7h8QgIPoK8bIS230u4ygtlIT/lYKi9PwcJI
	 WCVQiPMDqQtlNlh9lw44cSWrFruVhPt+heo4m7/IFjbh+jeDG34lXgP28YAtkdpH1m
	 /AdbCmGuZTFKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978B0C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646259361.10697.11710478588812166900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37820ff1c63fa9a17511a252b9f19bdb434e0e7880c58f805954e48d9779517
Date: Mon, 05 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746462593
