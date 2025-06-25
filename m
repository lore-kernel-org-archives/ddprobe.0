Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890CF8488
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750819794; cv=none; b=RbspzWXrjx+b7kOdUOI2EgZObh0qjX+Y4zTr3IDQg1eCF8rMOPctr6ycJgs4txCWwr0DsDV1+H4j/boJQzcrkhn30R8DjbucmXpVPvsH/pij3C+cr9ynWno8dEfDx47gocs7IbyaJGqUa43S0fSUStxMLcFnpE3/NvBU/ByUQ2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750819794; c=relaxed/simple;
	bh=FljM8jVudbhGN71KbTAuE9ROPGRKdlHXQ8q4u8gk6wA=;
	h=To:Subject:From:Message-Id:Date; b=WYzlmpEW6xjGfG8ONwC0oq58L0TU/2IDf0xvr3JNe28YzGDtNG2PIyp0yqeTqkU1Bu70f1CneGXDwgA5cqHvX4+qJ3VVRhG5T5bxLNDYi8+I0bsBA7LtcDatErHwNqiuA//pgoFEPAaWAu7ZoQVLWrvhIE4GBCUpLeqKSskRpVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuM9MMhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuM9MMhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4487C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750819793;
	bh=FljM8jVudbhGN71KbTAuE9ROPGRKdlHXQ8q4u8gk6wA=;
	h=To:Subject:From:Date:From;
	b=YuM9MMhCZtMhDp21I3xIk3mUTTkLOjb46Y5DlC9StSXzi2FH225hqkvkREQkm9quk
	 werouvCBoybqU39rICtjC1txlw+u6oRhDhWiW5znHU74SPpUHcIic67qlD4dUstsYx
	 HquhBsgFTv+8KXYWmkTfzZewpm/8atn6bFEi5vUPXoTkEvj7kPrddVN1pt3sVZanop
	 wvgTHh84tNUb+9Sy3kwbNoUBYTtoMli3xFIQn9n5sCt5ZEsjWminbupOIo13VyPzz/
	 CMNuYZPb0ohDvSZAVlS1lHQkZaE0lrpTnCIeU24t9rylPtIKSqmSlm57etafP6HCWQ
	 WaNqOLylMs2Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92001C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081979357.15512.2694899000575441980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41092f72d5df0ba734c19acc4a0df2e704b90eacf9d1cf983cd4c743f6b39ada
Date: Wed, 25 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750819793
