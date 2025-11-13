Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE772DF6E9
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763027994; cv=none; b=Ub80mGGRBe/X1fdTYkhB2yUC/Q/0ETtBhZJz/jPEkuv1B/7vYxaDtv0AesXf/RKsMbWHAfr06DPAcWSriYQnzfZBoBeKdZ8iZuNv7VzJpBtBqb0HN/S4aUZQqF65nTTFMZa+zTzsS3h5CGdGRUGLliRBH2iH+Rp8Ovx6zT0hEzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763027994; c=relaxed/simple;
	bh=vQZ+hkUlGFG0q2rTEl6a4ehuiz9UMe5O+6GAkcpTlrk=;
	h=To:Subject:From:Message-Id:Date; b=PE4KfzsC8bGI3necvgeNxwKqEXo14cnFI6uKcRaQ79zPQYY9HLUNa9OAG2f/mp8VDDmuquwUrJH7MmELWFy8qhb+9RkomENYnL/ZXOfAfwhh+OudY1P3lGyC98Hhxzh5kF/1nRRVz/CoxcllAAO+prfckBjAAYbanw3eG5g28Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL+T68jC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL+T68jC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC94C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763027993;
	bh=vQZ+hkUlGFG0q2rTEl6a4ehuiz9UMe5O+6GAkcpTlrk=;
	h=To:Subject:From:Date:From;
	b=BL+T68jCcoy4ClHPKhHvokkhahQgPvKY7HhPjkGpQuM9P+aDJy9Kq7518vTVOe+Xw
	 08Mm1l6+4zph/1ZY2gtJcrtf/ZpPj8wlK2BWFZJCA6/TDVxuKILVwjtPLrtYoif/Ay
	 AV3sqMwqaUhi/COx1XhLrpU6ONqzpOh1/DrM2o3cQbSuu4eCB4PqB1LLMAYbWBErg6
	 ISi4KZ8Z9JZQyUrKWXCaOZ7wVxCLOOls1xG4pk58zFmOd3piiCWw8X6VrxwT8DUyh+
	 PYoxcMPOnnrPbHKzTupq0XDpIkuS8wkmNoDhJkTDEPoLtVMny8/cst6h1wN8yc+ZL9
	 lYQfr7UByPvpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D5CD5BB1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302799358.10425.11943887379572422615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d498f2e834f27a86aae1e769b2e139b888458d82cc37a17f39a82e72d0db7768
Date: Thu, 13 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763027993
