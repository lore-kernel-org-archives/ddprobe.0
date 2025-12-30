Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029C8320A34
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767106434; cv=none; b=Rf97VNgq3br3jMkStd2xFTr1O2ZvzlNC3DJEuYCE0n14Cb+BDvmLC/vLuWnZv5p7QZBF/3xC1tGMjojbUn1LwbkqcT/f+c9duKvt0Xaxp1OZ6/OLZX4xf8vU/SojNqKNGxxVLYNdqaC0WaPByvmGXDqwdbt9g55CNt9EIzgSAA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767106434; c=relaxed/simple;
	bh=ooAzFtpsJv+PhbR4vGSGCDc+iqvA3PepkXwhhBvd8QA=;
	h=To:Subject:From:Message-Id:Date; b=p3ijsQhBgnP/gQLrHUKoCq15K59opOzjPHJd3IdqKTy5820E9UWwN7g2KfbIA6uCtwmknnX4Hx7fPfMSiBqdFX4uykzxjUgvpjg1CNG2H90xgN7R6PrqrFRBo0XBrCEBdOhf2ph6QJXc6cLhSwnxSjz1E/x5d+DC5vIMJcAp+B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sID9aK0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sID9aK0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4724C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767106433;
	bh=ooAzFtpsJv+PhbR4vGSGCDc+iqvA3PepkXwhhBvd8QA=;
	h=To:Subject:From:Date:From;
	b=sID9aK0FIuOmr/aAn9VR9/9ZAosz1+3VfKOK/pBiuYb9deJY9QIX0J3FwtWAXWli4
	 JYdZlBny1MPGoUCDHHYz4+pyyyG/FAEfqLQrcyM1rvPe31qUN9Je6LhXbUFUxVzCTN
	 II8S7QX8K9Maqza4xVJmsi/6h0FFbUvSLEvgxJG6JEvy/sAJ4mhbzrKGeip0WdSF93
	 9Pdc1ao3I00hy/MsjCzuK01NiDAz39npOKSd6GbpfAZalAWitVtqrRbeFgBHTBRoLb
	 Gj2DKiCJEEMuJ1mgpawW+gyaDkizlMqgIRpBVO1zdQ0oxZ5ssuYY0KXPYzXXNavkb/
	 53IIoeGDq/ilA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917ABEE0205
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710643358.32114.17038904014778302219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f613676833ad78fe08713f55b982bc5f646ae5013aaa873ef5af6561c180d64
Date: Tue, 30 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767106433
