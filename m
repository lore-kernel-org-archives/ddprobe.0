Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E407350A09
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761074994; cv=none; b=rekC/T9BPifbLTcFbSyumZQBbjblcTYF+LI1A1B4T7XMlDkQHcRLieXE3GgQPZujlJhvGdjuyoAWghSxqj/OlDENH6r/pzXltiRLk3V3UjEvNCaaDj5/SF6SQX9bmB1tUbIw/sO2QlI9buEkaLRBlp7Vh+kzYtrIRoCRBwDmsTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761074994; c=relaxed/simple;
	bh=huIKUBPiwXXzaLK4RWXZxm6MB737Xf3phni0FSmhrfU=;
	h=To:Subject:From:Message-Id:Date; b=gLjmkrEL+rbch9r55Vl9EdpZp6PrHAfMGfIUG9e6+73j2TvFhJeNn704ftfixoR4CEmoqjR2oPSaz9TiSL6Q2z0EbW/XHOGgcRATNfGVBQh/xaE/xi95h6rfeVFBo+V9B1udA8T0bxRh+RjdIynqNDGsKc6tmBRXkURmJTsvWSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVnd6q0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVnd6q0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE1EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761074993;
	bh=huIKUBPiwXXzaLK4RWXZxm6MB737Xf3phni0FSmhrfU=;
	h=To:Subject:From:Date:From;
	b=sVnd6q0ssWew7dAZkbqHFGAt/HDo8CEYNM0FFUfZ3AF0RlsQl/DJSIrszraLeTh9t
	 Pb9bMrJF67Gqr6IByCMFGOUcwG8lAb1XnodPSCHnc1Y/HcG0T5WHF8xTItOfdIOZ/+
	 W5OZpBc7IF0YhZwynxJ0t9g+I2B8jZBvuo8T42N5QUxJkv0Aur28KADRsX4s+ovcBw
	 lKTkqwZ+Tzh4LJucrW+nzncyFz57mQdaQWBbE9n2IFGsq+xGUCAVXpO3QElgYntV09
	 0vmkKKJpoDJ4KeZNLQ3eqYms/seltHcv4KJCQH7hGpkgY2PdDP16W4l80itoVqk13K
	 k0Vgi+p+ZEQUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9066BCCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107499358.5707.4054627716379376275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd832fdcce83933ba2c13eb70a856a5c8a4147d15f94e05fa202f5c1d55b7c02
Date: Tue, 21 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761074993
