Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED811859
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719625463; cv=none; b=VoB/ZWTzrDWMs/Kfc89OAXePJgteYOe9eYebcwrLhRFIcPIsZar+74CUEONFodVHeAtqJYY6n5xtjPSy0x1W18m+wsHJFcBOOHolOor0vmnbljelm5aFlUb/HqTozynGtvMmsiWDIBQvW70ww//UUZTxSuOXOS7dUa7nXL7BC0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719625463; c=relaxed/simple;
	bh=gfz5l4WciZhPzkFrryFJ6bQY7jZTqw6sXo+OHiITKlA=;
	h=To:Subject:From:Message-Id:Date; b=kNRcehdu7SluuHS9kfvP67Fon79SuQBAhEZqKFirRUYWWmixQAV/fZKc27gJpbOpMLLwVxkHO3xk1EgWqGyJ4/xuwZCUbjizOm9bKqhO0SJ3TflDzXCd1g9vXGJenaPiQve8sEHEBJhpSc1NWoOi99bPMW/XvCqnnHumwbeUl74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tz11dksz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tz11dksz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C01AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719625463;
	bh=gfz5l4WciZhPzkFrryFJ6bQY7jZTqw6sXo+OHiITKlA=;
	h=To:Subject:From:Date:From;
	b=tz11dkszYrNFlFdaRCGELU7nrCfixzEo3Td6XskWd8c0P5d0dfMifjlDybLrGQqfD
	 fhLIJh7qG3rjK4mHnVmB8GPLuuMoZo4Ed+FsiLgq1p7x9sRddT66g5zSzJHPyBeTs2
	 VBG+cM0gYGjKGOIXMME9BHqDmNyEuuYDxI69SNy2kxN4nnHrQ+SJ81Mlrc2JYqDFyE
	 rucddxj+3HR27FBD01soqgOoU4a25z3p/MEyt6j4eYmj2DYJ/t019XOxemRjePztl1
	 MR90JSdSRFxmNzLrjmRQcUdlx1hdG5yT5iplxfsSCaT1+JKface01LUek8KJld9d/m
	 t/Yro+G32KM9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F338FC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962546290.31507.16124288799286346178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ef6da0e1edc224e7963065c082778ac4a3b4750824dbdaf70989de944d953f
Date: Sat, 29 Jun 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719625462
