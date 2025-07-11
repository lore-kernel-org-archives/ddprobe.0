Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235A621CFF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752225595; cv=none; b=VGXKtJJj0uVibbcbuTFPz2Xb1+wjZwajvYI0mghB89e+fCrM+zjfkE4/Ka9HdlAHU2nz7Xy/CBF3N7Jc52uQFPxP4MQkMdd/FO74uaf1U32BrhTE8IdJ7LJ6HWHoglsQ02rPvcBj7R3cob1RtmtuueGXaLvfL0pRO/rYWoT8foo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752225595; c=relaxed/simple;
	bh=lbDWAZLxyasGnpUYGA+l8HZZkFYsiWii0mJ4mfY1i0Q=;
	h=To:Subject:From:Message-Id:Date; b=DMKtEPXklD5Fb+vpd3AObcYRpkJ3S6Qhfc1eAJu8YklMuItG7iuR2VC/81h6/NohXyW36BmiLc8kVjl/klfSOLgx+grIdMFabhZ1OgUjqxtw66Nww4SyoWWdcLsCOHIVtW3wT9JeS2KR5xw/kGztxrWKQ9DV1jmNv08gNFngAp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLWuW9Ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLWuW9Ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97E10C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752225593;
	bh=lbDWAZLxyasGnpUYGA+l8HZZkFYsiWii0mJ4mfY1i0Q=;
	h=To:Subject:From:Date:From;
	b=OLWuW9GebH7vC1DJJqvBdYethkW5NPE4c9+92lcObkkfJjLlmc6AQCzIOoOggbbNR
	 l79CnOntL7buZL5yWwJ0EfUylgZ16R/vQQzMDOE95fKReu6YpBYIBXavO7yMfyE9mf
	 XrjdvUfjDxZ0L3hM3u/xDcQ2ckcqAf2F1OJFABzRnSisBj3VxlkjX+F9P0MKxUjhhA
	 X+oTrtKucAJIJNMYFxgwWt+vPWoIvsoHVlwOBB2/V2HKhpS9ZtXRbZ2Dypk3cgU2x/
	 2EFAiVN/5PseXlSQaTJY1Z87+gmevGbvANusK89Y8ZeKz15LCvsEsyKckav0v92A4b
	 u/lVSlnotLoTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EDC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222559357.15261.5949035071929011534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0076ba1d1f977f4855624b11309482956cde1682b8cd3f8ce48a91d99e640d35
Date: Fri, 11 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752225593
