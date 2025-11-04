Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA08347FE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762299594; cv=none; b=nxxiiq+kMOEFJmF3/NUfLK3ueKW2nAexc0sXg2lJ+vcLeM8/X4dEb7SQc2MIq8+w2v9Lnop5M+QzOgvhXNKbkbw7wVEnh76vPFHxdmfuvwkksoJLpy20Du0qpyYtrsl5Is/anmVUSXZpGabwhhYCDzQ0ZZD2XBXwSxHaWW4KACc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762299594; c=relaxed/simple;
	bh=lTim375IDMAcUK6bWLRk6Kgzc4n3NDNHcM5pw9AGEjQ=;
	h=To:Subject:From:Message-Id:Date; b=LIHx6QC7uJLTz2isDokWI3WSeeQf1957gfeD5nN+E1xmseNflFNr+G7ViJk9bfFIA8nJx9zI38GJpb5ezXXVj/56/i6y8AoSrFC8uX8RjxpViCzSkH5i4KxXOHlBrWAll+Ay0i5c31jZetkxFffsyC6gK+BbxgiNsMZRrp2+xaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIcgjy07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIcgjy07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762299593;
	bh=lTim375IDMAcUK6bWLRk6Kgzc4n3NDNHcM5pw9AGEjQ=;
	h=To:Subject:From:Date:From;
	b=OIcgjy07ZmPD2cpjVzx+yfTYRo6fBru9WfeI8cJHQnDc5qpN8w/DwXJHqFo4z5j4h
	 hDm9X+OpHjwkonnVy5NSgYnG46+lSW5zJK3dw8biJ6d7zvyn31U+bsITHtCVMEvSxd
	 YQVa++r7cBzkiBytLmaiyeCLzROt42DU/ticeTDqNPa5FbothcITmJcw8nd5WHbLZD
	 rHaarYcJdy2XH4ZuX8NRHXtmQ5u+NAYg+dUTLMpKo/LqJsWbkm9di2o4YO8N7YGujN
	 NxFFKRdyLJuNB83ccyXtlnHbpz8t4TrRJEja5eYngrjjSdtAb68NvwrJnKxFgQvnHC
	 W8tbf8xwWgmkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143BCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229959358.13513.4524271558952004741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464cf9660a593fbdc3d4bc6cf68b8082144ebfe12b085a3a995e81762b20d4db
Date: Tue, 04 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762299593
