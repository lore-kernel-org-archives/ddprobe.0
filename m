Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECF637F756
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774611894; cv=none; b=WpSW/ioOamyFfPFsuTABhYnF8WicgqHNAQaT8P5JN6wyjpCjx6kdrWklfZk3yxYfDII6YLdZVlyrybPGqUI3j5Q40hKQm1uquGfOrsWt2Vo8khvsc3gk2bknpScmfa2Stew/0br1T8BHti3uu00blV2s5IyHdGc88h9ZQc5Vd54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774611894; c=relaxed/simple;
	bh=iClvmxjlM7fcM/qD3ICBPRZdJRuMfX06IpJ//WBNNNg=;
	h=To:Subject:From:Message-Id:Date; b=TtoeNc2bcCoP3TXPTVj57upH1Gq28vQrWvCPiMSI8s6Y2Ug7WLPnBJ/6+fvHbJr3nkynIXnfqbITG65HOmJSc4hptAAmxs70LoTUIk7OUJ6LCTBT5J5xij5O2WyaGP6mcZ4NR5sv8J6e+XIqHZ0R4bKVe3W2h6VbIaxwQZUsjlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwsIiXSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwsIiXSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A290EC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774611893;
	bh=iClvmxjlM7fcM/qD3ICBPRZdJRuMfX06IpJ//WBNNNg=;
	h=To:Subject:From:Date:From;
	b=cwsIiXSBuGjQuosRs790NmLVtsG+WC0Nj+FewA2N2eLv6+Ud/e5x6/ITey/Guu20u
	 Cqklpp9BlISGUQbw81/Z7dTcBsgbrxetbSyFrRq347E0k3l/sHJCis2uGQt3u9mmq1
	 oxguGnRIyaND0jSag6z4hd/JxVM2DhSt6WZpfqozPrGPXtP73nQdy59asYmPeOb79h
	 +eglpF3PSXRN+DASS2M4grU1lTYzdtuhl5vqrrr1mV83X5mKyH06QXcJNW3y4vrBa5
	 WpfdJDcJMHrI+f/+Gcaw/ADvnGqZwsp0T2S/IGSemyz91q6PHYw9RgjBYZbj67qD11
	 xe32cv6RiF9Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048010ED65C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461189358.3290.934743408812954627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b78fe04d0bdbe7193784e3e982a07a993cc302df22b9b69b9a537d1e4fb695b
Date: Fri, 27 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774611893
