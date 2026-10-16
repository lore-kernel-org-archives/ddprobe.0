Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A59044065D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792138234; cv=none; b=EdRzb1PrRtKmzyOoRO1ODHTfalbgPz4TgrNgWtzw5yx1RI56VladutrF0pQsqun4xcm9QpaqV7w81+/9dmUTbMivF/nBHzF+OOchZOopR4jVRaf+epClqbOMJqIgvsQTmXg0ctq483vcT5JvPKCUmjTt6SVNjIigruKtKT5SHvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792138234; c=relaxed/simple;
	bh=RdR6I7pNS+RS7Ipz0IMNV2sGOmuXPPSMxReqtf8ZWPw=;
	h=To:Subject:From:Message-Id:Date; b=hWwDv90Kh2uu6SeXp0fG0gAbU403CGJfzN+sKoqIcvsRhw9al7xIM4PXt6TgXBCdXkHuXTvgE6j72sreERf/HKYsblzYEfmtaURrU6McinZWr/jYBU0RdpSX+TT9BJGX/UBiDYRANS3vHhg1dvrtHzMouIsZDG/Nku0o34+039g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P27jcs21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P27jcs21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE051C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792138233;
	bh=RdR6I7pNS+RS7Ipz0IMNV2sGOmuXPPSMxReqtf8ZWPw=;
	h=To:Subject:From:Date:From;
	b=P27jcs21zapm/Z8758IgWxccO4l/kezt8k9Tv4J85f7vga+AivE8ddxYbcR0bb9bX
	 Hah6ixVr37yByWjhkChM3ABQfAqRETTqvZlrR2gHMjmBfjK/twr4N7OV0DItmM7p9P
	 mIc2UXmwD3HU+uxkmPh302EGKzRjbrQGilcF4WicPiVt5OiJ8Q+NMhPCSizSynxGNz
	 irpUL1CLjx4Ri89Y3CEfAEkK/mAQRsXwJeZb3Jyp6724VUfSHnrcShZkQMfu9IS/5j
	 wF01z4U2t+lBPweSPbdVVgnR/eGm6ActIqoW4AlKUIWNGa6RYZdSiJA5MwPSFx8D1i
	 I5lVAjgIKZAGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB10ACC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213823369.11044.10449719465261302436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3b14b5c4936c05ba8bfb3803b8876f9cae8ebb5380e722ff72c9e75d1358ce
Date: Fri, 16 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792138233
