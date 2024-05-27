Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B19C1640B
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716824063; cv=none; b=U2HKq1cVK9bxAToXgsuQR8XUjqW8Gal9q9khdo93y54dIfnVm6L7vN05KbyIR2LtH/QJkCZmqy1bg515PAErSO0WDRF1eCtbn9cv2dBPmtoKs3jdz9hEA8b/9Pqi+9wROb2yPfixt+hm8OI8C92+eKDlWbdpgErLYGOqR4ncEq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716824063; c=relaxed/simple;
	bh=nJtzjfO3YXTDUU/zW/u+cGRDcWhNYLC93zjIvTD3Lfc=;
	h=To:Subject:From:Message-Id:Date; b=fI9WGxVLN9vcsxr3d6MujVzN4W36qAYccyof9Un8H0fT8Q1vHtYt7Eyt8VCkOX1Toq2GOywWdbc9BE2xOWLxGVZQvk+PlEzl1zqnHzmun+kBeCg2b8wuQ4WMiunCQgJ0NgmEisOcRciW/VYvuv1uxPQNC7FtFkTxP8Bti45SsM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6LO5nrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6LO5nrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF646C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716824062;
	bh=nJtzjfO3YXTDUU/zW/u+cGRDcWhNYLC93zjIvTD3Lfc=;
	h=To:Subject:From:Date:From;
	b=R6LO5nrRDNv2kGSrAxwqK3ywXeF2ByQOiin0b1P5N5hcmWjL6gRqoqMLKcg4ZyPbT
	 Sw1lZLuInfY/A/V5/loG+bQSf7krymSui/MHyH556DceeADBWdpBTJ7wE69PRW5nv9
	 Ls3lhgQVydJPGdZDjfvsJW1Jl2VkOzoeQQhecLDJyihkk88QbV3XpSLgmkX8YOW8aX
	 hS9SbO1rb3pOA00JikwwWV6/+EzPrYWoQN18LoQi3+Yn+Xrl8bEp9SRLpXy8Hlvv0J
	 RQ1UIzBrxl7CiPE4Uu9/oBzf97u03n5+RoK/FnFrId0C//bs26bn84sizR+NMDa+yH
	 kzMW6yHVCmT0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3A8C25B78
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682406280.19480.11169518264706760917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378d5d417bc010933b65fb10dd117f8dbf6ca3d19efdf459b18d931831f66e8c
Date: Mon, 27 May 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716824062
