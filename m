Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523EA14B088
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732869354; cv=none; b=LWSQlzrffUdY//2vdLkY0vsRZSbELY6gjEk8H+k1kGGEBC67rVyKj2fOgQh5pjdFV+QJ1AGNbahGUdakRJlYz9fuTRjLm/8kzoxo+zDBDAp9pKY0bxyvIN4LGzbNxKB8CDJxyOrA09QgJ9IjM61YsblgtoI8jprOFM8HjzAmrKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732869354; c=relaxed/simple;
	bh=3VwknJdFVYy6jI6Cjh51W8BCYt1GdkgefqkzKqLho2s=;
	h=To:Subject:From:Message-Id:Date; b=eWvMgaxxB42OXRTusjEjEQ6Ec2PfiVLNMQGcF+MHrpOLN8jqCqE3JsTpBpqjD9ifS0DfJo/ty0BrjL3ROHdsTFeykm/s+F9b/IWyuh+Gq8qizb304hpdfaiblIJqIN+Ue6aUo2b7xjkFQTxPEq/DyuWrBT6rJMKKM78ymOg43pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9/S3dI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9/S3dI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48CDC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732869353;
	bh=3VwknJdFVYy6jI6Cjh51W8BCYt1GdkgefqkzKqLho2s=;
	h=To:Subject:From:Date:From;
	b=R9/S3dI1WsX9QtmUivzG7crbkymqaPSVhmjGFZJXXldMOHfWEVmZ3gwvf2+uGpkok
	 YVrr/wj1h7j6Cr4OyRNAv2Lw0WLJkV8ub6WhpKpJfBI72e2XZqVx17FefgIdpyBmFE
	 jroJYDeBw7vhlpdvDsivPaLhtid47fHzxXIWFjEejxEM9cHnKklX8rFrQYHZ9lLPRI
	 KQR8i0HoqWy2hHMZAhLkyIjXeFq66VMk33CPNOBsYksRLFJl8k/YJ9bQtaf8l7PzgM
	 LzVWsvGvICQK7wWRJXtGsWYnw+jBZrMDClLjJV4F8+juXUNpdGyrcmJMCfejW4gFfA
	 IEGXXZh0W9+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAA1D6EBEC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286935365.2992.600471174433376756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f2191d5002889631964e37a7ab534ebf3450f3de63e5e09567345d86e345e9
Date: Fri, 29 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732869353
