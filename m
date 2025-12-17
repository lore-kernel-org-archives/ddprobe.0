Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5702F3A1E96
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765944834; cv=none; b=RW4pjklzI10dDJwHJymazvoHEfuo2U9L5NkD5XO0EOJVMxJ+OnsFngK/wII3JMElDsO/cKYKDu75r5wfsgIuUn8/DX+UoTud3QbDsk0pkGXXQFxgarP1LE0Q8IncpUH7f8l+tkBd3vzwPxcjvPHXRJyId7upEa85lGiPbk6bIzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765944834; c=relaxed/simple;
	bh=e4Ga3m+FMwiuD68Cbm1EH4V2fcldQT5h2lpWgsgL5V4=;
	h=To:Subject:From:Message-Id:Date; b=HFF9P28PI3XEnE5Nji6DcfXlisLQRcLBiNGxj/bjjYFQGISrq9/srVF1xYqlzGESV2xnE0H/DV0/b3btugAO3tNxG2Fo6ezq99tOxkrTsC3t/vpcbRQFxDR55j4oRplVcSqwIueAFTUfd5JD8IlJvEHsk503PPSVxleBO2DV8iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7Lt8r7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7Lt8r7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D14C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765944833;
	bh=e4Ga3m+FMwiuD68Cbm1EH4V2fcldQT5h2lpWgsgL5V4=;
	h=To:Subject:From:Date:From;
	b=T7Lt8r7SZAleMamUBKOUhcms3IDEelnyQcYOm7pIp3G3QNp8OF7xOFFrT3IM0i5qh
	 OZxN4i3LxKcfdVLsDjVQlOjZ25A8K4ca8AS/g/EoWSvhgmGA6MqjyioR0485dWvdDq
	 +2oPFfxrfWHxHga8M10rvfkc7jrhLcqCxrYKpBgLiw37OMMLpbdSfxmY/ccxkCpL3K
	 trrd6IxJv46nPE8PpF/BwO5oefxrJ57eETsfiYwFnI7kzBsmErQDmp2PqmXMduK4k1
	 YV4fG7hAUUXNLE3ebryqPYtVIp8RtIC/+KJZl0HGpfejjZXqIZLzMLDwKVywcLcZRH
	 A7ie1ToUMggCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A21D6406D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594483363.29629.17431953615733429682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4593b772629e5e1e331aa665b3ff12d1cf1a16dd396e15318b6eebd8350f62c
Date: Wed, 17 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765944833
