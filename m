Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281003FFF82
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780673074; cv=none; b=H3Sd0zaDDlIQnTwwxWgasC93wWDH66muqyS/jw3MzexgVsPJG/YfBBBuk4HbwALas/V1QJBaQekAumyasUXDCT+NqFalSqsjICx5P4fwaabA7hrs1S73++qrYXk+62w6f9Jaz1NadaiCtATO9gmkIOJwoBrLNj6lIihl7OzZDP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780673074; c=relaxed/simple;
	bh=FhfRZzMi0exoHiipGbh6JIqjFbxXpiKtIDX8i/WHcws=;
	h=To:Subject:From:Message-Id:Date; b=NEJm74j3jU63QVlW2pvLaQXYxuxPaBWI9NpGhZtoJBLE1Eah5sBE2b2mgYSeR1ii4PAC3u9pfailBP5uHiID9QPAOoxEjaERlCmQqCYeRZaeGsRJhOff4S49bNbhEec/Yk9NIIAr11OrMJjGe6AQhadkGiClCy0K4L4o2XdhANE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5mDxQuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5mDxQuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB834C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780673073;
	bh=FhfRZzMi0exoHiipGbh6JIqjFbxXpiKtIDX8i/WHcws=;
	h=To:Subject:From:Date:From;
	b=b5mDxQuHz8QFApD352MrqMv+Gr4Np3BbnN5hj8LazUhGkDHAsUwjqx+kBSo6H0OSJ
	 KmBQKGgO7mY8O87+G+RkUTFfOs2h+LIRjXvFbzk6ghObcrxCjgQ2t/5yjJMdfDANCq
	 tyYtUeJ7ntfAXzDB2MbG7PcWWkfcOxsTWZUdcT1OrTSBBSt6N3xV7k1e7TGC8u+GcO
	 uggq8T8iLd8eYqhnwOm+HjKeUZoG8gYopMBwsUTr3DIFSJg+QC8gLvqyN/cQoDw5ya
	 kB2mM6sZvRP6uB0kWJtYmsBLIfnBVJtu2cyksX+4ik+NmHgZNH2YITHm/oCNP5tq1T
	 PBFC71nJnbPPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF91FCD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067307370.22171.18259579488233225932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a53cedafb6ba34f2760c7916c157f6678d694c0739d9a623ddcef27b76d63f
Date: Fri, 05 Jun 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780673073
