Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3448BBA53
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745224194; cv=none; b=IlQBXnmU7ssvkYHcHlIj6NYA7pMzoXGTY9TDbAWrpsZa54e7frvxh2zfPsG8hXYVjbtt230EDNtQRdOuQQigNLmwtHmyoH16sCbBrj0h7RzO7MWsg3nx6041i6G0eMmteDCslcHLKzvKTm+b8i6dLNJ2XyMzeucHKse5e/+kCbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745224194; c=relaxed/simple;
	bh=6BsRk1/42u3f2gVm0CdI0QXw3DLmuhPmkjEHFjs7tfw=;
	h=To:Subject:From:Message-Id:Date; b=kv5A+l8c/+K5z18q96koRHXzlEIIcbIlra1YX0iB9p7ILfxr9+w7+DAyZBO2Uq2XPXTOyww+47WkbglP/7rpHCPqce5TfJh9CJaD8tOtpSauGc2f0OKH1QQakMycrE27ZszmU7Fd+BaDWftuu2NYrvmHPs2/u/Whb1fsi/gMxE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u82iwxoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u82iwxoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5501C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745224193;
	bh=6BsRk1/42u3f2gVm0CdI0QXw3DLmuhPmkjEHFjs7tfw=;
	h=To:Subject:From:Date:From;
	b=u82iwxooHgFi5gGJ09n/1KmvvoxF5NUKgOIcFUftpD11wFsooOBxf3GbIaTP/Lrot
	 JyA4PVmlxE/V6OsOZKAA/5w4D/mM4N6GZyNrBXwlhMFidMHseLw4M7JEvCiHw/iBmS
	 sw9T+c1FAjxOEZrx9/HbzxIVUQ3BfNpleuw86RYYZ5CGBpt26Kz8Jk9gZ7O1E9bOXt
	 n/vvZ8wpiCGbi9oVQboXFE6K1MIuBNEHo7R+WuKYPKeEi1EjVyyMM6MYnvFTO7gWNm
	 oQN0y9Lmrvli28xOHyTzkO9awDGpnKWhVqdaiS+EllgKEc9XE5Bw6YS1mq+gc4tulc
	 QPFn6cvNHKwBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142EC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522419358.18386.8349399440448804712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387da0d7368d4cc33b08ea60183ba5db8066cdd1fb6ebb92b16e8b3802f858a7
Date: Mon, 21 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745224193
