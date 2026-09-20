Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E007041D133
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789904435; cv=none; b=MxxfLYgtp44YB0/Z+k9qlLrHfQ0nQWs8Yv89uj5VTVPMszeV0S51Om0WG+gK+b9mjkUnE3PxjTT8u1V+Enlfx/dbt6gzXX9wdU6qoJVuS2YjytQ/C4d3eNn2FWTf/OZ0eoxUAO/g/omtdz/h0clPU87iBcXfbU1EyMgp8JOOU9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789904435; c=relaxed/simple;
	bh=7f2efIb6i91p6ihtn388tFW4TGTj379RoFx7FDl4Cn0=;
	h=To:Subject:From:Message-Id:Date; b=WurRQpvuOI3n9gi9p2FhQQO13nQyc0kXWxsqOrRVIxuc4ZEBXQMvhIkkbKhHz10vp6fqfqU7ynlzNjc0Y7UOdoaXBTbVFvoYJPWyPdrShhkwJH7oYrVM1QMXGh5Lk0ofb7z1SlzjROfDcT0hjD+5vnIeqLruUJeRS1NRtT92Gi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4sfzbG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4sfzbG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10D0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789904433;
	bh=7f2efIb6i91p6ihtn388tFW4TGTj379RoFx7FDl4Cn0=;
	h=To:Subject:From:Date:From;
	b=P4sfzbG1iMtpFdbEFrLm54CpohvnNCskLTZUCdJLQzHYptEWTJEqw+glKRsRBZVcK
	 /VjLN3Ej/K/JmIQl4857bWsx56guf4PaZUMwi/AIcBFaqrtmVKzEYJSDLug8FlKq4e
	 dDhOgCzzviLcipwtVjx+cNQe8Sub0MDVMAsVBA64muGdg8C8pUpLTjUdoQiZWV3GGb
	 THeReJdI9qulh+i0sdIiWNYxeYDCrG2nDPFi/FSjcBjgetn6bL+o+6xxkwP63Tm6lN
	 q4eUsPFSIbDoJsaYLZSxGKZpwc5uYudkldmv85w5SvrMP14+yQUahy5eMx9G3ii+0q
	 y49PUpoSXKL/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA856C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990443369.15390.12125027280233983654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153b90b0765cfcb60dd8cefc2ac6493ee6d074dd3707d715098a6b428087f886
Date: Sun, 20 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789904433
