Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127E332142D
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755181795; cv=none; b=S8DVp2AeCTNxwnWNUY+oExVRKQ+mr+ZNOqeyzPKbY9WohpozkFwZOvNAFNnr/9l/tDmdLI1ttKDAmjBpz0ehzW/3Ga3rebPbMvX+Fe5BEvofx7CZoSw1xTpTaN/C0YlcB5xfTVbIznUof35WKoLmpFUUT9D8knfvUqDxuHCu6OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755181795; c=relaxed/simple;
	bh=R20/sn+n9hDmo6WVXOBft1PPPzkUtwi0MF0UIjczaiM=;
	h=To:Subject:From:Message-Id:Date; b=VEbPkYeg+SbSnaa/oAWUcDusOTN9BPBkR7udAXeagFXhl87mkv88pzo0loU7M4ie3StBAFiEDWkM6ThNXfVbI8oJOkegmE8CIIkQwSAkZ3C9iz9Img/oHYFt6lM4o6n5zloESxd6ej/12sZGG6ZStZG9+eQ6ZZ6USy9/HN1lbsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk+8gFMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk+8gFMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1416C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755181793;
	bh=R20/sn+n9hDmo6WVXOBft1PPPzkUtwi0MF0UIjczaiM=;
	h=To:Subject:From:Date:From;
	b=Lk+8gFMuqwWuAsYa6dQHsmqCpgLFQcwJRuqDWmA4q674tSOQda2dpQ7LGdrJKD49y
	 gUunp98yr7fpqvGwiQ2r+KdaMFx14ZBKdL0zI67mBO5/1JI+j/joPUQ9iKD/msczIE
	 YI1smwEsS024soYhmz1OLdyW4f7OfrtCE8w0m/xpk5DuG04Vbot3QOh/JOVXwWnhX+
	 jWgvFVoW42qEdtJyWRCA0kHy7GrimyCpz7fkuOwcTfwOKYe3hIdClIcGiqunM+wEld
	 GDTF7niVMKgK5vEFa0lp0J530tgLPslnDkB+qAMn/7wVKjqriwylhICroVti0V13ce
	 jKJTiL+i4UliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC3CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518179358.5702.15245669430849913392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0151ecd1dca4e6169ab176d0464b656deb8d2b155aa739bee11af204eccd1173
Date: Thu, 14 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755181793
