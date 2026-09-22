Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520855187FB
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790083834; cv=none; b=WCmrKmH5bRf9SNNRzfHR6qo5wEzfKfEynsQ7PiK2ww0DiGZW0q1RQtMM77etO5VTDhhr6H130XfHGtNSvNy0nWWp16wi+/XruBY0EX7YVUXj1VLiceGa3wwrMrsRZk4Z8hU4+o5mxQEDe5y3xMsclaOTeDOkX+V5oSyvANpNLhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790083834; c=relaxed/simple;
	bh=Iy8A4+0R2WcfaKisJiPNfLOwCqD7WVrP0rQmUXfNqR4=;
	h=To:Subject:From:Message-Id:Date; b=UtgVENF5tx1W4/yvouviuaBE72W0T3Q5PzauKJs+hL86a2ozU9rLyJF0BySn5u/rhb8dWGY+J1MtoxqtcPYmoTwQXnyQYmdmq8ot8hf4fDug2GITdpQFxjQ9tBgj4w/Yx8I42CnHrG4vGf0VY+/4fonlg9ZtiMVTFXwKy2wxQps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSmX3XX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSmX3XX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE5DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790083833;
	bh=Iy8A4+0R2WcfaKisJiPNfLOwCqD7WVrP0rQmUXfNqR4=;
	h=To:Subject:From:Date:From;
	b=ZSmX3XX9WxmgMAohcNUDODgZzAQOTp3UPGleXsPmfpxm+knjgMi0OKBWZ86YsDcl7
	 5ibMMCR+p9g3J9d8M1rurIpaCM1qEDVzYwmAwY97tso3uWIA0lDV5LsFl2c3J9YSuU
	 2BPrMHJzkGcsFgcsbz0FEj2NwZ1c7+z1R46FW6w4vrEHzyhYNOcZOk1R/UgrppeYce
	 2vP2ZCXbSPW7vTMZifAw2Gg64zKgtzW/lzPJohlrtPCR3X8IHSAArYxHqJAANOTyyd
	 2tda8AEijtqWDCS+mgG8yq9436LTj6wTFBq5Ch8bB8uAVTbO76TUOak9K2AAKmcEC1
	 jhfDfVZ26wKQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40BCC982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008383372.11860.5836614806736408073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b798c41dd512b679ad3ded6b68e351c8c965369f04a153e1e8255e00210a18ef
Date: Tue, 22 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790083833
