Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5222689C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784338714; cv=none; b=XclfzBvXqti3BWZpO6kSXU9z3mIvK/bAMfF7PuerdcYT1TSX+YMcKLOtCI3MkQRdBkCwesIjiLVm9P6I+xGaJdU/uVIJ9YTuU/jwjJFOW0G9HZsd9Vh/9nr527vO30MqRrX/9RFkI46XmYAQ55f0CMJNXSnaoyoyCb6sQU7KJK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784338714; c=relaxed/simple;
	bh=eaeKebfM60NO26c0nJU8jP6fmmYqYTNrYQJn0iEaOp0=;
	h=To:Subject:From:Message-Id:Date; b=Uq644KGXMuUO0xqmE5YiRQ5ela0UuC8yQ8fhcDUleR9svXECXX1YlpEwlNai0aiKnC7dyjPr8p3NvbCgAKD9QWAnhSrt/c9yk7S5p6k5hJ0QoPCQW53ZOP5avrt2CxOHOxq0mGQdPO9EbTenf4ekGabAS57Rhp6tgrK3aT2SpQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyavaQs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyavaQs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61DBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784338713;
	bh=eaeKebfM60NO26c0nJU8jP6fmmYqYTNrYQJn0iEaOp0=;
	h=To:Subject:From:Date:From;
	b=CyavaQs3JIzHNlvZy0RIrPNLIYHpz+O7ShlDRKrrxBYYtvCJQbhUj7qE2UVfd2A2A
	 FY0jf8iYW326tfADxhOxvF5sLbdssVyBvrbYxNe/4ueaexxn+5NDl9Y8Xy8YDag29n
	 EUaEWq9z+DnpAz+eaV5aSHd9NjXLVfj9qF8cu1ZaCnWoJDyqy/cX0FiDUnXMu5wxey
	 Z+BFHrSR2WSAja5M2flRlYZy+FRcs0H2YALZfVo6QjmABWrWvcReMUbpaH/eUioevg
	 g0A1yh4atQ0HXQwlVzBajk57UIqwXbONdVZsaVaIg19ZFdOyooMDu6uoQtKoKDwaWW
	 W1lMpykus4wrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A8BC44520
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433871369.30176.11846914025287049250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17f3a3910148799e7e97a2598f67a95d2de1f8700217c75ee9c913743f75710
Date: Sat, 18 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784338713
