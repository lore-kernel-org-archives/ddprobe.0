Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FC6401A1E
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773345894; cv=none; b=Bl4uSpOWnYhV0kcYvM3Hg8YMqFZn6viqkxKfNAj9EMwywSe+5vhaHaueI72NZSXe8/sxNhyM2ogNmPpq/Jx0sytZBD2I7+7PMdfS6ewAL2R4QRdG6zT/TqlS2XMLuP5b33wWUADiBEuhpb3OJcGaQoLmEkqf25XShgWPuz39ZIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773345894; c=relaxed/simple;
	bh=jeFBl9vB2J2FCoLW8+f0FwSKDCLD4Y6JtIvQjNWRQuc=;
	h=To:Subject:From:Message-Id:Date; b=b448xcVBYGrqFjaDdo3Pb370z9M4opXvbXPXSZlY7Vj+J403OlKQVEdbvbpChhcPu3LxDfDgY+NlTpgjAkasSBnMYEED5La5qcTzpg44wK/DN+BuiYEYVCsyq6IDK8W0K+tbPZdjrFgAvQHvzzRululIk6R2h/2vvfeytRTYmCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmH3cm6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmH3cm6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC49BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773345893;
	bh=jeFBl9vB2J2FCoLW8+f0FwSKDCLD4Y6JtIvQjNWRQuc=;
	h=To:Subject:From:Date:From;
	b=SmH3cm6Xd++tnrnUakOjGH8v5PrUiay/YUzYt4F5NCgcDam/DVMBr8Mhwm9rsubnz
	 V89DIPuSKka/rGsPLLoSnDXeY/soJ55PJ6fW1LzwPrkglpGbGmUYa8yyO3yi6zoxL6
	 hkXxb6XJNzep0y7cIq9nsNwC2pSsfSDls297fdDvfSYHCXkTsdP5qTfhb+ncdui31t
	 knFxD04AHxvrZP2+/sc/7By/Dh+8ysGrfyYTWgMIlCtcACeRTI2UZt8uVwZ1EBDtuV
	 vec7n21O8bnlqIIph4PuAmiL6shvCOTRGjdg8Wsqbq4mgQpy5LWcVRy3i1ua9fHN62
	 QHkf7r/gtWwUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6C2106ACE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334589361.14879.16775565606015983041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f77d2893a74183f7470326fc9112dff32dc6d9cb3b451684215100c0b5b927e
Date: Thu, 12 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773345893
