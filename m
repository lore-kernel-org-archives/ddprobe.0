Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1845838B149
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779130234; cv=none; b=aaSW45iHG+nh5Q+0952vC097ZFonnS6km9qymoBUzh5lHM1ixgtJbPWQVgJYip7Rj5DN2rYlVqnUTqkdpoBE/ePBQb3q9ScF6W3m3BRCp55ZSwnrOzH055SEqZolF2OkKswCzOkYQynLZ/O0bnd4iWSZwNLKTsvIw1he2xqhHyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779130234; c=relaxed/simple;
	bh=VS5LeEnIZy91DM6YmyFy/H6mXSkkT7TQChwVXQATYm0=;
	h=To:Subject:From:Message-Id:Date; b=B2a7gcis1/ykvCOCYMMn7DqZoLPl+wRfbNWIotpGRaIIVCvZA/ptpZpslCoTE8L8vwLK7w7RX9utMMthZbuRkVNtt0eTut459epkYEaYY54U8U4MXlqABAq04JgbAkcGRxC9MIG6579UHpkaLUuV7wYIDwlUllBZps7W4ruJPOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dP5x0hdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dP5x0hdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEECDC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779130233;
	bh=VS5LeEnIZy91DM6YmyFy/H6mXSkkT7TQChwVXQATYm0=;
	h=To:Subject:From:Date:From;
	b=dP5x0hdp2uVmcAZLm/wRSPijGvZ1KOwaao2OtUnZ3CAEAOyAx0Z93S01+dVYvwwtR
	 LCxbKzhfFew5xYfYlFmsIyrbAG0ZoVijgafA9dXoO1UxgQ+4I5NSVjRbrIdDlhH1J+
	 utQFqsWtOt35nKQKA6YyljYCGw/ubTd5pkDMQboibV4bqYaXHSZTdTQS3p94+Ii4yk
	 e4Ahq7KXkDS1g3Sj2DRtHYLK37DC+L0fe/TfvRSfdKZevCS+PZIPqeMwpuEmr5ht+7
	 PlFoTvQtfDMCzFAeI+vqVuwPj4LOJUNjLqPWYxG86twr0cQxGjM5qSiRSRusJULxKX
	 AhABVXVZO9SmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D7CD4F50
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913023368.12725.3228617840119993510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3cfd7f2102e363c3907689900c571cc6e3a1fb6f6e4197a4fc3bdad5f24cab
Date: Mon, 18 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779130233
