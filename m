Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6272FD69E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791470434; cv=none; b=fB2dNvPqNv41E5Emrugtpj2nh6aGLK9Ai+tfOsKvd2zAEpJ9iFSwsRAm8CLfrUcZYgWj8pDoX/1eHXEYuF6h9lN3iTaGyz22Kcphzf/hjtrj1fCmTrZTChsP7GFhikUq1y4SjBE+xMkRk4eYfjmcdLF6Z1rAmB+MTTinbIwp+sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791470434; c=relaxed/simple;
	bh=k7POxAcfyOgUvmBy/aF1TzRzBUS4g+S48+SYdXEUEDY=;
	h=To:Subject:From:Message-Id:Date; b=h76oA0ys/7yJDvYDliGlV7Uzd82wpjynKtS9pEd76D6b8zxB8RH0IBol9tul3sdEmB7fByYEprkjoldvyZjHifT66uJdmOiclshimd3NhWYm/T6IbBs8vR1gUS9roBYUWWRa2d+xCOhYWNmzeTdN2grdDZfKHQQ/O3xreNJ3Ov4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBjuGHSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBjuGHSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D506CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791470433;
	bh=k7POxAcfyOgUvmBy/aF1TzRzBUS4g+S48+SYdXEUEDY=;
	h=To:Subject:From:Date:From;
	b=vBjuGHSUFKiMf0TKyNQMVmvHSp/1DdFOq7lnTbdBVGhiuPwA6onBIEbcgrxh8Cp2Y
	 BAS6IXfd7so/MPUGFnDZ01Href3U/3I0BUPeX7lPQginutVRKoQCGdDwgNCtEcb9YG
	 jtUaWd8Kxk5JEIb8B6lWIN83ddTCzfGPvI/1Kexg9nZfXaVrajqhLLXhdAGl9mmyRu
	 MFen139Apy0W7mcUFwTC6Er9XYA8GFoEyap3rFYbX49Ho6dAt0oRU2G54IKIXQlbEM
	 WhEKUgyewvvBmAKASCEuuxVmjTrodyzJV/pvxxIhNVLkQ11WXjcHA1ezWgNokBKzlH
	 0TdQkjfIfz19g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD987CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147043369.18480.6383886130341200680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694c51e1469368f79e7995287c6ee06951b6af9a4538e62bfc03799e28fe240c
Date: Thu, 08 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791470433
