Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590A327AC4D
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792299634; cv=none; b=lez09uW9BtFBAgq3SiQuGnxZ3aBg6PAAdU+vhUVBNIwlfP0wMjb/TXHXyJI9hmU8WjCCqKbzPTHikeTuoUII2fhsOq5PLlyPDJ2ua2kcmS+u8GZ59kQr2geEVnQNar+FqHN31YCEFynTs+jM8QemabZodDRoTN7OIH6cmkxhs78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792299634; c=relaxed/simple;
	bh=LEWa0oyu2PHnXuwvoBLn7GTAtILeNxiy6bLo7nrsBGE=;
	h=To:Subject:From:Message-Id:Date; b=GN+FIepTBvOqJVoTHJSJ1tsn8y5G9/R84f0PksAlec4XJCY5xWo1vSV8TMFtopQALWV3rK5cNSRfwKeDSo9wfrB08oKitwQvoiOeV30Y41r6jhh+NUsdjWRycu0s6wD25sJUsSGrE/0JRhyLdKYxb3jrQTLgvt1xaADpRz+dBQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfTOc9A6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfTOc9A6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB514C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792299633;
	bh=LEWa0oyu2PHnXuwvoBLn7GTAtILeNxiy6bLo7nrsBGE=;
	h=To:Subject:From:Date:From;
	b=pfTOc9A6KXuYove6BpkuOb+Y0aKarIK3w+I8wCVD0Zb1P0Bwkx0aAnQ0O4t5CSF3N
	 Z1UmmrYDvnr80sH7cjqqigTcqR/LBslFwYyYKPZdSI4ibUN2TJUQcOc7BzC9HfB7Oy
	 fFX48qs/9JwDlu2MI7OO8VuCkzhxTgvRx5e/tRgJxF8rUJlW59MtbKGBZpenl2HX57
	 MatepVTeOJHw+LgsVrMa+HiuH3JM7yNr/age24wI4vT3jj2+uk3S7NF3kDjJQSAdcE
	 LUzunnRt1EqHOy8XiwVgJBlNCXTI2H+Uoy1UJhq5rn/ecdNRI69157cr5/MRWvSG4Z
	 /4DoQJb4VUyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DA3CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229963370.27109.9485453550929783025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceca6962c5a6cc81e6d61023b9d841142fdeffefffe5eba27a59b34d7c43ce3c
Date: Sun, 18 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792299633
