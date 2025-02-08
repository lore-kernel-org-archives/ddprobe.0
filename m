Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D391B6D08
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739012154; cv=none; b=aL7JCQUi7QeaX9NXXzzTczx6+nxrRmZW4fJhlW8RCWgY4kiwJU5RqvAg3uQ4wjKL7bFBdQkQLkh2hvGHmjdyTrPfPlXTnXg3WOiG+WlLpnjVjtmf/L8ed473auLKFxsl6O7embvH8PU3dt3VNDKH0EYe4mbJmjbPOvZnRgl0+Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739012154; c=relaxed/simple;
	bh=OMHcvDb8k+5VMp3by1JTgtrlrCdvI/CtWQbcJQuqymI=;
	h=To:Subject:From:Message-Id:Date; b=txiTzgfncGdq4at4lOKI8NpD4w37uAIxURzoGJ2NkmLY1gTn22PZRvI6Rf5FA3ZT9icAJZp6qIH0Jj7pl05aqDhprpmbJXxB1NP2CUM4rPVsGUWot+gtjU5cPp0IuUuClHCQYzCITGPj4nCaD3K+x+1cLXtZMyoHxzhR8h17P4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7jQHDRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7jQHDRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF65C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739012153;
	bh=OMHcvDb8k+5VMp3by1JTgtrlrCdvI/CtWQbcJQuqymI=;
	h=To:Subject:From:Date:From;
	b=E7jQHDRI1jTIxo2X05g3++UhB5YZXC4OxEQyQHL2jd1E9+dLn+kuiw1JbegTCxwZc
	 PW9VFp21ebk7k+HpyulzOtT1dO5iwERMhK6SqIGUvRKTG9+ZUDZLbVWWVRUs7ldkuO
	 QtCN29QVGQKDGOdI6IC9ZZpUbLOKXb//vb6RnLXA+NyvU99rzGJC6VYXy/7rf7PN0c
	 mx/h9GsWqyqcbg2s6sU1WRY9WOeJ9R7Zwq+NorNLYE3ovtqO0xklWcKwkS++rxXpQB
	 c50b273Vx/mSD+jWHwW2IuW/hytoRD+vxE6JjKIpS91byv5TqQKj75Okt5mFqIxRPa
	 o0hzI+D03OTVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7485C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901215373.11578.12881882478324799220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4086d800d88db23bf1b7e4ac7603eab1014a100ef3be85aec6124b86b5825b
Date: Sat, 08 Feb 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739012153
