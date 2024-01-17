Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F275F250ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705525697; cv=none; b=lrDm3vRHT3QNriir/BkukbaASZSifxR10pgtj1uTeLUXIgQ/Aqg1E0eQxQppmZnShdGxDy0z1qlBxgPS9tvkH77NM5Ixw+CONm53eiZPd6Pu13nq4bFFSxob7LZm30p1hGyAom2Afi+Zddh44Di9GWUS3jnuGh6LL+zcNyrHOvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705525697; c=relaxed/simple;
	bh=GtbxgOj4wkgDtfU4IB7IbaOkg3+9EohjGW6qr/5ISU0=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=kg5Vlc3PkTEdAWQpxuRaJVSKE4euQA8si9PcDwrcC57SNftsXS7z4bibUYxNsGLbIxM208bL/kRJXM48BsD9kXfEeIBUAfDs04cfvL3LMB65HBQ8LAdCURfINYvW8Y/u+6kSHQsp2p8eWSCnoXA2dKYY1m1XkZjkutU762BE8F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knbOs4Ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knbOs4Ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB55C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705525696;
	bh=GtbxgOj4wkgDtfU4IB7IbaOkg3+9EohjGW6qr/5ISU0=;
	h=To:Subject:From:Date:From;
	b=knbOs4YmbLb0upTcGkqNI/CrEPLCZepifmdaOT3odYKvOyUlhCy6fR6tjcC8C9Ieo
	 RxZnfT5VRAulegb+nrBdtx1W9TsM7RyZ5hmGnqa0HAnAO9GqRCG0xfBb8UrtmOt7m/
	 7sdOMzJ8v8Ficyyw4trn03JHa0/ZYOVA16QP+g2QjLxANBCyeA7p/PHF0J+8NOSSar
	 7A8uNDoe6oZ2uODPxRCFCJXXmuXBxgK5G26y2dlYxIO8e4IltckKkt6he0JkMzWJtO
	 D0HxSUoYiP5ZXXRlE/7NNWUxltvtFE8G+GRa3sk43AVCmB5pqyJzVzGx/RUk99OM0o
	 feIwfypYJ4dUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6309BC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170552569638.29758.8996013905401186997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c92021c551396be5190fab8a11a4ab5ea7a9d1b170f483689b9beac506269e
Date: Wed, 17 Jan 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705525696
