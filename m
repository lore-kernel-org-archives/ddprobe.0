Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2612B30BBB6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776366454; cv=none; b=W/qSDZFd5h/uv1aYgSWuc5RAe5xgkx2tHqSy7vPnFO0AVs8MYn9l5HWWegjItnjSdPWY1pnNE1x2CHcxd2lcD6W38HVj03TgjqT29vSx8ZVMIdouVEdwfxT96Vp/6q+whU9aUqWscszIUYKhFGBLVggT/Wn+VRlkjXD/7TxKHIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776366454; c=relaxed/simple;
	bh=wirmSeSyo6rfsenbOkiGMqiWYWzYir490mAUpLG5H00=;
	h=To:Subject:From:Message-Id:Date; b=GvznL5vHh2sVlgRJXAozm1tW/o7o3v4VtFjC8pMN1cT2ZWMflePOSkU/ELN8CB9LcQpqCe0GkVeXB3IrOtbSa+Jl98gr79PMqXKvFskoSY91n3+XxxAXw00onPBv1Ndz3eFBhh8t3PAdGuV/ymJYlLkhdZ9M83lr7CrYiFoDOIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPT+oHRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPT+oHRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C351EC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776366453;
	bh=wirmSeSyo6rfsenbOkiGMqiWYWzYir490mAUpLG5H00=;
	h=To:Subject:From:Date:From;
	b=rPT+oHRZ0B9unnSfXGbcJz6b9UH872PxezxMaL3+EFvjYtNer236GH+24/oSXMkdA
	 ARFuizKU8H24m/+fDMBzhVlYYbAg3rKsOlmQI6lnUq7W1sCQ6dXRpsTL3hAuKF1i2a
	 KYIFP4NTVBzB7ILXMpGwcJXzfotZNOzDKlQPZbeXJ03oMZSmgLpWEQvO3oUdMHQNgs
	 nUHBjOuxeA+LvopTuG8CuGNT8cCT6VT+rtB4C3e3WUrBYxorJli7IUp6YAIqDwXeQv
	 tcInCetMkIxa/IuDfK2nO9gpC5UhVwV4iFboBOnis+JTMMaDToR4YEn7KzpX4cG4a8
	 Kf8YtcM1DS89g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3879F8D76B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636645369.10224.7523866682949386709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781284c7b572cdc68eb2fdb97d899799281a24cef3fa31f2c33a7b4ace06c8ed
Date: Thu, 16 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776366453
