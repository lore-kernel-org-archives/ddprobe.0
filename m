Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C5A2BEFE1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764003714; cv=none; b=nPXWdiA338Sn4XQqAsw6VCcP+trf/EJ5D96NtVJQ37yJwuDQMy7beQZYChHSqUbFHwNtoJkXfuGpngfAGTVu/vCpT9/ur++lGZOR3n9euiJ3GgEZcqDe0oYuvcQ41n5VhkxsEzbwTTK6Nd6iUWZ3ymslMkIepkUCPZlTWxsc5qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764003714; c=relaxed/simple;
	bh=24mE0rPnixXFB2f6WAaMwS+E/S0nGlCk/eHSUbeYwbE=;
	h=To:Subject:From:Message-Id:Date; b=BThGZla6UnIxqAjba6XK0EcNz6dhuPgxJbFya9LGkPF0ulvXty6pZsvY7yb5Ety/C2sgb2Oyl8wW5pBaywVmDx2KFjvt+SumhTxZ7BbScRhY7BcOneHaUn15E0BNto2CxuY15bVjpaVefmkpyKcAOwU5jZvDFoTXb3MVDrZX1+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZHkwXks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZHkwXks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2689C19421
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764003713;
	bh=24mE0rPnixXFB2f6WAaMwS+E/S0nGlCk/eHSUbeYwbE=;
	h=To:Subject:From:Date:From;
	b=sZHkwXksWyrH/aVttxJl/W4CB4pEg6pdV3Ibl1gkhylE/FJVoe8l0+ElEgeqxHH4J
	 kUZVuaSu8C5WSp4GTY0jl1EVsx2XqYU/a1skKxnMgVd7c5Qd473T+byW+oDbWaOKbB
	 a6InZSHedSeGoonQWhYGxuDIoWTwFig0Z9wFIcHA0pDX+NGuuiFo3nkil80GSJwhHz
	 2B5lk2caq8vLuvW5nM2G+9tnBo2R6DlQkm9ciDpFzXjhRlFiXjqqULyg5pg945sufH
	 KXBNFWNErNbqreeKGxxao+tI7qAX9IqOI/Y58dvMGHBmXjSzKE/d/x6nKnwpO4y7dk
	 YXRWS9V4YEyDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A2CCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400371358.20117.4612239981838091250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fff6f28c3429471d02eb347207d62c820070fa2517490bd25f44c688414da1
Date: Mon, 24 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764003713
