Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AE712CDBA
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707213497; cv=none; b=UVczDp4xX89/0Pr+gmsNRhTda0uWtrTybhyAwUFfQLkw/OORgZ+QukxyX/1TN8nIAoANO+M3ltsxiTbvLZ71M1rxRGNyeC322gih9O5BBidi1wQ8j6OYtsax+Pi4vlIYyxcLheUIkTRYqeAn1CbR6w9hiMF9CsF95xvNOf3XtgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707213497; c=relaxed/simple;
	bh=aTVUONedvOYsWoGON95FQ5RHxM2ti6ZNaMdz+D64W2w=;
	h=To:Subject:From:Message-Id:Date; b=fKd5YiXy9Lm2rMdrONbmnO1kGDELXqZ83kDGU+EQsRNJr7aAdFo9H7Dmw0Mk2Vc9D6IC3VLc8GxO8wvDKvV/33scYcBu8zCBxUUM30Jo5xh+dNBW4yJB/f4iBAWHjhiZhIu27aYiXKHcdVosvfnYdhv/2Z9VA86ctUHAFTN58iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsgj03pX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsgj03pX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90C18C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707213496;
	bh=aTVUONedvOYsWoGON95FQ5RHxM2ti6ZNaMdz+D64W2w=;
	h=To:Subject:From:Date:From;
	b=fsgj03pXTgcPKdPagnezK09+w6HeWaHf6bfuDyDWCA9z61glGWNb/EoOQX9vJ66Mt
	 FudjDX0DPjKf9/cP14irMIhfrINr/3QSDsHAb/DXMBQZKDiQme/lEUsBGHmMJjU9aA
	 KXt5OiLv2AR/Z6SQE0IZJ9Zi5F1mBhPJdgsKct2ozOD9hqzaJvDqRBnOw4cqE6L/GO
	 CuMPQjSPIN87822MDeKibSTTjnuPSBuibWeUMCxpHKJ9f4y+g3hTcP1vyh8hUpYdQH
	 +uZErXdsPnovj+qxqHirUSgwBmNdbvI/m1kqVjyz76lgPTEu0k0HOX6i68qNFw5xZ7
	 KM1akpj1y3EWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7438AC48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170721349646.28932.8927295925886238195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c5325d4f0f0b97d96d49d627309bfa7b530b4089f8d0fa90e986c1cc38b8d2
Date: Tue, 06 Feb 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707213496
