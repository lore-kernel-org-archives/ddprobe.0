Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA403318156
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763060993; cv=none; b=SPFawZPNO//90hz9iuCPQV3wqQkyY9dbqwQzF9jkPfqvoqfWdy19OaLA1yQlL7yfHwUEqmbmEfELWiVSUbqfybUHWyM3WmiD467Dzad66iFSUuVhjRw1yXAwZml7uis4zMGTvRZeQU6vZz3rYeJ5SxaaX+8Hvpt3KJDrra0b75A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763060993; c=relaxed/simple;
	bh=XvCG5JNhyIzvDIb3b7XLwqjfg7GFvNPwXmaZMAad5lI=;
	h=To:Subject:From:Message-Id:Date; b=lvek3D9tnZsqBnKEUqIxW05DSvv4HEBTTJU8pT03ONxX2rS5ZWZMk0HD9micYbnNKVDOWd44+jYEeAZ3MbSUCtY7ohuuS5Ub2YJJELF2dl9YJnhy+L9eoLZxPITspFo4trSyZS+rG4YW2xoHucQakvo8dyvLf5r2uyLqSL7JaQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0M369aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0M369aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB1C113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763060993;
	bh=XvCG5JNhyIzvDIb3b7XLwqjfg7GFvNPwXmaZMAad5lI=;
	h=To:Subject:From:Date:From;
	b=c0M369aKN5+cQi51e2euDxavpfXL0/yM67jCtvI8RmDIuiwRRrMk/58jPzRxvHe0m
	 3X1f1kRQxsxJuBB9YXMb+WaYIhFuH/al+3L5ELHxYQCZknpmV4vcTxKzKbPYFX4Djj
	 h2nQj8yIc/5HoQmUGBwLnhf1CvaWacPBpyiAPyWHMEg7Vo4Imf+RP/wVllwb82Wwlj
	 54I18fqCjz6J3uWl8HsedtO07u23jsgUFSmz8SoYJb0XSGS6iE/DQrbbMMahMSfFER
	 /Q3q2v0352EzoONfdDSI9s/SA+/DZvqW2haDBThZcTuy6cBWwRNVhnW9eCZ+CpC+At
	 7vhLAlRog9K7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A1CD6E54
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306099358.21220.7058307487881017380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9837addba5fd887d4a20d712206936a5b705e81de0ea8b5473c0a5c4b054a8a7
Date: Thu, 13 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763060993
