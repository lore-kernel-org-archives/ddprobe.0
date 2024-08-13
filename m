Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D575880B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723508753; cv=none; b=fAOe2y94iOGoH6NFWDYnM+w1G4Vp4Rhnlk2TKwt6bJFUgPBJxRk/VyRu1W6RsPvAveSx2sqtwIZ+TeF1clMHjlVnjWIShCYFneF1HFtfmBJPMZkm7KoHTDh2jSOWevJ2IrKcari9ImjSFZvo6wavMp5QgYGapaqVzKUXtHbrkPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723508753; c=relaxed/simple;
	bh=URu1dRPDjl/L/9mYYaGlKUDMfPQ9z6O01xy7CPKNQmQ=;
	h=To:Subject:From:Message-Id:Date; b=JRUCraF4g+Id3nQsGrOAbDBEBYAKqycdJQpYmBtJn0Eyd7XSP+Ty0klzEzXgQ8WUZlIDyXECBwpaVteO05bu8mz33vTM2OSUngyW0VeLxREeMdf+IgP4n5P+nu1SGX0IDf4JSGh2maeddx7hKKVKbUpF6NlCLf3RBqCFLg+lV0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL1gEeml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL1gEeml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2FEC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723508753;
	bh=URu1dRPDjl/L/9mYYaGlKUDMfPQ9z6O01xy7CPKNQmQ=;
	h=To:Subject:From:Date:From;
	b=SL1gEemlzOQjCDszRJTA3k8uQ+EIExoGwUt2C9kZQlwmNWOiToUGzMhrbbmZb2EtW
	 l4WfCOH5qEsSIQ4wUILtD5HDRSErhmOveQE18AhLtYTH6ipl9SiyXIpq1IiFBnuLvW
	 ypsub0Y8lM1/xcVjZLtJ1U0ba+R+dHdnpaCZdVD8wEEbJ2HplD1E2Y+fIlqSj6kPJu
	 pL/uzjxvDutCPaStT2d9o1+LiMOB+8clIc0m6fEfbdchmbC5ziYGAHuAlJFOjzkFG3
	 l8BHdXwXIFF4Kd3lAY9wtC6n06OX6IsQkqi0WFj8cT/Tyx14DqvSIS3KF7ut0y2lpt
	 0UhmVPozTjLYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6A9C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172350875359.10078.3833722526208720928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e3867ce01380b41a837a8f2971b0ad6af2ade6e8d0e3e3c8295c6e784fce28
Date: Tue, 13 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723508753
