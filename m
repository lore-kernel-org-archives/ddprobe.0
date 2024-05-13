Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D7D171CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715564543; cv=none; b=ReRQ6NfW9xYCW/rtiE4M2mVhX4i4iFniLz3XZbv1B980mgLEEcAG/5TXq9Zb19/J44XbgiO4iM0R0IzCO58TlUYZdZ2hGjJFhQ8TDnrOpH2hcSjgpIXW076Ete5oD8EUrZaXA/E8JcsBBRllGI/flm/KY9nS78qz5UhobcNED9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715564543; c=relaxed/simple;
	bh=8UqTewRpl/qU1nIgdsQ8l7oboyhITjh2LbXR69Md9I0=;
	h=To:Subject:From:Message-Id:Date; b=ppdI0BNztLO74Pes/hvcQt1rw5GW9P31YHHNcn8U8RQ/ybkPdQXL7Qc95gYcPVU5utcZvdPdrZ7hnUzHD8Ci3vevhtHacsvrjcTMOMxYi7fWnLhwccKo46SKAVTmggN0fSkkljFDUuBLQbreR8UAjY/onifu16v7jFsK/+DYV1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QezDS/RU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QezDS/RU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DDDC116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715564542;
	bh=8UqTewRpl/qU1nIgdsQ8l7oboyhITjh2LbXR69Md9I0=;
	h=To:Subject:From:Date:From;
	b=QezDS/RUP01JLACEcwy0dGH0gKzHx6/P+ufmx+FaLytrOvQXUeg33QtLTbZkaisHz
	 PwTVLwnC1YCUGUChGkWXWxd4oaD9jGpcGgfze7DnA895xc+Px7e6jge/I+WqsVA1lz
	 9yD0skoyirjdyUZsdy5Araq3mqBr9mDlYRFXoIb1F0o2Vu2qI8LQHsKwklWQ7gTXdf
	 U1lTMFvsNAbEGHFtuReHsYaCA62dbMkC7fgqzIjksFMavFIYb8kPVa67ddQbbFwnmJ
	 FSZpnAOAiE0Xe40Sx+o04kLldDIl0wA0QZghzbLx7qhOJjoatfGs5niIRtaZXOtRxR
	 QAJ63C06/02xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF32C25B75
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171556454277.32589.15060744630738864116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee791a1ce9935b3f0fca52a1cc03c539bc417557181a117a5c705602d63a9d59
Date: Mon, 13 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715564542
