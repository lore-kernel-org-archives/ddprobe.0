Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61315B661
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755885594; cv=none; b=S8f/cukGt/VMdUymuMqwmjLZ3rry6RwjofvnGnK92rUxCQk1sSrG42tA1eM6E+moi0/vkAj7OaN1RGw68p9G6lDhXLf10/p/CtXUfW/LgjbE6PIZ6/g1ifADB+Kew99Ajq7YPlkHqTkiX1ZN/nt1SOfJdBJii4VjilltqgXs0ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755885594; c=relaxed/simple;
	bh=QcpGDa3BzCuOyggBPwd2KPmQeRMwpaAcNtus0npgM50=;
	h=To:Subject:From:Message-Id:Date; b=MaeKCI+ABFUJJqXveG4uHZPiF1tele2qo2KTOz/2AnF45z59Dv4qDIV2iF2Zgcg4lJl0medrRehfCZobMHMDyFeFfgQxVtQw+Krq+UdCtRQnYKegSPkMluGBL0LzZENnuBBojJdyOjT/c2UTyS6KKZhttHtbgaiE09xeI+EUlWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtufF3cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtufF3cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CFCC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755885593;
	bh=QcpGDa3BzCuOyggBPwd2KPmQeRMwpaAcNtus0npgM50=;
	h=To:Subject:From:Date:From;
	b=mtufF3cbpwbT0a9TmpB5b7r3AKawM2FHCwv4CxVnkM9T7/VD3RP0/HZo0Z0ql0hSf
	 TornXWzNcY+Td0QNl3kY75Drl5g83moafXzBRahwwklxHDYh2kDrFPJ80QB9IDuzOA
	 +AJQ2n5sIOnhz7Pk/sALzlJIcsoOYWOC3fajhcEwSiRUsomant/VKRnI8TB8Nha1R3
	 bB7lNEWtLq7SAq0nBJxRI2/p4qMtk/6nEOsHPiBd2fNzwh28yd9kU83Ge4u3xCN1hE
	 HpheJ20dMueOqvD7ObLULV/bTUnzuMcnWW84qkVndwL7k6i6xk6YX+P9Bc8SVwlXiu
	 2TcQEDosc+JWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D79CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588559359.16251.11247630149332116648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d99c32aa0abc3d9d989b67b21e11a5020cc487c5845bedaea7d4b55a3fab233
Date: Fri, 22 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755885593
