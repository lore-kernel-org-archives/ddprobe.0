Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20277190685
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736247954; cv=none; b=GcOV1wNT715Lq+Uob34AuI3JpS7GCoaCpm+eZq4LMqe4dRNVdpnfchD+2NvRDVMbZS6Xwezb9woy15e+aTsbBhrTPq9U/XVAc5oTeTQGJAZOrlEEuY5TKTR0Xev2WgsfiXR9oVnIfMXy9UkbBMzE2RsbBiJazcJZ7ll+409Y9vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736247954; c=relaxed/simple;
	bh=I46YWTVVw2y6eahAncTzpCDDGkFxcpiuajax8n5Yq4M=;
	h=To:Subject:From:Message-Id:Date; b=rZE5csk39vbMn3Xk9DooTZridldcm5Z9RBUafngU/n6FMbvERkrLNy66NgdEt5iXo9Hr3zy5h6CPSP+EVSqnJM7wjsdDrJqMQJs6y0mIMvvE0moaVzSfRWbgN0ZSmdhxeu139Fgec5CWqRv+KTuo3AzNBJRCmSAcpedkPmSIFxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRdTLBak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRdTLBak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA473C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736247953;
	bh=I46YWTVVw2y6eahAncTzpCDDGkFxcpiuajax8n5Yq4M=;
	h=To:Subject:From:Date:From;
	b=FRdTLBakQWb2UPVyq4/g1nknd9/vNgdH2KBd0LAlk/OBpV1XeBamcFH5GTOHZ9WNa
	 olxq69ZjmqPcrGlsw5rd4KNpoWlP1EqXGKkjOOa4fDUZU+a5MPPPS4lRdeZsefjeKa
	 KLM4nOULLhR5uvd7q5obIbXtw7WPiwLbacbu24UUDtrKSZlNAxLr6YdCzz2MGCNInN
	 uFXSTcTlMSAffHEr0RCe6pJ+SGmy7axYvpK4uDll72T5sw5IjyZEVFDKM8h2LDsY2M
	 KtFw4F3uDS636PbHSKTgnxebH3k1I32yHLgAdcWFBFKc85CMIouN5S8C4St/AdxFHd
	 nn3akT3hbHstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93988E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624795359.14738.14184672994893618809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d767f9733a9c657d11f70d0ce60b2bf2ba490dc424156585adccf63bd411df
Date: Tue, 07 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736247953
