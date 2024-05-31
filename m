Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4733579B87
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717125863; cv=none; b=qHhmoJySb67Et4IGx8H6KQec8fLW5fSquRbWwg+e48TQPudqv9/v4o6X6XYCJtvrkmYtOzO2mUtfMvY+Roq+mZnFkNShQ8QWyfwKwInVA5R/JXe2JQSRj2uV0TCy+ToCFhEhoxLV5wFtNb8VPtFQk5aMcT+l3UdwXGNSApVvSyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717125863; c=relaxed/simple;
	bh=DAn0QlTASwx0VwNzAmw5EPp6uNBDO4fuz/SaU5ZsYLk=;
	h=To:Subject:From:Message-Id:Date; b=PknP10PVShB1PO/9j7BL/b2hUd31R20SYPMEqw8wq9tBjyM0S/6l/TMAMfbUUc8SXg1wIH+wqt1HMUIqElKtJErwXpyaxOx8qJ0C7R5fK1CgRJJVYIUQpEBJ75BbLgmkKdCvcjV0QZ2KeXeANDLkKfiN9l0JlWqRlFGXcOnEOgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PR7oeoXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PR7oeoXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C82C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717125862;
	bh=DAn0QlTASwx0VwNzAmw5EPp6uNBDO4fuz/SaU5ZsYLk=;
	h=To:Subject:From:Date:From;
	b=PR7oeoXEVarTkYW0R1C60nuwdsFhKDII1bcXgOM4dbmZBU8iLGMbGqJgUq1L+Fyq6
	 CR9y5gzsL+FW955w/zHRAnYGhNTZqjfvqgyiScHAaF2415whrRjR3AA75Ka5+nSZjO
	 G1eixGbBaxkHAeplYDEg7WzpX53eCHrFx1/Jaaygi0m7avXeyXiPpQyBTHsox5pArC
	 6zmANkkqlltKptGDFA5VRb4DpwoxoufJQqdfNWxCYE6yVl3kWCwGkx1Gt1IBmbCGp3
	 stUOqu4buihGaRJWbQrcu2mAodXL401vd3AgQauDk5OVFxsYhDufHeZzwrmwFqEwFw
	 uN/E0E1/YApDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB91C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712586276.20103.9834494888439407934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d11fc45ea26c47ee08c32a479a78066710053eb7f3fdea894c79aa20e0c3714
Date: Fri, 31 May 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717125862
