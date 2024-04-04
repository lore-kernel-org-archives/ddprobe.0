Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E6712EBDC
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712254696; cv=none; b=JWUW6o5r7lXNLt5Jk85BhOm5gQ3kNvil3C6ZaiIlmNH7oSTdOQhdMuROgxjUxRbZQ2AHoCYtHI6KBikIPH/7k458KFyRXIJCJ49LVQqM7BaZKyftGNfPDZjPcih658VIO1HOe5HoIozQAe/OyZSdWCsDnjRby/IO74q+iQ186bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712254696; c=relaxed/simple;
	bh=djtDxqqXiL2KV7JC+w6LQdDzA2426hCYxfgdpCjLPKY=;
	h=To:Subject:From:Message-Id:Date; b=ug/eMsyyAARX8/lbQIMBX0nkpy8SlH7Q6WZrn/Lq4fD3WeAT6uCCwf+Qk5bxu8ktokrJ8nveXS/8G5YNqPL0QzZ6k+WPM4zGkZnd4kmQ4WYEny71CgutOj+B4RgWSxfs2Z2rpDcnPxF8BGKIYQC/YBDIUGQA9wNfVojO/2Vda7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITkiSN5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITkiSN5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79140C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712254696;
	bh=djtDxqqXiL2KV7JC+w6LQdDzA2426hCYxfgdpCjLPKY=;
	h=To:Subject:From:Date:From;
	b=ITkiSN5W4AANCzqlU+Cc2VvtjiMJGPhGTw5/ibTf6I5kt2TngH64zHqdBgv6FjxqS
	 m62CeVmUcqceCbEYU9i8sdiMpqmgxXERjzJSx/IsgtrYqPa+BP6+V5GFKHgzXYIBW+
	 TIGwHnqsL6pbr7R1yMAB23SQ55gK/cKQTe4V45Ec2GfXc84grC14j8y68JZpgGRnGb
	 8rr7y8xC532Fq5tP7dRJLt5+uzKo88oAoGmjcn8TIVTYDXlziVRfVgiafyFM0am8ab
	 XOh2Wo0cJL7dy5Yp/liwJqFeT4e5uZwG7mzlpccZ6WH6qFdXqjkly7yeXbD+7EJNs6
	 fYJCh3wvudBHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7CBCD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171225469642.25205.4988571998927505553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823be91539b5af6425092a3d3549f6ed4497f656932047059dce2ad6f53e63d2
Date: Thu, 04 Apr 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712254696
