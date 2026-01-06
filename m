Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CF23A1E7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767710634; cv=none; b=O8+3pYLHT+vIZ9+Lep0GVcMUswQ1+9PcHZF+xfEiswT8yGUttxwiSeQqLYKejFR7dp8rbt9gONsgMXkd5itZVKcHSLSfeX2ZLMzVD3H5pPuu3sXgW0XwwWj8Rm2GkqAczmU8Ztzdp/JDSHQY982vUUn1r92ko0XsPPO2EkP+JsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767710634; c=relaxed/simple;
	bh=e6nm9AI5CIJLMFMx+q66fvvcDUxwJGt3VDKVzJWtnKo=;
	h=To:Subject:From:Message-Id:Date; b=HqRWKgwuGRi+78D0uwCC57axEadlIDfzsYeRcBdOIE8SKzEnUSg1WSolpO9Brj/OkM9Mo4gyPGyNqE/Fo3kzQeC76FRTViVhnY3GMJgOmZ7T1ttZBy8e5QCcDLCoeJIfk2dvpDNmtRE3sJu6H06SA/KN7GyGJvsOWNSTEqMxFZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akHVMAP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akHVMAP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1B7C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767710633;
	bh=e6nm9AI5CIJLMFMx+q66fvvcDUxwJGt3VDKVzJWtnKo=;
	h=To:Subject:From:Date:From;
	b=akHVMAP+SqnLjGAAHdsRaG19p8r+r9SJz+k0g7ooL09/Og+Kb+FyNUMZgGVrFJzAm
	 tXw4yT8yXrpNgtPPqwdkpeat5WYoJuKxD9RNHhC/Vsh1Lb1OY09WOeTyI34E0qixAe
	 BWpvxIOdaTp2GTV0M5Zrk4Nh0II8aRtvOt+aMTDGyi9b0ulTBop24EIWKht4YEGvFK
	 xV9crFMBemujUkqg+luMRT6tGxxg2PtrL4CCXfJNrM95K43bYOC1nVCe/ZkEWeSF/s
	 yZULx3hnn6lZWJtcRiu+hywZBhV1j37K8dCK5IGPKSCt1sfnilnisO4mOYHCVDW/wV
	 qXGMdEfvPYUEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90768CE9D41
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771063358.27742.10901062514260614891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e9488824d940cbc599c69075a6c775b11b8802e4a93e90137853821e04eced
Date: Tue, 06 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767710633
