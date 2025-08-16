Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5AC1EBA07
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755323394; cv=none; b=Iwzd+YN7Dm48068I+KPh/XwxkIYFy1cKYGk+ENw0o5ZSScnLXxIC6e5eFRWBHcKrfaHtfG6/8YSqu1genSLyHlHcC4fzDrNjcdeaTZdsB4W1XaD0Jx9O0Pta+8DxMF61rc0zuLoRUi6JsRU5MDq3rgBprHs6iakj9n4u7DGaFW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755323394; c=relaxed/simple;
	bh=KT1vRKleMIHo9VOWbQ6y+f0O3YE6eG9KiTsvtExodNM=;
	h=To:Subject:From:Message-Id:Date; b=OYtHlFlYhqIPyZ2AFZy3jKHRstHI3qyNd5gOQzcIUClSVQVl5rTm6/Y0gm7YCO8QWVSW45ZHYEoAKvwwJ4WcdLbYue1WjtWDXNYBrgCl7EEA8PAj5a5pChVzjGKZTEWIOm1dvwjNCUg43f+qXBa1Jw3ipxNGsepw+pqfqa3H+Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoZ7BgiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoZ7BgiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26BEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755323393;
	bh=KT1vRKleMIHo9VOWbQ6y+f0O3YE6eG9KiTsvtExodNM=;
	h=To:Subject:From:Date:From;
	b=HoZ7BgiHMZiLIG1m0FI88kx+P7H8frjlIHimSYarTRzCP67PgV0XUt8Q84Q7o5EVl
	 UyYz3E7s4VJuxzV4zlxgQ13tiUn9PiyASQhSbio/dYZrBcBR8KYVxqrPXuRuIdgQJ/
	 FgwhqCPQWNseeL8/lLjStkTqSNO8fgEMuVVuoJ/aM6PsCLzPyrqgnbNrTbKK70qupx
	 3OpdyR7akdBAaf6I+gtPIP36fPbgKd0ZKlB4w4wBRS2LOt1nHvZCR/MNTdr9Ve2R2z
	 c3xHvLpElLihpg6HOhBVjU89NAqRpjZfxs+zvRtdgLRZYUWseSGc8B6Qh0s0PKVCpR
	 O3EuvsTcWPrpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C84C87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532339357.12972.8372749701301030203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9170c374bfd8f53f4ededb4467d262858f299b5f4c84c6986a49cc5f7419cdf2
Date: Sat, 16 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755323393
