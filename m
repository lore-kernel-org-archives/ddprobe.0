Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C70143744
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720002323; cv=none; b=fOkWu/ujAr388TFBUm7MSu6tdeZ8FMQpk13nCSKxVKAiKV9bKyvPsxwMm87rNzBMmVgEfUSVdFAMvxKGosK660+rEv2CdYhxyDEtM3s+JqaasHmYh6zMLLjpD6WLeQTiWS/qDMRw1pbt+8vefq4X/yuhwy9VmQy/lEE5JIavr7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720002323; c=relaxed/simple;
	bh=MajyKQP+CiLlHuZQtnRDFm4QVBh9nsW7Tc44oWtlDnI=;
	h=To:Subject:From:Message-Id:Date; b=BWng8XiQ7ktYF5PAA0I9NDGK58WZcxHfCO0QphWcsTWyH5uaQVVZowvnincZLicdgrwbnLxkCrHOnvEWgGVPYXSo/8+Sc0GySwRFmQ88stHJlWrKrSoirMGdnbOqO5KAbiyzIiNz5g93IbR2dVu7ZJD/346PVkTmQHQtA5i0PPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFMUBNZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFMUBNZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6C6C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720002322;
	bh=MajyKQP+CiLlHuZQtnRDFm4QVBh9nsW7Tc44oWtlDnI=;
	h=To:Subject:From:Date:From;
	b=sFMUBNZyityRLslBkFNUj0eHim5WReLyiSh/gWqpD/ibuFDMFXPecBvOfcC/I2EZ+
	 /bnUsJM9ZhWFZRpQYjtDvVNziLeBqMeZof8WR4cBaJLO4hOT0eieVJKJRUCjVb39zm
	 bki6NAqQZS1ekWHbWz21fdVTBpPKya99pctbB8JknJBoDj+bi1CbIJ6VsOJ6ewMnGj
	 afYJA/vQWz7KOmDVZC9NxtPTXfT7HHIfStvuf3XFa7vvTaGdLEWyPGZ3cFs98LZ1Je
	 hpUzU/fdW7kJRW9rxxwXhuE2BbhTOLigSfAn3HhOoi5c2ku2wQ14ZnQaeGZxu+yK1W
	 5XKdkTp50UWVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CA1C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000232278.993.5034683301079002744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7634979f8b5b5f1df753bd6e64aacce7a7b59800bdb599839b3c0b98fd2efc50
Date: Wed, 03 Jul 2024 10:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720002322
