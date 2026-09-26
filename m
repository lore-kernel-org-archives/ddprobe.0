Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5614E332EC8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790441434; cv=none; b=NgdE5R+AAODbmvzYZY7kPinHhWFtSB5Y7sqHKQ3ohaUfaHt16rYVUH2X3w25NrHpKTT6tsNZxdVqSYljHqYEGvgGFKzlw33IKgUK70kUoWIm3oBkUDbk0uJCki9jpb7/C9wY89oVKdouXO4SqbwJ6lBC0u3cyEFKgbwfC3xBOtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790441434; c=relaxed/simple;
	bh=5Udu1N/eEljsTXw+VbD/ADsQo3AT0S4iaIfxHjxRa3Y=;
	h=To:Subject:From:Message-Id:Date; b=lK9BQaQvjdCB/zr4N048VloILbPMHuWnJaRGtQO7DJAl9mQpQvtz5gsfcdyeXKaBW0duC6FweKdLzIMCaNt55+9spXOMkcMGk05iznd4aCmEBHPje2timsPR7PwiPeCNB9Gd4aqu87PsEMTxEe2qkuiWpbCEHe/iLjtuj9GHm+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQt7T0Ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQt7T0Ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00D2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790441433;
	bh=5Udu1N/eEljsTXw+VbD/ADsQo3AT0S4iaIfxHjxRa3Y=;
	h=To:Subject:From:Date:From;
	b=gQt7T0Ql3l0fNmv0jnTCviQYWWoD+kOF69TbXjmrdQJutwAw7sM/RyL9/l27ZZhSU
	 xOGLz79QCK5mNiFgKM84eS76Vil+ayI/zdoQ0nTwrORMcYaj1AIR01GjKw6NbC0sY1
	 Adzy8u3Il9Ret8nC9bBYPize2Ny3M7Yc6i92A376PMGrInkPT3doUkFV900l4uqbHH
	 LJKhUYoYyycuxfAAEuYCvylkjJ6xZq2qlwdmjJagG/9BgssqBlA/ex8hEXpV4+Thxr
	 wVg6Yi0EfpVWIuHHpFmPg+ZevgzSs8YkyHd7kgz7qbKRsNmP9cuNMH8bkXEv6lB4sj
	 YW7nHR3sO+dnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95C1C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044143368.17315.10122587918764007520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f47287ef0d018d9bed6a5970b7cdf80fb96f424875aa02e2e0ee0cb68eeb74f
Date: Sat, 26 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790441433
