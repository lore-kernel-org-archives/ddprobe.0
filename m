Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E0A1922F6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737734154; cv=none; b=qRl36u7/zCgEMXnoGL4UBHApxNiRJDedZPn9oRXKjdkxT/ir5W3texdCsCSpfkaHd2s0qjgAaGtAy/qAgu7w1yspC1Am9KYjrt/q5pgj+tqGsRH+pftVqOKa2TIqaIKDl4g9HaYKWozSEpLvapmOvYH41eQP5aj5z0rC/p+kwHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737734154; c=relaxed/simple;
	bh=falFt+Ue/yhCztCJepL52GSX+kkak/eT/qUsYPNRxWQ=;
	h=To:Subject:From:Message-Id:Date; b=BTYIagi8l5kHJQqfGIMiU2OHLNt9nUxE0lWBAdzhuFmyaQr29VSSPu50t3pnYi4wFti6dow5yLghuZTyGio3Fk2P8a5TyoMRqAs5uP0icsuXRtIKcqR5XfeUU58uNIPGqU6qjPuWehXAY4W0FnnbjgCrYAz/Gq7x5KQE/ob2MN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mqn/Zza1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mqn/Zza1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B571EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737734153;
	bh=falFt+Ue/yhCztCJepL52GSX+kkak/eT/qUsYPNRxWQ=;
	h=To:Subject:From:Date:From;
	b=Mqn/Zza1C/ijQnE5+MjQXRkFMbr6PFjuE7hvl0wN1Mw+gLOYxqpGgHTLdirYi8u96
	 68SwXMrhfUmQdFdn4UFFQpOKYEaj+wfiOXHKQQlh3bAbRtkVIftpxImrPM/FCzT/vL
	 DZXO93jrX8U1iVFTnqqUZb/M3aqB27Gmf5ajcL1Nis7Houq4Z3awUXtmjHUGkZuZkS
	 ULZ76S9a+yiPtEcfLTFrAYL2LsxV774AdeflYFTDiv6v40kxMaYBnmY3/4dcDyNQy3
	 qJw8Y8sHvgmK2KO502+WBHpU5oqBuqA8vRkYGM7jXR5TCu3uUKg2upVuHaWRqc8qhf
	 oojr9KaStn+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F101C0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773415364.23576.6622451923441505624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408034fd6036a651b5e57f0378444501bb8df1033d9a4cce25640f636d86b376
Date: Fri, 24 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737734153
