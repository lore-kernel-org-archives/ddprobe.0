Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3360F14A62B
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755978594; cv=none; b=hy2V5Q3gwvh36vVrOkyZnScKDy92ug5woD+epVHuFjV/+lmtvLaFEWWZMtvz7nKbxyNmO/Q5L+1lTFuY7SZoA23UMBkdeH4huA+Q7SPR699ngDJdtTbg8GZwQMw/iXdxXhIOxQTAk6pdIl3NaESRVitwVXsdFxLOuXDY3xCKo6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755978594; c=relaxed/simple;
	bh=2lAnJlinf+yCI0CSpYRjYIVJmWWvwNc7va1lgyevoqA=;
	h=To:Subject:From:Message-Id:Date; b=ZktQD9eQTFeq/AKYLUYyHXyk6NwHqypmh1c+lJUZsn2HvGitHiDR5uHT8+WzIobw45hf5s9o7vNqwttnFxSB+55xJeItAz2OrH5ssdKxSOlJcCMkYWVH5IBvS/lyxVW2LApJUB1Wwv99ySty21DBS0NPA2CC9zxjl0wJaj4I+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCCAL1sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCCAL1sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C7FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755978593;
	bh=2lAnJlinf+yCI0CSpYRjYIVJmWWvwNc7va1lgyevoqA=;
	h=To:Subject:From:Date:From;
	b=VCCAL1srysboUFi1AH6eIHsThJYu+ZM8RzGSHc8fhVv26Lvm38kmp+JZP6nBbqccM
	 uI6OjoP6pUTllOlazyN/GUTV6FT2rr5+wMpitFzaUjN2m8rFhcmqj8LJeZ2FBJEutC
	 lyGv25XoPg94HUfZIy3KGe/J/TJl9omNTAxh1PXc3tJHDNeI56r0EFmFDVgj8Vl/U4
	 KcRWdRHalpcyd8LzcuNk3K9+kY/tK3lWnjQAiUj4PCVVvCNmLg09RHN8LH8d35JzNH
	 Q1w6IcOdlJW7ExOy/s6mZg6AhCabf4zmGqqDZqfa7MCuM53m8lV9cNugatvs5OIrGX
	 YjXWNe+mgiZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CBCCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597859358.3419.9260359070916377994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9aa2fcb3bbd89e5b4a1d552602ce889daf7e1a0b7b3261d1b47f4ff8abde30e
Date: Sat, 23 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755978593
