Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302881D5AB5
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740103735; cv=none; b=P3Dm8qCv0WLoooSnUWA2r/LLlparSevyDQhrVQZSlnaq6fx4bIwjzepMMMVaRHcK2g32jMqZyv1XMO+/+iHPbyax3r38OVfD4CblAecbkV18Bpb/KVS+QYGZE73T92Hr89u0ivfBFw1m5+j18h718ADY0l/SPIfYIlvtpqvYhPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740103735; c=relaxed/simple;
	bh=dy39yaEchxTDGfL4E1GCjxscIgG+AruTQyHv5r9a3Ho=;
	h=To:Subject:From:Message-Id:Date; b=UYsGEzUFsAQLhpKZlBRoTZStUAqM2RLuCl9q+fmsG/WzyBcpwVDEpEiQcJnJWKE1E9d6qrnuU3GtdP9h0Wl3Lg/S1jb6FrHTMa7zVXHByUktcfpT+29+rkmsRqga+l20GFkRxgoyZnRX41B8xfp2J49CqTjXBZXf2CkFBLBRq1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pab6HR8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pab6HR8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF3EC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740103733;
	bh=dy39yaEchxTDGfL4E1GCjxscIgG+AruTQyHv5r9a3Ho=;
	h=To:Subject:From:Date:From;
	b=Pab6HR8wp8Q/OkurWi/hQg0Gh0L/yVaIk2NWDlVqWDYBc6EFqVDnxEIRJ8ssEtcAG
	 9X1WsfRbinTUmORubrt4h0e9fiSlpT95E9JyAF+FI5f34eWWmokijfj5Wa0lV3YfmV
	 Sua7abY2Dcb4sPg66ZwtN5WT42W0GvHfC/ZopXCNZQ+yGFbYW4LgzvbnUsY1NDmqUe
	 N1icg/dNoCwG5vJnLFQqyjRYTE7bN+cM0sW5rQteK6DWtG03pQZqeK6ZxpKyj++t2V
	 srQeov2e9m5ok0A6nrnmuEEOn0zb9KCrjOCumBL+20oEkcBPGG4VjTFc577fJ4uvge
	 bpoOaBRbfYPJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9766FC021B2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174010373360.29815.18020244295300045063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e085ced93b48d51a549532f7bf8a5798374803af8c81781af3ecc6ba2fdf9d
Date: Fri, 21 Feb 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740103733
