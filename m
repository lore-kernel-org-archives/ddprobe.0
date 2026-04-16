Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08E3A6EF6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776352054; cv=none; b=bmhkhtAJcvNIQXw10LAztJ5bj3iTayvwl6e6UW365yIYCQHILD8l0k7uX0iacQjtnc53OIXaSiv4R5G62hfk9e57mkUfk5MCJHhPKG7W513V7OiK8W/6Qc5o+5XuZf81qjhD8lQ3TlAU9+Zp/o/FiZ15q8bjTWDGzqFgzNOiiIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776352054; c=relaxed/simple;
	bh=ZD8qQcg2zPnrV8XhAqDT/HNW3S20LzlEZaUs358q/zs=;
	h=To:Subject:From:Message-Id:Date; b=RbsTv+PmBInmIUYt2OVIB0P4iZrATUzMhJUWX4/LuuEm41qF4uGVfY7g7tfDCdDwDpYc8j4H2K75A+qSXv2CHWT35+CX0vvdlhzaK5V52qMpvKfn77ifQIMMN5EZDDn3akdAHQA31AAK0o8GCAbMAULa3u3WdM279LsuIW/peF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7D4ZAeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7D4ZAeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3DCC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776352053;
	bh=ZD8qQcg2zPnrV8XhAqDT/HNW3S20LzlEZaUs358q/zs=;
	h=To:Subject:From:Date:From;
	b=u7D4ZAeMWf/u85au6LkJitJbB1N61z9+jz0WpdxX1zTuf8/7ardFkEINbA3BgzDiF
	 sIyP2ulsj17RrTaSd9OEAdJnyZMJ10hif75KPDIeqmeXQXrILkSF3jByLm9Yh0M6Vb
	 662u1vIFU++IOerFEWdknmuizbvXkFQQu+F5CgrnnsTDE/gl2oyV/BJjzze9rnqpXD
	 k8Ip7VaPXvfsOLijENISGSdTUzWsz/JoBgKC3ca1S+vrUp8sutQaR8B0BI4ByEoEV/
	 c9BhrOi7O9i3MdmsRKjMMqXc84JyLa/qtZVcH4Pk+RdDL3zZI3U7ShCaY8UIUVfxPj
	 DskE39IAkkA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BAF8D753
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635205368.26797.12521445900706012277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d083d72b9699dc34572d7130560634134d147dacf15563f3fcf44e8dc48955
Date: Thu, 16 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776352053
