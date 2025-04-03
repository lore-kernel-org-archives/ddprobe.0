Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449263FBA7
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743680394; cv=none; b=FK3BsblL+KpP4P1yRfgnhkrpKyMOWnysxFZWPW+v7JBXaiUgUb4g5gWLBqQ01gBw7wgjX3BXbOC3PxTDyr2O2ZR8RbyAFT2IfxEP9mNxNZNZriZmmCC/NFvhk2GqYM9kxx+hgPYj+CbeiSU6RwGbKT3qSNSw+ZgQBtWUZubNtrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743680394; c=relaxed/simple;
	bh=PdEo6KLn2F96rmZ204U1oZG6VOinL7FRHGCuOjSpQOU=;
	h=To:Subject:From:Message-Id:Date; b=Qkz4mMpKXB7eHd65peexvJ5nIquoNjLUHmuUgjE7H9hK5t8NiacOPEZG8jPDZH74ldMuVsP6ISYW/FLql6QsyQv/rc/1+pFyT775kwC9TcUi4KaY06h4NJbDupi005QKy0m5/mcrZY2ZB5qcP35XIgqac5UdHP8AOxTiJJ8C4CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfHK6DmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfHK6DmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8F3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743680393;
	bh=PdEo6KLn2F96rmZ204U1oZG6VOinL7FRHGCuOjSpQOU=;
	h=To:Subject:From:Date:From;
	b=sfHK6DmPOAmNv/IvONRL9pvMfONTmoX/mrReIW2ShlLRfz3XkG9KDdzT33xWr8ZFR
	 LQnzI/F63TbgosdpAHETmscPjjiw1Cjw6ynCBDFvMjBI2haPlQFcYJgxzb+jOyVeSl
	 SpdJq98sABzW4PfyLPM/2t4iOESPcKsZax5mQf9Xq3RYoiS8N4C4cs0d308rdYm1DV
	 Hxnzi5OKcaFY4KxX6/N0U7MIHxToVgKqenHQOW5OegyLe9TUzwiHkrz7U+Y8axmpJm
	 fG3UnE2TCPA9iZ9qKQ/FOqxF0Q5lDTV6oma4LFOsE02gF70EKtrjMP2Wzu19JB8n/K
	 dUR+BGnrN5agw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45FFC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368039365.29786.17535154880149767446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583f0ce5096d5bcabea12283201939e18277f096e4ca994a0ff5698b4e1f0635
Date: Thu, 03 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743680393
