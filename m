Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F7B332EBD
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775208934; cv=none; b=JMsZFGNfrqVtRh5QwPbwgzSvwdlC0vyNnIXN9vkXF/ke3rixOAoM/kdi0GlKkluZhs2udIa6P4ojL54jzffdUS3YaQb8vz97QIJLaARN87+2LHVqpLqDUyLA/5eZ0sFc4x84TihUCepA9FkSN0CG+3rUHq4w/+/+j5yDkPga9sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775208934; c=relaxed/simple;
	bh=OAkKtOaefBfHeyTyxtirIretlbA6u1Y/kA7Qfv74QRw=;
	h=To:Subject:From:Message-Id:Date; b=OcRIH33nvHmABtqqB1NzpSf3t1jdAB+Pkk2Hir4h1y2tETcXVvozWCtR66INx8PhmTq5RXfQCXCdWhBKqdra45PGOYkfGdVxuad/UmqoIUdIWQeikHX8hbDsnWESprCZty/e0qXQLrPWnLDuQYElNJV1b7ayWVZdJnygCjtiB7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmGfKJv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmGfKJv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEB8C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775208933;
	bh=OAkKtOaefBfHeyTyxtirIretlbA6u1Y/kA7Qfv74QRw=;
	h=To:Subject:From:Date:From;
	b=fmGfKJv/99OovVIJ1P2poG0m3L/I5iwHTV6BkhYXv/wGWQQzfUJU5om9t9wMHkyLX
	 Wm8CVLX6cJOunOpgm0h38BVqwRIqNk5CveEfY18Gl9psbbibx75HCH79+LpdxtIMPb
	 3DM8rBw1aDlCYde0bvUhM6+V3BTF62QmcS78+2Qkb+0NRAEJD1CnS9hmhGfBb1XW2+
	 5GXKSdfdK1O7fPwf6RjhOwmEK0FO6c/mNwxuc29ew7V2spE0AFIvYcQydhl+9D8jDH
	 03L5cXaaLeWrCc57A58aOoJ26lHr/Ih5+G6EhU/7phivdgxaVKA+bVwnTNShoL0L4P
	 bjcIORUvu7S/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB67E7E35C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520893368.9147.11178544588294382039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12abb9957202d9a9e85cb9e86c8cd44c28b6ef67bdd898db394e2ece39626535
Date: Fri, 03 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775208933
