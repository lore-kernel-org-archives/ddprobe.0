Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6812D9ECC
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758982195; cv=none; b=jnbfd2zphWzLc/lYgJ5nG7IynR9o+UuphYWiNyLwI22N8U8BW4BWbNXZX0wbNA4Mq40j9tTNgHXbG55UPCx3jdthcELk5Qqs7/PAs5lbeo5eeBgi1l41+jcvER7wqUyCbCJqEr8gWnR7BwGVnrzpy4uu0dXteMK/ctHyJVaCPmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758982195; c=relaxed/simple;
	bh=F14PmcQwb4ibSO8cTOXMfYMj2loC4Sx+t4J7MdJx2kg=;
	h=To:Subject:From:Message-Id:Date; b=IbNxqGacVMHhPwGm3OdYApP3nb0K5Hc1Tf9Lfy7ZgHH6SR37ilyE+AbgCl8m8L+dz+xSGCv5TAiMHpLx+ahgQYEcjjM0yXc7S1NuV69tsBd2B4P0/XEZT5x9psmbI9rzvqSdG0R97WhGaEhPKCoI4KwPfYADB/zbJbwuBMOeBwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKoCwcRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKoCwcRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A6CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758982193;
	bh=F14PmcQwb4ibSO8cTOXMfYMj2loC4Sx+t4J7MdJx2kg=;
	h=To:Subject:From:Date:From;
	b=TKoCwcRTyjnuDOcSzM9GHCWJ2UoOujYtk7i04YxQ9mUBI0h1XLBdHskiuWJ/FMzlA
	 qcuqnDtOFa/hG4qe8KvGz2GwxcLYbZfD6Xo4LfeLJPz1IK6Pvby88t7YZ7cxBecJyr
	 GJNRyGV4lZ0sKsGe7XoFjq5kZVtEEhGbTQrsp1X0IKqIXfjujKlwP/13BkizdRdebn
	 bbtT8GmQHcDBMIE6oYHBKcRsE6TWJHekah7CxwRRNcga3dWP1RKNwLMolYHpQgsmLr
	 qsY2iMHH+Vz8H2qDVLLrfLIBwncgtPliRiRHJPWZXX3I+BhouPrHW97ROv3p72OHUv
	 W7HHh4p4fv7uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FFCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898219358.5287.17511519970743413040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e855e0d352ba8206f4bbb3f70370516d624d814cf4f5b542dbbfb128e66823
Date: Sat, 27 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758982193
