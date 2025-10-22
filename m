Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4424E2E7F03
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761113394; cv=none; b=kXdeWcmfXRcRZJHByf0DbmspIq5kIDNY1L4a4D/2+8JIBr40iY46rPnzfn+n6b7swS4eK2St1oMv38ZVoy0oYUNambLdDu5wbrUlbpjJ3vRnNP0p2NjF1f36HUTNK4gfEyZZvvdq6kbbUv+DtLtbiBSd3OWP5wWP1FbFirQJEmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761113394; c=relaxed/simple;
	bh=1yTxTTQs1cT3rzI6Uhz79zN7W4SJlwnzb06dcQh9exk=;
	h=To:Subject:From:Message-Id:Date; b=U/6J6kXyCARKtoLh4o9VRUZqtx1lHF/gYggfVXdv1HCboc+oXZuTqGE3y+6lmPxnkI9W0ikI0HjxF+ZcPSezhnE3TSAZmhEpxRziu+L2zeC4ezaaUNGqKp+RbhjNtj9lZG/98iqtaOQVxpB6r3cU62VhyzGtfFQnIGXdCV5nmjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8s2BBeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8s2BBeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8093C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761113393;
	bh=1yTxTTQs1cT3rzI6Uhz79zN7W4SJlwnzb06dcQh9exk=;
	h=To:Subject:From:Date:From;
	b=c8s2BBeLvwFLR9F505HnRMIGycoNnjSGr/7TWCSG107BJxgav8BlMwSLRn72aqiRP
	 ffLoZMuTHYL8f/m5st++Ciif7ge6rdrmiodqfkxkCHtTZoFnZKJxjGgwDBRAJgJyoy
	 qYU2MqHyTt4CnxlFsjNIhgucB7SIYFg/MsWeRsHWap6i3Jlil2oAi30XoJRE/50HE1
	 3GCF/9VZ3r7Jb5AIl2y2Jpw+v6/bRetjcG68kJXPqQpsBY9H+ZFDhxmJuJTZb231hD
	 BngkHpB/irn0k7mP2UcJbLtC0LM26M87oa09Vf9LKhOLw+4MYW1tLg0VXIelBmv5nM
	 QeMfOObJ3iq2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924AECCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111339357.22291.12718029623593521227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c40362a9a33356f5a1e22c5ceff0c7c5b30974b5fdb33fe66986390afb7952d
Date: Wed, 22 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761113393
