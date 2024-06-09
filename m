Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C23BA3F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717907843; cv=none; b=GjY1t751lWdWFyGzVx0A+Kjgbp/8pcTYVT9MI0byPY8T0+f+udBE/mdd1VG66EZJX3vn2mMSzqzwgnrURGx9euhXbRBqX9viJHWJkBYJBe0bloFOI7Vtc4plgRDVZ5Wf+kgC4/YIUq5McyGTMbYesng1DNfihLyONneFl69zHsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717907843; c=relaxed/simple;
	bh=TByKn9ZYSeiMXad4HM+3l7o/XLjXlR7ialafhWPhLLk=;
	h=To:Subject:From:Message-Id:Date; b=G1r8VXPLxB2/qf0y9PfC1ZJguUXiHXbVGuc75jMl+DpBNuKjyps6miBwc45YuZsSW/EwjXidou7NgFoX6eM3g9j/vPJUmKubU5NOcOf4fmwVdMky9kJuCcYxdBD+91JZ8BG0wiWlEy+uvuK1OD4dxfKT+Kn03av59OUou0iMb7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILGVmdL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILGVmdL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C22C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717907842;
	bh=TByKn9ZYSeiMXad4HM+3l7o/XLjXlR7ialafhWPhLLk=;
	h=To:Subject:From:Date:From;
	b=ILGVmdL5GffvPW1t7+ABNdjziR0uxRiQdgJ47mjCF24Qni/Ua5kfJcdo3VCE7ECfv
	 8P3FhV2LB0J/SGAmo5HLhQ3I60tVxQWNSUt1un93GAh4WNRjORJ4UkXphP10bIYCoZ
	 cA4sZ0r8FPC0TIWGIXobFJTqmQu7JdDAR5MA6FjLBxGjxNmCxFGDgvbm2LJSVFgFKm
	 TRFiOs8HGA+RcTUcfxC0qKU4B2fPd97lycPuOcjOQo+e4RdRBdEl0Tbo6PXLmV/RX1
	 dN2dy9b2PLE9I39YnUfisdZpxL/qVeaVdA8ZBEOo0basXr3SaDmJsEad9r6os/HGWq
	 0YcrxHdIyKgbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD87CC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790784281.24237.14999084296769296975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0ea301b20db353914b79ce26ccbf541a19efb29ab58e758fd681041ea56ec2
Date: Sun, 09 Jun 2024 04:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717907842
