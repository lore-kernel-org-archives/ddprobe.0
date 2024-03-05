Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0539C6025A
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709626097; cv=none; b=VuYQ0E19EDgJNYqh+K8xcABVRyOMCURelFVFaSavbyF/rheaXcl6VC/lO6CaKovdYOR+bfdsL+E9LhYi1X5N8JzZgqss5pLxPLRZVNftJ4AwHRR5OaDH0cgRu7djakwTnqrKkrMzGnnCgrKdfsm8LEw04iin2xrEjrP8e6438YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709626097; c=relaxed/simple;
	bh=9Tk32ZiPsf/kreFXVCCZltaa1QgQabVEVIJjZbwhgRk=;
	h=To:Subject:From:Message-Id:Date; b=LUakgfnqusyetQdMjI4h04RLayX+8MCC2vgxUlVXtLfXMSzusthGXVVNAtPyCyQJWqvTitSSoJrpMufoBcYSKsc1DHIp6KGA3ee8g9gcoXzaTORDxP3TiAgCOOLKxCkI9Lfmak1P7MepFrluR2KVwvKkpm6WK/HZQ+JX+5hS3bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3fehvxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3fehvxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B09DC433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709626096;
	bh=9Tk32ZiPsf/kreFXVCCZltaa1QgQabVEVIJjZbwhgRk=;
	h=To:Subject:From:Date:From;
	b=M3fehvxnb9/31yZBshLUi3gwMUw/LJMxM8I+7VKY9vUTEU491ybEx8Zr2reJyUGEP
	 ZqahOWAj05GiwrVjlBLV6FEFmfgAZ7OTbsiSt8JfJHI4+KYm8Ea0x1q2pAX/owSTVR
	 Bf6Ppm09wIxlAErSKmabbR0ydaWlnEDeqyhIvpJbb0EHrKcwupTqWkMLnQg5J/qiqf
	 A0KyQcpjcaNK/EYxi5SY0ukYO9UELIjX8TfdhP8qSyylezGM1TZo3lc8UVggwfKVcR
	 YatNHwB8sLKWMWuzjJmITpBO1kdRvxiSegemnrj86ij7lu32W/BWVvd42x0Cm/YhAk
	 UJDh7rpsUEuEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5F3C54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170962609638.4804.17464386991354961405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4104f2318194a0cf5fa23b8228147db44f301a3ce34dc0823711cdd0aab75408
Date: Tue, 05 Mar 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709626096
