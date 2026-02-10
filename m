Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5172D7DE4
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770746634; cv=none; b=F8Ur629GDdbG3VCa6A0i3tMbicQvRDf/Fyj52+hOR4qQVXPqCljC/fNCaiElPUXIunned5Tkxurd27YJ4J2ud3xXBtLhObAxD0SXy7geUXBoH0BaO8psocbE1KrroOnKD4Xn1mqu8CgWTslEM95AdJ5C3y8k1S1PsGrgjYEdabk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770746634; c=relaxed/simple;
	bh=zVuzb71U8K8VqycBTa3IkenyAcWegEr9DCnxoYYDxI8=;
	h=To:Subject:From:Message-Id:Date; b=Ac/yMLfs3PBpxG7MT5mXTbzKYCN4N/pAMaIF6l9KxreBiKTtkXjkhgTfyNLy69tnixfRiTesVy7N6Qy80IIIo5H8958VYsrLgtWgfBvGcH1eZf9bed2+YqxoDGv5kCBv3UMDpYxkpm/YZdbT1U2iNaf1EdI4ruVlUZGXpcDvoa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+cu03BI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+cu03BI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14B3FC19421
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770746634;
	bh=zVuzb71U8K8VqycBTa3IkenyAcWegEr9DCnxoYYDxI8=;
	h=To:Subject:From:Date:From;
	b=I+cu03BITOZQlXYydCBJVO7CP1QTXhbA89z3JVYzbRovXT5ZD1oOK78u179t4xKTB
	 CsonxcFeTUXK/xcvomYZHtDhdtVBE49c0sJmRcCpn2hZf56+pZEQDxYBa0XiJ8W71Q
	 m53lIdVvV2jUH55AFliCl+WDVhwv+ZF6adeH4RdfIDlSd1PQve2g7moAe6VmwloSQo
	 23EVutr4a0zAxeGWuaPkiyvC74mPugzVXNWGux9iWxEGF/Hnxf/PxqNCAsKGJ01PAF
	 BfhWdi3nqnbElSthyoCUkkeg+7i4r21KQxnVxO69f4o/egCcz2ma0dgVwEOeCehwAJ
	 zoBufcZgyrJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E43D7EB26F7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074663380.18627.18040214641203607197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a4428e9f91d6a4a1a69f17139485154b7598dd7c02eb1308648a3ec9797448
Date: Tue, 10 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770746633
