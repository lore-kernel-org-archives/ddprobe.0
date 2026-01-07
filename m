Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1542B225A35
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767771234; cv=none; b=vFuM1YxNxyeh7rXe7tKZIGs9f8IcRwR0SWlMFSxYcfEc5Sh3hJqkglRIAurzGYXho8p+87h5kipIrVsu9b+ca7vKZ1kmg4D07/sbDlk1p0yJxmnr4rp8V1bIPxvtaMclFKjMUaCib2MGGZtr38eCDljUHo2VTSHRv60hiUmWIzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767771234; c=relaxed/simple;
	bh=aZfvhimyeCAG+6iKAF0/wyy/cNKTLd7YlP3A69Zkcc0=;
	h=To:Subject:From:Message-Id:Date; b=Z3c38xSf8cKjwJlHx356xFEtG9A4B3TikTs0H5Mpdq0XXkdHwl9xtmlNTJm0R24w06icBsSHx7x/OzAUPqwyfIPPgYTc0l9W1oxYRJfgOKa55m5gewH6ga63o6jcaQ2wqEBNppNke19AyNyrUSLKaH02KwZd8tSy9iC4kEnipQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0Sc7s0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0Sc7s0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C21C19421
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767771233;
	bh=aZfvhimyeCAG+6iKAF0/wyy/cNKTLd7YlP3A69Zkcc0=;
	h=To:Subject:From:Date:From;
	b=W0Sc7s0bVjoby6yHYm2Asgk18bo8pG60/VInXxxgPWDOc59/FApgGy1jRuvJ52+tM
	 MB0m4vRIwChTTBzcnlikfQqgIB2MuH/ZI+EnxlcZZ8x3GjCzXE0N8DAEO4Oyd6prvh
	 f2WOEpc0/SkTcp2x8AJ+R7X5nU3N6m9vl0EzwHu+Gyw05jZcv154dy2hzZJW69i4m+
	 +MW590nNGYcuoIl1PSxp5gvIlt1krb9mMquX1hKs9/n8klI/02Wl+BOLFGLW2YV0Xl
	 hh4uoo1uH18GUt2WXvqPEctCmWspP0N1du2zQ8P2EtDBZhkN9FaA1GFxmnSpPrHoVO
	 vUK+IW/x90F6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3CCF6BF3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777123357.6445.13962252920671548261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a324f9a105a8c65d3ece9a13e096fdda34c8fdd9c12ad3b49d5d0c0be4f3127a
Date: Wed, 07 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767771233
