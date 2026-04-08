Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8A1279DCA
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775654134; cv=none; b=HRMJ5hK+hqBBDV2bvy4D5Ij8+zqXRTALaeECiomF2soTiDPLTSmz2Xb2HvE6jUjFs9MUPF6J02OqeBkQINMNzQNqNQuXtKR+3iDORTBnkSQI5OziYonpG9R7aes07oob8+/ebqFWOP8HR2DmntESPNX3H8Df21V3+ddbWD97uHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775654134; c=relaxed/simple;
	bh=yROnh8LzxEZKBmMfKN3JK7TF3xDgYB7DXZ3jUwgma3g=;
	h=To:Subject:From:Message-Id:Date; b=XbSd83glWPR60ARluZIz4bDJa4lDuCisgU2ZjhVlAi1LoPBJNzL7PEwY440uvmnF78DBY4zq/YlsxKvOTnDFcYN+a3rBF/98bkyF+ZNITS+/k/Ji/v9FQAVClg80+qtVwm6bDyFVPSrIK+m9saQ0duqe/sGO1mV9kl7N8qasPM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7nD9Ks+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7nD9Ks+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC67DC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775654133;
	bh=yROnh8LzxEZKBmMfKN3JK7TF3xDgYB7DXZ3jUwgma3g=;
	h=To:Subject:From:Date:From;
	b=J7nD9Ks+g/iaHlYhkIuLsY6Oz7Awf5DglEj7QKvNTD+i2vvKYcRd8QBGVFZi/AImZ
	 TjUYtwASBf8kd+qUEVvi81HsR4/5dswMVxbEy+QIsHvWOKOfbkroDB3BYwu6nyIIX7
	 qkyxrw7wsuRSabd+7UoaDprQV4IcnNep8a6n0PkJf/Lb/Q3w86VGwZQayxWSr/MI1Y
	 4F+/atiZHHOHC9BNlFyw/11+qlLcwkV2i2COm5L172xuWwllwMKFaqEQ+3xB2JHbYx
	 +SqLpaBtv2G4GzPQ4gBTqI1vaIHgoqXpeVVYVptjStHHU8hKOED6d7WwiZ11OhQdqU
	 3wH+vHI7Jlb1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5E1073CAB
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565413369.27920.9130440745031005035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d67a8a5f9f3f8449ddb4074f3df54aaba7b719c0bdeecea9303bc0dbd780c9
Date: Wed, 08 Apr 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775654133
