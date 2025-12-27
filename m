Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C37314B94
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766839434; cv=none; b=ehjw6Cp43v0nTBBnm+I4qwDjnXF5RVSBK/cRwcJBrh0sGjklMwQjTKv0Lj9z/Ixzg8PFaqwL8fstmMqNrGFxAoaeMfE1zVu2QLf1i1R0kj4MwVcmkyf07imDFyOrtH0GAf/ERw5n/d69VDGi30uvHJXnoq2Yh3aCvrQCqkCTocA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766839434; c=relaxed/simple;
	bh=Y6lDq+XRp/EofrzLJD1QsKQl0wyYQhaHr9TDof/8oOA=;
	h=To:Subject:From:Message-Id:Date; b=cVebnU5rrhyE55izT266zGHcL4GWOPoSlfN8UAeTi1/PRZkipa8IXFIsLugyoR0N2WnF0Zo0SFjtg70HCQBA6u1T1hldEQ549ETQ2/NSR6xDQrQh27TsMvPqpEJVrH4SFLY1vdMStcS0OIxSFjMLwy2Hslv5ZD5z0mT3eAghqeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3Cwn0Na; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3Cwn0Na"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F831C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766839433;
	bh=Y6lDq+XRp/EofrzLJD1QsKQl0wyYQhaHr9TDof/8oOA=;
	h=To:Subject:From:Date:From;
	b=J3Cwn0NazprVwT3a0PTljeoOCIb88xcmduUlgX9F5hlQn8GdALf16O2ajDrZiS0IF
	 h7Jwc3vHqAmxYpN8eI04/pk/W+c2XI+uAs+5cW0skcWkNN09Oi/UVOFa8m9AzRikO+
	 hnC4ZMAAInShVd6koQ96I8Ewj5NqlG+WrhPdeRk3b6mwS4ykG2eDqYJWgFFaDQQi2F
	 CKB323A/19/klJzruRex+nI9MjYRbdxNMwiWdohQhyTlEZp6H3jF8jUkweP2OHN2V+
	 oWtmOLjqV+XDIUZCOeTWiUJErwqLB5RikfvCqMPa81iETigQkYgyiTTbo76QEA1/0t
	 8CZyYBlfyUB9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90511E8FDD8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683943358.14007.13014650031402360212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e12a72d4914466ede69360aabcadbdd621674bfee63464f18d1fd45534a985d
Date: Sat, 27 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766839433
