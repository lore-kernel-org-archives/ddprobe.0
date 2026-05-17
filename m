Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42786C8EB
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778993434; cv=none; b=efrZTfpO0aE0dc1DuWIxsWfipyYaWr3EnKD6LrKX53M+VggdLR2vyz/xiwMJEGd0X8MUAfKKKcNJazy8ZNzHvvjSxUZfXEZSTynK5IvNN0/7HHd3dizEVEwLSzSCe/JiiSo9kqO32YBJz0lnOsxDQ7ps520q2otCkNjmMNhCx1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778993434; c=relaxed/simple;
	bh=OdM5ycXuVuXTKXFFogM08gMvwCa4rlajtQfSI1iV7go=;
	h=To:Subject:From:Message-Id:Date; b=sASyQswuUCg+nXvCacdsD8NnSY+8tXrRoTk8uFexdM+xgFhlBVjm/wL6jK0nJk6BeSvS8dj8p9etNlDcZXDhT37gjTeYicWlR8rRQKfno9SvUpNowOqBaj9gl8p9D4kl5JGx7C9iR/X8JllDC3Apu7TrzGtvX1qAWYvy4to7k/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/N6BqoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/N6BqoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D37C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778993433;
	bh=OdM5ycXuVuXTKXFFogM08gMvwCa4rlajtQfSI1iV7go=;
	h=To:Subject:From:Date:From;
	b=t/N6BqoRV0+BgE5Onq1gPJShdyX35C+tVgFo2uyOoo7oeYgRzu+hMawXVX4J7E5DW
	 NgXWit1BjlIwrqWMtLnzReL8+Ees4vdq63TWMvIaoEFeFKK3geSYkIRuRobnD9GEUV
	 KI8JLeAM77uToyCFz3L0F4Qjfh8MGSOlBuX5r/79/4nam5l1pol2HWorXL65xY3uVg
	 3Spf4M2+zx/gqHU4cHDWb9xI2AbJephGxVQ4Iu+2/ASUVferOMI4c21pbWYOyAGbAt
	 jaL6aYwR0/HenFIddHOx6dLEcmGtrqvO+loS2h8SpE6Hwt2DZhcxhbx2itnJOL4C0S
	 cIjy7RDrx4/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48B7CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899343370.11363.17860358349197639107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27245dd5cf2824c6e42b9367f48c9b4d3a76b428bfe38e4f66edd1895ae26b54
Date: Sun, 17 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778993433
