Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A95521348
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747390794; cv=none; b=AvI7JaBjZjsTN8PJh4xScup1trtL/zi4lwIwb6AiT2zyhZBeND5cPzRTY3fxYgD3eVBGOOosK+OI6jUGKYAffez1gd2F/1eKibJDfy0TP0Fyl6EGfxhqeTzyP+UxRgp5au+GJcHta+pUjPvkI29jUK7pjJfEoD+wKtbnE1TCDaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747390794; c=relaxed/simple;
	bh=scJTfWMht853l5M7qqRYk0aOjYYrK88z9Jzvw0x6siE=;
	h=To:Subject:From:Message-Id:Date; b=CKYcy2WkrhmD0w7gzWTMJrBpCyooswijhdvVYtsCjYteQem5UIhcZif6VakXO6U6/MixJUYzaSAyNcA7ilKgPBs4Ie4pwBEn42HCQV0AW+k9J/VIasyS9R6ntX5W70UiMqtohx8KwKSh/Tgv0wb5Wyff+YYrXs6m5I8uz0kSXl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbRQ/bUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbRQ/bUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0475C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747390793;
	bh=scJTfWMht853l5M7qqRYk0aOjYYrK88z9Jzvw0x6siE=;
	h=To:Subject:From:Date:From;
	b=LbRQ/bUW0W20SPoJuJGQaxfWhmyjy3+LHA2TiKNGMogpHoO60nEKdzYGRuT6JcWlf
	 pG1EsbKJ/eEzaofADXPlsK+QPCLud2I2SnGKFF7qEczbNpfh7TP2eHBQL/U+3gmoFu
	 ZdMFSOuBEMQomXs3OYOM8Eseaa2BfnX7H70GAL7XRtqM+h9cwtx6qkszU4rS+PEhce
	 Am+AJB2/b06sDRMSOcwxKROkW7qnizfNrJLly5dx2eL/c2NRYBiJ3zVhkQ4YAlCAPA
	 2JhrR8Mf4cDE9iuJXZ1ZosHZSfWBp9YYgJmhw7FdfYqxEmyqIkJ2AbatfhuI+MkH5L
	 wgk1aj6rRGIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA9C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739079358.2403.9430828258087940280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02907d3e434504398ef945c21af79ea5fdec62da5896f1548924f850721c82e
Date: Fri, 16 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747390793
