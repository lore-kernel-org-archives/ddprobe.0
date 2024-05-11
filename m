Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519F523DE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715411543; cv=none; b=RqFJEC8cKgBq//VAXrvoJ2yUplnweZxdF5FzQM3uDgKu76Jh6ZSE7UgizrZ0FtVEkcqa8l+lCp5fNGzfGj+x+iV9hk+26HQezMky7RlwzefDbUR4afccY1UvEb7FYO2hPu+9a5k9olBUizvlN+fvbcZ47qkufWrV7HtiH+KTlpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715411543; c=relaxed/simple;
	bh=FNUxLeLH+AkJJezQw2dUdX29nEfgp8agxtjOMfHhImg=;
	h=To:Subject:From:Message-Id:Date; b=fexqhd09XD4O9PetBUIXMb4vbQz/quI2FvuQa18qn9+Zer3NpopRbc7dK79PbfMx51xqYGf6ArBZZ0sPW89aFsB9RPSoJ8qJBUVCz/CaRCTL12yXK8ws2em84ok13F4HPzgZdUyxcr+GkK4mUbPwx4pWdmnfJX9kAOp32CMrJO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR3IDqmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR3IDqmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA751C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715411542;
	bh=FNUxLeLH+AkJJezQw2dUdX29nEfgp8agxtjOMfHhImg=;
	h=To:Subject:From:Date:From;
	b=jR3IDqmdcyyQY6IsTt60NvYOzXmvXqdaELBXOcKidw6xTdssa20m+eh/a4IBTMTiT
	 zTJb43B3K/Oq/cyQPVtEUfmsoDfqWQLnLL8L/EcGkfuh4aGqRJ1FodWXWrRjofUvfz
	 I/98/rW7XIGG4iu9fzdrlZOOkKeb0APRo/v3vCT/RUJ+riXbShEp8suH+ZjSckASED
	 IZEQoQvNAYWL7twDx8eNTKlTWF9ypSXnXLM2QbPCRaVUpJg5MHdOQVutaJ+g770Zp1
	 VTPlUlG5vav3Uhp0njBxZv0FAAFjM0wzaGtaBXgB2BiZdkY28w93LZlClrZCp3CCyW
	 EddiiYKWgQLSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4228C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541154277.25661.6247181774060783298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffdcbc0568e5bbad9a258c099ca50a8dcc16679c364791a25845ec91e910fad
Date: Sat, 11 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715411542
