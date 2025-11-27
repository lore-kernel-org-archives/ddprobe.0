Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E856E23BD06
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764241974; cv=none; b=RRwICL3riE1SpCwr/2C+pH2k+ex7i5tyIwthCGqG+KMOwtScbqYBju9yLXQODuu2/XaQhFNi2i/BJwUp57i4PdbrQz1jHLHfZB1pzNgNayQmZAoQJWwXlMDGAC5z8WCsfS7iU2UmEVqBkmOkygEaz69M3yTupmQfzbbKW56iM5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764241974; c=relaxed/simple;
	bh=PV0xlOH5O39iYRFR9M3AdsNyu7BBD9/1LRwRPylsO2g=;
	h=To:Subject:From:Message-Id:Date; b=euVMPFnNegpNDPzDI6amVbKvq6K8/ngOmx10JK1nv88TXeQx9eVyf55Mjn4fSUZ2R4qNqoRm5U5t9pu516vexfjCENuVShpJ31oXYUjHXw55h74ITjfvOXAybaHOKq40zx7ix818G2KkOY/niOmPnjaCJcpKVtxJ1pwdHUwrpiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh3jp2Tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh3jp2Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A109CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764241973;
	bh=PV0xlOH5O39iYRFR9M3AdsNyu7BBD9/1LRwRPylsO2g=;
	h=To:Subject:From:Date:From;
	b=qh3jp2TqNdo+VW+W6sTXCtOUz+7MPbiAN+IKDd+T0H8HAM4Jh/2hYZxy9D1RhQcJp
	 4OkFwGe/ZpPm1cI/2lbjw8BViJy0samwgF6k+j9XHpBFDc+iv+TZhgxFDtOBgdXpVX
	 /eWqwORNf8leGET5jn01cR2br/8t8doS3Dcx8E7KYnFRcH6DplSd3SEDr5qnZAB5ZT
	 81298XvuGvUSMND+3n82dDmyT7QfymWbDQTj1UwiKAJmA7RwXf1U6ktlPIPm4HUWwk
	 mXmHY8jjaZRTDPeRp1kVHer1N/fhFzvXIQxS422o4QFH9Wvtfuq/oz2d8Mu3tMlq8K
	 j8ZnRPf55ismA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909FDD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424197358.14926.1130542775191571662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa77b75ef14fa97a9f4b0be3e553ff01555563921bee1279c3b7da4570c37999
Date: Thu, 27 Nov 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764241973
