Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB35101C4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720059323; cv=none; b=hG05kphH+JVfrGTF1K70iZbXMq/skv/qAvleaPvxG5Yp4zIkporlMvdd4bDnygtp6hkF1esGeXbQ7tbdw8q/UmA9Lls8fLZaVqq5qTbhM8OZrrfxSuDNU+zDY8Vl0dvYLWzXG4Li7JVGbXgTLiwwoFbJzbR3gGbaJoNoL2qf9pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720059323; c=relaxed/simple;
	bh=K1Jtt0b6SzzaOD0UKS9HiSQGcClWZYAS3CJUYplAHG8=;
	h=To:Subject:From:Message-Id:Date; b=ExoJjIUzkJtzfa1O9LTj/hkCLO8Gpe71DrEWYPvbDzT211GO3b3hb610btEwCttBGCUtVT20Wiapp4EcK2svmZq2lKIvcWcdtzc73XbrDnKRXWeKiZmlWd38xxbhWnkNnrfJr+HR7LOCJ9LZOyx5juVu4DWZ/BMf2BQ0Y7SN+ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hij6I1Dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hij6I1Dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42AFC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720059322;
	bh=K1Jtt0b6SzzaOD0UKS9HiSQGcClWZYAS3CJUYplAHG8=;
	h=To:Subject:From:Date:From;
	b=hij6I1Dx1s4UxbCqIelNkYYWRQc1u5xhK7+ZT3VzhlHllQbEG3RrcA0MOz9laPOIB
	 l6rTHypjR1q8QOGeRhUi/BNKpU+LukpcnSVLCkwW58KOZ5OJjh7ujFwdZAPFso2YBv
	 EZRKjv8TQxnMIajl8fVrMvHu0vlNhaflPmOVa5x4qI+eiOJhuECHlIDSDSu44hfVXf
	 o4zWydnLrO/FyDasj8Tto6iAjJQY8uzHA80i89/IiKkBGDmFQvE02HnXbxeAjuuUNK
	 cGe7tMuNOle2GKaE+Y6er5kCTSUAj33Vn0aSF8IG/6AT3mcKYVV2D+1Fr/XciAAAB7
	 vNw49dDLSL2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF1EC2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005932280.10666.5139069826041149101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec43d5dd21addd1c1ede820c0f659bcf1cfa7276aca32b4939e5fe3bcadb8bd1
Date: Thu, 04 Jul 2024 02:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720059322
