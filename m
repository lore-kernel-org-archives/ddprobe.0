Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286F3EEB2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754181594; cv=none; b=sRoVCZGrYftP1d8Q8dULhjE43yF224jjma1hrdo0U1jGTqiTMelgK+mEc4wXpj8bMfUAriqY41fAI67y+QZcShGqUIVySJZlEfObXjrnfZGwf8Z6eP4sz9FaUwBkLXFyl75/BMa9B27nyOCX1OfQ3FD00o8ayT28DrB4y4bXSvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754181594; c=relaxed/simple;
	bh=xy/BMuCC8nQACGm356AWaOi1V8OPJlUa74D9ebGgwx4=;
	h=To:Subject:From:Message-Id:Date; b=tyo2uFo6xaA6ep1+VpFrpH80TGxit3Ff4Vmx+E9mpac3WKsmL51PSljPauU4pwI/lY+HuBHWPdDUOVkCt8+wunewovukgh6IPL99tGVBBaiJYgDmHjxSIqf9lEd8n9j42h7AIcRIq3cgeLJ9e/FEPB1hJS1dr7Ninr486uq5Va0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dE851KFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dE851KFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B60C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754181593;
	bh=xy/BMuCC8nQACGm356AWaOi1V8OPJlUa74D9ebGgwx4=;
	h=To:Subject:From:Date:From;
	b=dE851KFFmXDthtaYPDUB+vZRSURBIQL8YeYUtm6FTE0N6WLXid0k4b+p3a6rTh/KR
	 KlX/81PMAQ3NjbMhQuJdu9amjwElnPA4xrYER+zv2v++YXOrHcsSB+XiHpwE9DrTfn
	 q27eRd6+i34G/s8CkVSE3nOtaaxrZnW2jaH9Oi1O0suAFoka7I6EOpy0b919oCqq6v
	 PrXV8o5zqk9teXPGYUnpDXf3F5Gr+5i4Vam8s0aMS+7lG5jk7IIHFURoerpAakm1oj
	 erGRLT64qt0iJNmu2vIVKRnOu+Ryoa9G6QEADatpbCiEkeQ9hW+PTqythlWAqdK2vt
	 AWpF5W7Ju1+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256DC87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418159357.17952.5814770365433347919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a400fbedd84c8e8b779b05b5cfa937345f1c317a04b18b544e1c44a897cef4
Date: Sun, 03 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754181593
