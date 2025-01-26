Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512DA38FAD
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737864354; cv=none; b=rfZJa77U+A193AiEur8rmZwNZ4635zUe46ZLsYqnPqXoKcAXhc0qACA4330yTyp+bymhCT+TGPn+WwhiNsCWku/FggedtHdlNnIVTYcs68F8fBilrPHZFJybp6yXbnqNYa+uM1fn1ZSXVl9MNDK9X/5zVHALLQbUQtlG4naU2VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737864354; c=relaxed/simple;
	bh=13os7V/bq1TmjAaNc1+nzKqtt/zkUOI3QnZtTIJjO5c=;
	h=To:Subject:From:Message-Id:Date; b=fHDA7PC7BTmdSwdi7GzxfDMF+sDWdVYkeI2/iH+7otTpXvXQWnEeqBGdor0W+SF8lEClBQ3C/SkTZAzUZ08JDHTiRSeF02SLFDMYuSQapJAuA/anArtCvGVFDXyEAzMO0GiCSLzUdpvIVx6vWnckPjIaftlmduhRix0o/M/FAes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBSIfqXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBSIfqXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74AEC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737864353;
	bh=13os7V/bq1TmjAaNc1+nzKqtt/zkUOI3QnZtTIJjO5c=;
	h=To:Subject:From:Date:From;
	b=aBSIfqXCBtDp/Gv5KZUyrVPhX6NuAZpjYI5s5+9WjTaDMzi9IBdh2g7dJ8wAvQsvg
	 SDEK7ieAM/EnxbZjIUOD8nqO1UmhWFP6NX2mY1O8uV0kxVSpcj9mLyaDPl8CAAXXZ5
	 yeTeU2OrFqB7/thzrB0AqpzwoJ8ODhRlkdDlei4xOOpbFqZGn7w8hvK18A6rkV/oqA
	 IoQevlqAy3vGmJ0oxJB1FsrZUupSYnL/SHWhcw4TOBKexEbzHaNw63EDiXVeJH2S3X
	 3KfQYX/EvfewGzuw2votm/la6bpQsRx71rQ36writU36+gPLXdyB78Kb3j+rXR97k4
	 oi8vmTCRGgeHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9495EC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173786435357.11778.304135962336074057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c39de65fbb4b5ab617de51b9f225055e54b064d387ec5903402e6c40b8c723
Date: Sun, 26 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737864353
