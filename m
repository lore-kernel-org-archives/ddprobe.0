Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529E535F184
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788933634; cv=none; b=bN8GVMGztEmnt+X520kNDNytLDMdpPhCg8LohGkL6+8SPZRoenV94Jm6Ivz64wb7/DjsIPSaUSOEo3JOUDMqjPDSJN3H9Ot4gAGtsd6jFAt2TBln9OvAty/0YeBlac8fh/GVztuPqJ84BLBCtqiV6lUfpeQnOcqqKJwr/b7VsNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788933634; c=relaxed/simple;
	bh=FMhSpyKXbUplt73P01ruQG1l7ysnC7NDssRflN8Sdh8=;
	h=To:Subject:From:Message-Id:Date; b=K5OBicAEZh4SktE90DPz1b1Sdc0oV6Uab8VyuW2qLq6slWNU32DbRfbRf22f76o8Pz9PihmtLOds3jLbiqPbyC/UeByTeKLGYwzwfxao7gmQ+NQLJTeEUlbvFXlQvCRKwRCsp3u7k6TVgmmn6QK9ZFiLgwg/WES8X0jkCc0Jx0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZ/DfCJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZ/DfCJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA79C2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788933633;
	bh=FMhSpyKXbUplt73P01ruQG1l7ysnC7NDssRflN8Sdh8=;
	h=To:Subject:From:Date:From;
	b=GZ/DfCJq4JQyKGZWyVdw4XQLDV5pTfldBGZmHnUAM0wYxWFyN9LohbIJAUJAC8EVj
	 llxjfQHp0qHy88SXlgiagIfQYhM327vXwh+a9jCz/LYoBtb0j57Q1bw98EQXjNIpp5
	 RVpmbAiZ9nImS73y/Pq1D1zDDwyH1MqN169xM48OZkkE+CfRgvflazxcejJ9XP0YoQ
	 k4FxKPNj/sjWI3lV03B3qzxFpFq96mf1BNUHrpqMmu7OCcREY3IcPDzHE67nXhjYLY
	 YlJ3Od8hGazKj3GoaISuzTAY6mPW3UoWxF6vbmzrAVGypvP7SdeaCix9C6A+n+a3lB
	 PcImiynNUxF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB720C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893363369.7438.4890724557487267688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26e842250d514e3140616efec2a87d052db713a9642b4703fd747f854e308e4
Date: Wed, 09 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788933633
