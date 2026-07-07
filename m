Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5565D3074B1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783436914; cv=none; b=AVD3JwOMRJ5kJKp0xuqT0u3lSzwGcDiBZ/kuKDjRbvwOeOZ2JXe9hv9WX1BHRWJ7Qp9ufgL/TzLg0yLqD7S1kl2XG3uWk3b1kpn2ot/g++0iyPpbDdiGJnn2kXGzsdR3RdaZez5EOLSjucuxTyu+f9oFqIt/vw2HiIS/EbAqKog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783436914; c=relaxed/simple;
	bh=lwEtHNToMQZx36Db8F9r1n4cxmE3mGv6vB516EBbC9c=;
	h=To:Subject:From:Message-Id:Date; b=jRf63pM4tdw0rxauwuK+Le/HYU2pIMWekqEzVrjDUqRt0BFBXHoa6R27dZEp9ux/Lb3dOZ+eDUOaNhlHKTRcd+TkaOS8tfhuQGc7xzazEIc5qvFMUSUy/Uf9jijO07bsJCaihYRrmpReHG9BhprhqaZYSDjr6OHWDRIdk3byvgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkQ9GWun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkQ9GWun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3779C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783436913;
	bh=lwEtHNToMQZx36Db8F9r1n4cxmE3mGv6vB516EBbC9c=;
	h=To:Subject:From:Date:From;
	b=gkQ9GWun7kfju35b8WOy3fT3hme5bYhVn/EzYUaMGW/NKuH5MX8gujisdGrc6O1xr
	 CdlBArvqlmix6LjtDAfxYbtt6RuMUC9MhaVS3FIulWr4Q2Fw2n9uuv5xIQePoRO5h5
	 GNemLpnmtxkTwZYsVZDNShYMyJbj92A4w+QGu22T6ox45Xl4YPZeNaxS633COH7OnQ
	 HDJ/MK2FWRGgvkMCTdKlkSp+bdOeKgTk1j44uGEqw1rZw6Qp+8H6YVVBmTk5MUVFP4
	 yCL8nvs3o6FZw3nwpQLvoOR4wqsnNqs8tGnJy8UgbsHINKX5q67SQI/x9xxKjP1LBf
	 Jy68rZToIOmBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0679C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343691368.8071.11886010687712529836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38df90a7e35b8f95bed7c32457dcd49b7551d88d8e6cd64ba56f84c0c9344a99
Date: Tue, 07 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783436913
