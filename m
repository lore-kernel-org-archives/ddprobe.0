Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107C121CA16
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736436954; cv=none; b=NP8zqIbModiEV1OGj6O5iABTlXtsyEWiB/hzW1JxffGcpXTUBSRz+ZVI07dWGAmZTrOzekYEw8Ig1FAePWZrlFnpvECP9TbpwnsEeRIvDAW1h8LPYXFhK+xGOpg0vjfv4Cy47gO5I7GlS2+86eK9tq6HftEEah0E+kc7x4e6UGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736436954; c=relaxed/simple;
	bh=DWfTzOLTy4qaZ+Y8IuleH098bVM9PIkF/HXngfwY9fM=;
	h=To:Subject:From:Message-Id:Date; b=DoyxzC6rUl9l6ied77OjH8ly96WjHh2ZGqV6/UjHXST7uqu2lW8hqrcc0qbWgRS35YHYc3PNGcjXbQSdnvJDIFwKGHda0pz2BrXZYmCsFyvDkWFc+diLOzboPsjMemo+GWx1o6znWHlZpS4Tle0JNRLnhoGbPfCr70Nsb6q495o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBfnI8bZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBfnI8bZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8354C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736436953;
	bh=DWfTzOLTy4qaZ+Y8IuleH098bVM9PIkF/HXngfwY9fM=;
	h=To:Subject:From:Date:From;
	b=aBfnI8bZCp1e335/euyAXV1Yl5ABsBF6uCNAlcREx5FGpHrooZ4fiYkjVwGm4uy5L
	 4ZNcWQhTEFPZfBmoOjhoIZI1NKL9bIU2OY1VkQ9RZoGaKlkSl1TH9tGcGDWVNO9/rd
	 LLa0UwsG0HosE8Bg6TMVKFWOeWJHtOv0Svt18gQGqhjKDS+7dnSvPrVuTlWIwYeJ0f
	 SoZ+5i/5D+xRmboZGcmL7PmaIxSL+UoTlABENtKqovfDJEQXPCtwbfJV9TTiFjMw3L
	 MeKaLRYPWBlUs4gWrnKgUV8gSXXOuH5taXKsxdFKArWWJq2B+l2/+Ug9c2PC4r3yiA
	 x+UqlyYP5hE2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F0AE7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643695358.31889.1570656158839282433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b62a2b0c4f73c3711de85bbdf8616ef9ac3e3bbc7426a8aeb1672766ac397f1
Date: Thu, 09 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736436953
