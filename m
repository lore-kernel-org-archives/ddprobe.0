Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FDD33A6F2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775026534; cv=none; b=MxhLlmORrFdi67fTzAhLuF5yL88fPhMTNYlcXU3QnCrZzz8ph/iI8ANJzKywqeRenMcuEJRByRHBz0CKDyIW234o6G49IMAhP2uLv5r7J9Mkt7klr9IUx5fJGhgVsXuiK7qUKHlvjxP+SIiqYsARUIfdZk4qsCfGbujHF05c2tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775026534; c=relaxed/simple;
	bh=pR58mXsEgcRXEde+17CHueHLZT+Io+O2FEkto4FVS9A=;
	h=To:Subject:From:Message-Id:Date; b=QMvBJBS8iAxaA2tM6Hx/BrSDQhMwtadJ25B+SOTwYgg2NuMl17mZCP/H0p+oncYox8UT5DxOyqNI5JB9aMLXJKxlkWIMvkshJOp4dxkXwa2+4/47BAVuj949rdxmjPHiRcI6ZJltprv9wtJ/CAAOYpXgxcoMpRLNW6XVKoeaXX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwS5MVaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwS5MVaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD36DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775026533;
	bh=pR58mXsEgcRXEde+17CHueHLZT+Io+O2FEkto4FVS9A=;
	h=To:Subject:From:Date:From;
	b=FwS5MVaqQpoW1jDRTWq2urmLkkjcOXyKUXgUTa8g/40FRTE9+NrsitQT/c+sz1r2z
	 ietmOvWwI71/UNrvlgO/TVLG3jpbr55rOFk4m9171AtpG4EqXDf52Bb1VhBI+eOziC
	 UWI+9dmYTO8rbkJZa2VfhGNEqfNqBjGizVIGZ+D93lD0iGVFDwPgslq6GX+Nc1QqtM
	 XwKESklEWN9S0eXZvqLY1RFJN7ydFHZoFEb+jGUXU92aF2zS+HrWLc+tEPPF4+UMhi
	 6TjnajaPsHeiDSOGfROSWJd413JDs6ZFZ1+05eSEiM46c+lK2IZNOTFfXm/SV5SdHQ
	 KSlDOfsjzhFCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9EAD3514A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502653369.3520.13276934734183014557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d497450467c4479d174cc3d8259b9ca8008a6a054711c7264627e8b741ae2af
Date: Wed, 01 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775026533
