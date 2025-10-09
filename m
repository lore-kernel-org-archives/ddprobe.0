Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202051FFC48
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760035794; cv=none; b=LmEmOwTn4kmQoplnx5ZWKlZegGWQaZi0Iz6XNn8UKxvllBi5pLM+FydIFeF2eQPyaY9QnaT8svfssgeKXjYRrdjQqAOToG2wMHZeW2sWo6VDWfCGMkvVTHuv87IW4xEvSkvmfP1l1fDDpu+McEkoPdQ3iaOZRdm7WktdAK14orA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760035794; c=relaxed/simple;
	bh=fx3/Cb4cetoce5urmHHyS/8FDcuoe20+uhLECirXzbo=;
	h=To:Subject:From:Message-Id:Date; b=hojUw5nW08si2AxtyI/evG8jujLqwPOjtCXTzrgWFwe5i52m1ZyF2ly0jDSjn8aGk0gnvLatjO9soDCB9FaXpsX2FDK2VJvAGU1zTaCzJNg3ELI6D+FThfvBOraYNMUUTdkVj0ww+8T5YXnYI13vu0zCEp9I6Hx1qoJBzUk8P4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiZg9sKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiZg9sKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2755C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760035793;
	bh=fx3/Cb4cetoce5urmHHyS/8FDcuoe20+uhLECirXzbo=;
	h=To:Subject:From:Date:From;
	b=AiZg9sKUNN7VxVCpfvo728sz/CnrpOca3Icl2DMdi4nSYsiNfPDSXmrqSK4zsG3FP
	 2ggHXW9fVGd2Hl0PN7PtQG9LK9z2JtIBjUESznljH7Gao0EhtFfnpJJsHXEgUw8/6v
	 12VC9/pg2GfhZBOQozELsPppa8ASUfCGV3yck6VWP8Uo3+yvQzfZCwWPmwPlld1Jmy
	 mxdc5KB7ka+B0cE5xy3s89a45EQku0tk2EbGCz6osLbT7wMfJ9QeMnC86gFkb7W58t
	 nvwI6MvS+PpPldXWOrf2nS4yugweexzFQDV8WfzI9BJMCEe3WAuUi2pchccRVFugP7
	 F1VEzERoGqx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FCCCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003579358.29338.10620579181360235967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4712ea3bcd65be77eca426e7f31baf59ebf0d0edc1638eb82c4226f8531400f9
Date: Thu, 09 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760035793
