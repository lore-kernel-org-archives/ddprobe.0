Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3744936657E
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770632634; cv=none; b=rrrqrzr8xutmq/oqAig+LfSZshiC3Q638i0fiaYI1uNFeIFt7KjIkC/6K51ElsVjcAr4O27GjDyRpA/PZSeD5ivg01+C8T0oU5O6MyBSZo//c7PseAm6pURd/4fYASCf5aHX7lovybl9rGatp4iODeBORT5vmF94UAvdEt35SqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770632634; c=relaxed/simple;
	bh=9tn5OdTfvJRJMnJtn0zrhJfL2mT3rEGUHKp8uhJX0dU=;
	h=To:Subject:From:Message-Id:Date; b=qxOKpu+nzBLAAXWn+e7f06zloB7gT411MC02KOz1GEltqwTQtCaLcdDCShdG8jy2Z5LVTUFmotbH7veDt6hZL0gbaHDY97IB8Qrs/wXHmEfa2awkxpVDY3fq8lwKJ8hebhiHGD1EXikE3XeKKYwAVrYdBNTb+MvQcCoyq7sqkn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dg3izCwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dg3izCwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE599C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770632633;
	bh=9tn5OdTfvJRJMnJtn0zrhJfL2mT3rEGUHKp8uhJX0dU=;
	h=To:Subject:From:Date:From;
	b=Dg3izCwlPLJqVwerT6zQMywbGdAHpxpYtff3xuAWga+fxIl4wEOm6TlcnSpJ6AIK/
	 vs+yaBCCJiWS3JPQa3LyDmNshkRXxbEDFmE8RxybnKzcY+H4XHqf3xXZBEcQA0SEq9
	 0ue+Nea+ddI67cBZ98FIfset06RtjGT/BPQYsHUFUKEPU4R/f611ouIVmQ0xMB2/l0
	 Veq4kzfkDrn0xddDUp02SO9iecXJk3MXEBwqZ8kaJBW3QC1uqP5cqyL5TuvxaepbAQ
	 4x0MkmR4Bl1VRcdTeN8hKQAJWZVwiQhLuXLPn2m/yneFobW+VbHkhEyG8+3QT8Y2Xv
	 1kEVZ9PZYIXtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0383E7E0BB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063263364.7967.665273747630881827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945fba2b6c5299ba4f905b83ff6f62eaaeeec56211dac1fc8ba9d42f2a0d097c
Date: Mon, 09 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770632633
