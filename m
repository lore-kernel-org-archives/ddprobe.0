Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F192DE6F9
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751510394; cv=none; b=SAKA5Ipftttgr99I08vsxg4WazcvuB52jvdj5JF7KN9MZtxfZEM0PX6Lf4NtXVWFk/XT8S/2t5vJ3LylrwOvvH/6hTjyfyK648I6rOBgyRlIskFn3XSe+T/XEMXyogS5lzdO3SsDTo+9HlLKl3oaQ5ggq7XupOWsq5pS9XCLk9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751510394; c=relaxed/simple;
	bh=wAYewxellhymG6KiijZV4TFTlkv+XCSS3lTIMyQrE48=;
	h=To:Subject:From:Message-Id:Date; b=BQOaen6J98t/GcjaAufhfVkA1nCs7wfBM8/i4kouUs9uIImeZhShSqfzbJ+9yY+4t/bhwVViYDdDfsSj0wTuAzwEv1h3JLwXhIleQJ/lCccEV2rZ3njj+gpL0IMNlwTrVxrj5KAkgOlygl+LdVAFmFZ3ZgLx8aCtVtqMJ4UG54k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APe1ejaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APe1ejaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA98C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751510393;
	bh=wAYewxellhymG6KiijZV4TFTlkv+XCSS3lTIMyQrE48=;
	h=To:Subject:From:Date:From;
	b=APe1ejaZ6Mt6KR1KebfnS7PLP78WKEofqviYVZgFxMd881S1SsTjQHa2O4Mv1WSFU
	 rluFXxtljXIqDDqdVJnRFXIVLlHSvRyOiLbl0Ss5woaQrBwlV4iUcMOzqlu81LKH1L
	 gClCyazDDdAMk3WzrI+P+qBuUuJFagXd+36fBF0EhF3cabB0X12ewaLyYZ7g3lS4sv
	 9vQhRou9KGvFImz5U2Gn13N2KUcfhGVHeKLyjxd3ed0pg/omKB5XCS5BnPU3MpIVFY
	 jL+qpWT03dTLstqcXNq3HZc/UeL9Lceg2OJhGfLOzlIUKtC6+nH9VA5T548zmvCwVX
	 vEg/jPFcQboLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016AC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151039358.11721.8760351938860405801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cb397097decf4445bd0e201d31d18fd22790fad836e30c9b18c52826c90973
Date: Thu, 03 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751510393
