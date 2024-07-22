Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B66539A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721617554; cv=none; b=Fpf7bww35v4CfhZgXsXbEuzxHy2T8vEP6jskQGNLhCMiiDo3iV5RD7+tcLP+ubq05ivIt5dMNBwFCwu/kdjjG5TNXbVWUukJUuJBdqoqzZI6em3MFzLFwq2T7cuTDZk1aRVaBMSel0+B+EhTIi1AsyRpGn4VrZ+J/ACnroIhwH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721617554; c=relaxed/simple;
	bh=6pQPsZMB0YlV12HF3Vs6OD9hyg9mGPSoihYTgRevT+A=;
	h=To:Subject:From:Message-Id:Date; b=imE1DjVfnSbLDs3b6DFcgkl0cKeLHumQIhpXq92IfbSCyLy/V8a/GVeoLEhI6e56GdGrhKaxIP1Dl8SjMiN1YwNl7Jz6xXu7fX1gd4HnCYP22RJ0f2Yk1SPuArSU10UN0SMbQVxGv1Rr5rU9/fP06Gpe81Z1Zj+GcS4Ir05WUko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swDhqAhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swDhqAhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD090C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721617553;
	bh=6pQPsZMB0YlV12HF3Vs6OD9hyg9mGPSoihYTgRevT+A=;
	h=To:Subject:From:Date:From;
	b=swDhqAhOSQXqcuHfkcowSZeBoN5SXatWCuL+7mFGNf3plmroct7h52wJ/spRKzM28
	 x4HStg36nmQA3OviqMY7SQWeY9OKOw3Gx9Uj12XHpt0ycV8gacUlMjS9rB2ahGqxmT
	 +Pzed9TsR2i88E2pU7Cu+hor/iFlviJmyrYXSLo78irKy8XOoK6bBfkCnZ6BiclYvS
	 6xQSB1nK+mThz1wyMYRz5sbUUTZCOhmQklcr4oKRLRW58ptPddVrYX/nHLUiGqZiBH
	 I5EXAjSnmiAvClUFUKyc7tKRrIfQwiPriD6F0S/N3GlJsHuWCc7u7LEZrzURVxPEHG
	 YgXPNlq+aT2Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9264DC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172161755358.31568.13276345694130737862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1f5ad29f3ac8486df2afce4654efc03022cec175e67e245879b30986e86a4d
Date: Mon, 22 Jul 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721617553
