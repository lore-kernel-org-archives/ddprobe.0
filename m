Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7E4392C39
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780382674; cv=none; b=Qi4j+8tvJH/ZEySvAP/ttB+bTwS0Y0tvgkzZE9GAhy++7opAMdPVxOItvy8lqnlj6649WVHr5fNV2TQ/UEYteP3Y5kx5s5HBYlqGabn9/bD5mKV0LRFpVufBam3Q+RbDwyrC67XjJWDX0RCF6L1/CWsXyqS2C3xKScPuFyCWXkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780382674; c=relaxed/simple;
	bh=i5Bt4mSQVBZiWmy7e9bVGHbfMAQFUL/OBk8bN+J29Xw=;
	h=To:Subject:From:Message-Id:Date; b=BSzmQ3oPasPIPYUZZpXJiAxaQjUwNxpanaT7KZDX7JQ7wHKr1y5aH+/2JW/Tz0eNdmOXdaZZzr2K8+yG2RDgv5EjIEy7av0XEIhnGGkElbyNPc7KuWao165s9a4UOHw4lhQDuoruElzgbluvYOOYkKV2qLBVb2Pv0EsZI95jW9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rU+nOJC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rU+nOJC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF311C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780382673;
	bh=i5Bt4mSQVBZiWmy7e9bVGHbfMAQFUL/OBk8bN+J29Xw=;
	h=To:Subject:From:Date:From;
	b=rU+nOJC95++HvKMvNUvSKb29yF16Xjaot94ENjV7QGiyQ+DmoqLVH3Vtimrz8YIws
	 r8XPG/mnWa1VRtGAKyXoAbYymYbgSZPM8ZeDHfNWHBzJe8tQL+hD1R8hAz1Bbmw8Sm
	 eLOvgemEswqVwIUjf76AOYtCnPC7duXjREEIi+5wKFSTbjRez4EKXX7mhey2XPjI+0
	 joXfXqhdfnEYTS0KUqveGjGBQgUjCDGe9ONGytQUhVUnd4WmqtP8o0BgqkNuynP1js
	 yQobUk62WSCPV9kyl8tfUuPmtd2Jjx3lNAMMd2wwAusZCx8mjfyFQV3/MHCM7ZaqeX
	 2xYN77bhVkTlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A837AC5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038267368.2868.16493567338364356239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfd69e967d019bba4f8bc06b3f1ccd3e3fa64627b9b6e0479743e02aac55dda
Date: Tue, 02 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780382673
