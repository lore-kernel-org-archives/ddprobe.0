Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379CC25A628
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737930354; cv=none; b=qONyhv8czEZCyuJyxbZ4N6vSQLUFEzRpDm/2of5uQ8rpawyKyWHBYyarJJZQu+Byk5xF60rdWALOWXbZ3yJ2ZrAbJV8ZW9ikW0V8YLebA1jlLuhZRT3Qyj+apWL0Qb+yOFz+a5AiQWjP11CzC8ry4Clp22746CNeUPlFUVcyBPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737930354; c=relaxed/simple;
	bh=kLJSlNoMuqyi3stKi9XxKNO+D3ETptKJ8MGCVTgM6m4=;
	h=To:Subject:From:Message-Id:Date; b=bUtKLGUPCQB8BzxEhvKpVScWAw5UJNNcgOU8gJLrrY4exOfkToOsw5LSJmidPMV0uXyokspDUSwGX91OEaRNlg5jXoPfU38Pe4FYcINY/CLSffrpqXygK5Sp2TV+UlU+/1llFqu0hKcZI+p2286nOf8qQ8CzTIXfjSe4Iwz6pAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XK5xIh7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XK5xIh7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8A4C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737930353;
	bh=kLJSlNoMuqyi3stKi9XxKNO+D3ETptKJ8MGCVTgM6m4=;
	h=To:Subject:From:Date:From;
	b=XK5xIh7abJquT7jcmpPcATh8XUZICNmuemYCMi0rrT4hW6BdfNFxeJTcNJyPWZSPU
	 EEZf47YxFcNn9SRxMMAsLS0u/p2v+vaqwZVayqC2Bwn2ZwO6R6lSt4caewqpMtBQHX
	 TbawCjnz0oQrNT6HUz/DAwtQo3bhlQRSA483aLzCiOEWX/YV7nBLWMJCYhKfQuKeC6
	 XlLO2alx4aRXuOMTo06md/jgmrVt9z0qKaNhdj9kSEfqKSnNCG9fWAV7sCxRqX2wV+
	 xFMkm4iQvDlThk4bCGT2BvTCH1GIQ8L52AB5Tl0Zyu/xHoNxhC+DFcnCUDlYD6CXMe
	 hoKxcxyAD7CZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FA6C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793035358.12913.17610756398707097989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115988b45c7f5c8329038e5fd03096f49f0054c8720a331e9683f12b0381e6e5
Date: Sun, 26 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737930353
