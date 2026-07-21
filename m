Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C29D2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784636314; cv=none; b=uN8qPm3NfZbvO4HX/u5qOBEWFun0FD/o7qhjpfHJ5xtBKvETQjps3Ehq23rWuH8DdLJtkj50guCw5wJLKWpP/NiUP8xSVBYmJlh5WWsZgD8cA4IX1FQkqUGUftYhJL1WUz41qEdu3+AtYOG9emgzoZZ6DPXDLuqugrvgpf+9/xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784636314; c=relaxed/simple;
	bh=o6EQ1PrcjKq02zMn3pXmWErxtjpUfgKSNeZ95WXKKqI=;
	h=To:Subject:From:Message-Id:Date; b=bXciFf+RUQGWIv6O1izCjXTBpy/+/xXwnFiaFccCv6mvj2ry46jicvl06/YTycc8ab+UvThlVuqJz75YqZYeVyT3b/OQpd7xRp/v66pQD+rFACZ2kNgc5h+ccv7Mve2y6KzPTdVoQ0Qv2dlbk/EVt/p7Asa+CNVqKt6qrDUo0BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diYBlGRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diYBlGRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC44C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784636313;
	bh=o6EQ1PrcjKq02zMn3pXmWErxtjpUfgKSNeZ95WXKKqI=;
	h=To:Subject:From:Date:From;
	b=diYBlGRoa7stcH+/PPURDLbUTHnXb++F3wCEWitf7Ag4JEDEUcGc+rHy9JBlbvqcR
	 e6MYPYHrKfWhPQZ4fvoqaIapCWqh24frQET2JvQiU2iTXrfu+KyXFHHoEuq1RM9+AC
	 GsGFPALhLKpok/z96QW8gKbi/Xy3K9o7wRO42R6SEif1XGVDfVlnDnZ82VfwcrqBMA
	 XLrfJx+rxteibd2Lk3kHdajkCfQ3GY9x0rkJlSGiGc/f8KnMskXxYSkrh+yGQlzvSI
	 YKtafA+faw0lDvBPMEBsqvq6DIxg6id0KqEKdVip3rvEaMbPLnb0tlUqKmvEusLrt6
	 2FOxhTflYRFzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC56C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463631369.25964.9607681745979322448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320d199decf7eb8c889bc75d931cbdb7e975c1cb65ca702ce2ec19ec5bc3e29e
Date: Tue, 21 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784636313
