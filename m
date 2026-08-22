Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D0C3264C2
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787429434; cv=none; b=sUpFj9zD6D19IUPAxTrRbw8OBpbJnd6GdqRmkvfm9z6Lc6eUtAGMch7xmK+imoC/gS5pXiAxtDrKktgSBNec68vJQ1ivuqLKGad2hUj5gCdXyW3ZoyFM0iv3JC10SfiachCjQ8JcLv5exF3M+9qe99+B6PHEQ72VHWjV/odFM9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787429434; c=relaxed/simple;
	bh=hGnf3IVw83Vdqa72iPyuGDwyaWVmM2efBIQjCXp0QTQ=;
	h=To:Subject:From:Message-Id:Date; b=iYq1rIuV8MOgfPZMfNKAHNIqX+sHXAanPP2EBkiuvEUNf6cit6UjuNR2cAqxomxhxRq/12hysl70H6AsLlqDlHsj4hL0cuyfrViHQleLO48/gT60Cw6CCkR7bH1pO9KabMeOJ+1WXjIJ561hjT29A9x0XZwjqPuQbJrkxcWqkUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkK5ESfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkK5ESfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78CFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787429433;
	bh=hGnf3IVw83Vdqa72iPyuGDwyaWVmM2efBIQjCXp0QTQ=;
	h=To:Subject:From:Date:From;
	b=EkK5ESfGZgkn8O+xFiOjsIEJIldH/u5MblM4JWyjq4QfLsDJT+/X2mtVGe1cJGxpt
	 VErTR+ZmZ5rbrB5wlEOroNVbkiBpn9Df35/C4xFXjUcMBPBnYaWXwRJqGGOPtMSqMW
	 Ho3kBvfSgB4W4fQ1bwj4W9nvwJc99y8M3LryEfveftNW+shxjHIZsml71ATDmM0X4m
	 Zpuhrdbr+PyKw4mRgCYPspxco2K3QrDUnfVgj113bPNk2b7z1MAkoL+KTtZUsfL0cq
	 Uz4Stkb+O/bfzIgOxBlEPZt99NZAGHrZP6pyyRU0uxmiuSjvXFJgtt74C3Lz9zWkdy
	 kjsPrRNph/Zmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B736CC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742943371.28300.4949965175913780405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17de4c38e604882dfa2b2a9dc26220408f900def246df7e3e9b2ef36f915fd2
Date: Sat, 22 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787429433
