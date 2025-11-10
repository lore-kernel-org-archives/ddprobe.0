Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AABE22FE11
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762762196; cv=none; b=hKp18HNrdx9jMgO3HbaX8bib23s8jVCGzF7LJ3lkySVG+nAQr1qzWUGhfkcaxONBvDn+u+T5K9yKL7uFQdaUNaszrsJe4P9qlfIiVBxPMsbZ4hk5UCkO2jHm9Wc6NduMMWa4id0qOdz+tex26Sbv+vg7b7C6Ybub8SM526dLI88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762762196; c=relaxed/simple;
	bh=X4m5akt7xAQOqJO9ZCKy9/esWGZzJYjUIGvDJaEPLLY=;
	h=To:Subject:From:Message-Id:Date; b=NvhPodO3ngy7yJgfU40YPLJQW6PRhSNyiQ3BI6RPMg4aq/1WgAMF9R2tM1GT2deyKWlhrA28+R8QpdoY7qxNEKyv28/4CtyjB8dIea95ZjZ3wSJ5YvvSFp3h+Pz1j7kU5J62iezp4/zTYuZcq0b+MdzeIirZ1+OUBLTytvc/maU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4W5xAO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4W5xAO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE1FC19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762762193;
	bh=X4m5akt7xAQOqJO9ZCKy9/esWGZzJYjUIGvDJaEPLLY=;
	h=To:Subject:From:Date:From;
	b=C4W5xAO47RSYLAd1ee2m6sv4ttjUsWeNqewr0PYq+K9zaMj0CgClukLn83wmJZRhw
	 FN1L3VAep08nOwnIExsLa/O3V3gzFKgTiv2M3NA4Wx+wTR1xNPFRuuW1pJ2tu0NR8H
	 yT+6ag4RaU/sObnSFI/OZ315eT87RmkI7XrUJfQFH8Uu9O0eQ+OlL8q8FVH5HO5Bs6
	 W8b/pUI3klfM6vskAUTqmdGqJh+SXP/wauTjJgSujpUrtcVPOT72rRolIkcHVc5O3n
	 p5fPZ6hdcUXYqIkSsaYt6FG2SJTB1KWYwKdTkNKfz7bOAqCmzL0a5cgiXyCOY+TWEB
	 vWvmyjkdW2dNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD9CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276219358.4635.14279987612474449602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f4a4678303d759a1e4dc1b2533a9f0efe06321e63d2d87c00ec9cc5b767bf0
Date: Mon, 10 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762762193
