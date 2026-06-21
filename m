Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CCA343886
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782038794; cv=none; b=kB+JscYy5LNQ7MRm59jwpex6qkMJLv7uNSPDycMyQcwHskmDVCBG4kCMHHDDRNHzju017JZaL2E6/aATVsR0Jcoo53m2VNqIuZD7sNnQ9jFWstpTa+ZKAQWhiwOmKlb7kLpf4xtjDHR6TpANhsIdRQ9YZC1JxqT9ddqeeXAdK+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782038794; c=relaxed/simple;
	bh=sWPzHHLloAFfIikYCan73JdYDHVRvcp0QxlIdjWM0Ew=;
	h=To:Subject:From:Message-Id:Date; b=r58eh98ZardQ+6nilDG1DIzuWT78fAv2OJfs4OBHO69DMl4SBYhemPge/3lUfmzCElJ8UuHUtgCAiudYWOtgiWDN/4h5+61RQITXuRs16j6uonWqpCWNgdAtPGt1iMhLC4q8G88IkhMcVncnk+n1n87oJLmG3TEI9jZiTR+yF2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+yjaZJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+yjaZJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E054EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782038793;
	bh=sWPzHHLloAFfIikYCan73JdYDHVRvcp0QxlIdjWM0Ew=;
	h=To:Subject:From:Date:From;
	b=L+yjaZJcwgRJFKJinLa32ByD5zFyS8PXn/yXJza2GE3Nzg2MuquTroTtLIpPDQp38
	 It81RglWxFWx+nva/Daq9BM06nvW/hN+UKxlVHyhIW/rY1cXhggny78x4gDncKTJl/
	 3aQXqjuIgfW+ZcW+ajfbIVavkpKv82kkA05MBlcqKC4Jj8lgU+Fz4y+gQbEtCEw13E
	 yxK5JVJZ28/KmpmVbrxrmG6lZX5jhql45T1T5saJCzQvI/lhA22Mkfa8ZltuIVstKt
	 25Uhm96n1TlspsNYIZTgyutTGpKh7OFrmgT+MX/wC2QtKQfgVpNQ99vio7Y5+TivhV
	 scy1rU+136ZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17EBCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203879374.27936.13850282861642260581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0f9e7308c1f5d074f3a492463b5ecd4e0120550d777a5ca2829f6e7b8ca7e7
Date: Sun, 21 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782038793
