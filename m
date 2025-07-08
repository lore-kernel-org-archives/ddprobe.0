Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E41625B1EA
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751981995; cv=none; b=Osd8+TTC2udmvKhP/Rqm6jJ3au4irgVE0AC2fkyNA3fKC30NUzdLwKfs1OMh3EIrRvH9TDwgtjDcgbVQ1SVsxa0yoev/Y+5GrgMI2m48DXVAZFQuOAKyhEnAC3VcYoY1swh9qsGLny5UuG8/95aambY8fmBRtniaqN4IjNlJuZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751981995; c=relaxed/simple;
	bh=FzIFNf6XAy6XigGbbrXn/0BRxIrMqsH6VVYpBP1H5jg=;
	h=To:Subject:From:Message-Id:Date; b=kxYljMyLqSQuXy6j2LzG7Q6re1Ruw+DOn5K4PJwr8y4Z6yluyAvvG/NIMBpeRi5+mLELhIHYDI4urlFpJCbSg5VkwNbCiDiCw5mgLayHYe8DcshxZnohNc/WAqFBWCUgBEeHkaC8judQJr0E9uILazFMzUkrDCLBr3DkJmPjelU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvNy+vGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvNy+vGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBD4C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751981993;
	bh=FzIFNf6XAy6XigGbbrXn/0BRxIrMqsH6VVYpBP1H5jg=;
	h=To:Subject:From:Date:From;
	b=CvNy+vGfrMdBliI1NeGmhu8NmdClIXTOqcXPh02VVxpjRe/jPqBL9qGgYRe+tqcgG
	 G4ijgXu2PlFI4fvXkmDFlAjZI90y3Val7fct+dDv9d0wSeSwb1yLzHdpp8As7uYfUq
	 P4ybwm3L1jJPN4TN6SRveC2fUqQjP21UzHEdLClzFUsnQkPDFWIh13XLWNxhCuqjos
	 8Q1Sx8xs2q1r1NGCjo91ZbchPTFdmQ9mp+T82YWoefj/AFu25gEehlsRz4SK4mbSzh
	 Qt3w49kU2hTYy3r5Y8UCJ//2AQQpX3aVizpprjWZ8Soc+MeXzNvRocj2ONsLMV7AnB
	 He9i2xbhianug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E13BC83F0A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198199357.27810.4598419637907994199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a5b00ff908859f6bc1715f6ef34a5a73b5f9263c4d3b962c8c1155b77fd113
Date: Tue, 08 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751981993
