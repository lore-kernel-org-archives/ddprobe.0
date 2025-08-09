Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251C015A848
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754711394; cv=none; b=BTSnYH/bMQThhLnAFJNYF90uUIQUujpohFfeqNlfJVw7D3+00qR90neyXnRWfZK+LBQnTrpe+z7+uji1+tr3Qf3fj0UM3gIqqH7V2qEKUQbpDz9iFlU12Kuv19P5pCMYBzdB71Iyo46A9aydawz89cSxTpqSQhEiV+8eCUceziQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754711394; c=relaxed/simple;
	bh=rM4U8mnY/Ia3q8eF866GCmSJ0xJZJF+VCldI4y/mv6E=;
	h=To:Subject:From:Message-Id:Date; b=ml9aopTH27R2Twqn3pnPu4UMZ+yDjyTb99/y6AvXyxdImpIbwHOGSy7Ajon0N9H/rcaAV0neUbTHWK2zc3uDthH98p5Xw2Urk15r28G/zF+JmPxd5iEskq596rPKomAfECRoLW/RCKSDNQ8aiqUhw1GPqtTsTpnSumDzbfkcaKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNLVTnvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNLVTnvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3740C4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754711393;
	bh=rM4U8mnY/Ia3q8eF866GCmSJ0xJZJF+VCldI4y/mv6E=;
	h=To:Subject:From:Date:From;
	b=WNLVTnvd7x7ZPwGeEp/MKWnQf1GJYny40YQ1ohLJZ55UPu826Y1Ut4x9PWvZc8e86
	 AHwgeTXrRDdUtiMe1q2/+SZfqRE8HoaInsEUXRAFvAWEsKZLTIiy3GthOow0ML4oae
	 EJxHMbEpEmD9ktrB1ywASETsfpV7nwGqlIEhrI7FmkWD6Hl/ltuy9yHHUlxNXNCMkw
	 AiRc7mQIYHDGn0l89hEm29tYyCE553x4DvfA0iGUJ8frIZjWAielKikC4ivGpg5AhK
	 dHf3EWGsuRgQ5zDcv8eDfp8OOIbvLXyDksmYE3NMsyufeNMtNWimDFNoXTn9PXXIbz
	 c3AmUP2zwyjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94394C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471139357.3067.103903182739877262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61559eafc1068669b8964952406a942792f7d997eabbb20d9e1574192a3b0c58
Date: Sat, 09 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754711393
