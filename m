Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8448F19924B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718659103; cv=none; b=WUY8t3yOImDtyzqJvP/PJnIvOBviyKiGOGH/+tgTJTPFZUPifNkOqPZXIqP0jPiI5dvXnhAufzslFkn1vXUOIS5qzfLfz+qZp5/k+y42enx/YcdE5HLXlpHw9kRqsM6btZaMdlL/+HyhLEibpgXNmy0xPEm6M4/Tr2kW1NKeXRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718659103; c=relaxed/simple;
	bh=l9bI1q1E/kfVmFz1yUq4iCy/J2yclZoRdQtJl482UVg=;
	h=To:Subject:From:Message-Id:Date; b=CAZOA6CRPUUlgWCclaWlvfZefapGoQUnQgTNPHYjaYzBeT1CazKipExC6dxFYaThnkmNjiXSMK/OzrgqxFj4cITyyE02Vgl2FLLoXgUJrjwaGe40JvKhtGesmsVtWlP/zhQRJACTKmTzD+RHX1Njl2LhbZKb9duNKnQNMtHnUGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mt8aj2ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mt8aj2ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 137C9C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718659103;
	bh=l9bI1q1E/kfVmFz1yUq4iCy/J2yclZoRdQtJl482UVg=;
	h=To:Subject:From:Date:From;
	b=Mt8aj2kaB6fn6WiG16MoouAvT6VTyNNs/2XVp9nKtnMJpig1J2hC11RJxWbOeSPiZ
	 dpuJc2t8GHSs42KCV/2BhUYHiOmkzugGE7PAIuRpuv1FKJGrXG6lklQxW/L/arc6tt
	 W3edSpuywsdcfAd0e1GltAEc8rH9RsY0ncMWWdvLAT/RlKrHcZwokT4AjryaVrDkuI
	 9bODAvolWPrKTlOqS9QmuybLN3WKNOpuTa6PwZFzYSI7fFhSw5R6w5tesBxtkECAru
	 9wTnudphJE+IcIFMGh4yyVVeSo/KNgg3wPS6A/nP9Zz5ZlhOCQW5LY9sty01kahk/V
	 5/sODpN3YB1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E26FAC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865910290.31152.10499120642625805978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008fb9d2e329904e20b5d1765a5c1bb9628aa9d3affe0ddc88a88badaacd8f71
Date: Mon, 17 Jun 2024 21:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718659102
