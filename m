Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24ED41A08CA
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753071594; cv=none; b=n1uH1KlA0LFX5EevTwwhwkDZYVfPJkx9ui3slhZnsO9fDjz3Picp/Dh6Spg1jhY7LnnGkmF1dUIm7brRBlOkuPFaisyjvk57R7ppe36loe1OQhSE2pW9XjBnyLQpD9iNecvXv2ORftQA+yUEgcPmCIjzEKAUDSy/9a+rEP1nU14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753071594; c=relaxed/simple;
	bh=hyizLGnHUsnbxFGhVCH6Mm9DnHLscHTcaERNf7aJHkQ=;
	h=To:Subject:From:Message-Id:Date; b=AhaVHvO3xhQxwpCaslqT0qxKP3g09Gc91KvfZEtATv4SikoNPXyJ3kqADVARkR5j935OTdjlUBaC4K8PE2JAfEezySCxR1f5DiPj4F8biINlaJi43tLm5T9+YzEmICsCjCIAYWy9OOpiEqNaD5xzP7ensVlztnu1wfNEsR0annY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unbJe3xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unbJe3xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753071593;
	bh=hyizLGnHUsnbxFGhVCH6Mm9DnHLscHTcaERNf7aJHkQ=;
	h=To:Subject:From:Date:From;
	b=unbJe3xx4E7kQgMBsSFuJcdL5rldNzReErZBvWOIPvY08hf9AKkkMdhadMxaNO266
	 RCBRsCd+a8s/12qhtZlaH+fckWUX+j8IZqrnb8f0QmLMeGNQVWQwUapKubIe//QM+A
	 /ofSbeLDNKX2tfOEbylrv9g3iwpzZN9zAMVrm/Ta33fTxU/ooC8/ou5vCmSbOYR8Qj
	 soMRdfj0ZWAX4U984s5Az09+KJT2VHcT1dioybH0KdmitPVmGc2grpDk7DBiBvIBSO
	 8YolpdVYZnA8TCcfeVqQs9kDMlB1AQaMd3Ri+XsdkqVpqpuAwcKCEO9W0VajHWwHHD
	 KlnxA1wgrTKWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB9C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307159358.7636.7308769209830449352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b310c162a11d0dafa24aa081b6d00550096a951420b6da50d0d871787259e98
Date: Mon, 21 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753071593
