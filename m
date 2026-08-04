Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0606246A618
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785865235; cv=none; b=MgNbP0TWa+XfrcY2zIFxhnFNjvl/WuXW3WmtREHvr88obWDR7YmYZs+FyPVp9KF/Xlnsc4nUJ664yyP2ACOG+Nn86P+QhYZLR/RyjT/gyMv0PrxwBT1BLconwlGxBKX1WHSZIdcHyJ/6r/0A7Q8sJo7+jqgLFO/hjYbGAv80TFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785865235; c=relaxed/simple;
	bh=qDPZ5lzuE2gH1yZa2bz74C+Mn+Dj+ZnZEMnu6MN0RH4=;
	h=To:Subject:From:Message-Id:Date; b=ZLyU4gxJBK9/nkdJc88OonocqzIIiQEE4p+vrwpoFCIPhsM+tmO7saYVHjAgFh2HAA20yLCJvY5Zx1dFagbbmmPED1E8xIiudggAI4Swm/u9dlt4ooW23Sa0t9oN86jugSxCNivPWFPDmSZCY9AroqpN1ns3uQr2A9h3vhZicy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gekgzopk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gekgzopk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BEDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785865233;
	bh=qDPZ5lzuE2gH1yZa2bz74C+Mn+Dj+ZnZEMnu6MN0RH4=;
	h=To:Subject:From:Date:From;
	b=GekgzopkYo9YZr9RHnYVkM7WhYeknvAITXFN8IovunXiDbrbuiVx5VU9Jtc5SCIin
	 Gl06JU/oDXzn+j/5t/ohB0wJJz6f0CEME3wo6dNCx3VvZpn0WxrwE5TWpaYS4dFBvp
	 66T0uMHHybtIN+mOiCnFbHarLkxLjCjJri/9ZSJO0dMZ9T74ZeNhK5jaFROqQEwliS
	 V0taFtN5jtQrLbpCYqqTkFb6W3RwPpH0rb6fsba+BaSI0b1WQ3hKUYC2xPB+JkrZLy
	 HmHe2AOUdswAZhZy0kOuZeys7UNjr1ohK/0Ie7zLRrqHfXy53zI0BSUctCV1SSUmMs
	 OwciI1Ecb2RqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD577C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586523369.3384.5964725695681475216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ddb3bebc953af8dd8f5b0732f213cd240ee8072ff68d7d1755a0b3789acfe8
Date: Tue, 04 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785865233
