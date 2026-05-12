Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9D32FFF8D
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778611834; cv=none; b=mmXEYXyKXYTQhD8lbgdb+sP4eOpFVE8QBjJ8zNo9Dmu7wAqwto6C4mEoBWE9jHj+U7aRcWieCLGzQDWKWI1fCNlj+D252sVw7C9L7Riav/bWoe89XtMvdtfiQkTXOYpQLVgD1/j9rwKNEevPCn9dtE9rkyjfL1iFLI9S19oXCyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778611834; c=relaxed/simple;
	bh=OZwi6AMxDYQD0BVZcfwqk/npjUXiJNSxa0WHUarGvDY=;
	h=To:Subject:From:Message-Id:Date; b=UAr8UBwi+V4jy5qItdzPKP71eg+ySH6v5tWHZ1qH02VNMlimjSxbfBPN5eapMdBttHutRttzrrLRSCmsGmDP6RMKDgobXQZ+eh9lBCreZWl6AFub8ECrU+Jmc1PDfSxL8bav7fHbyrWLdAGZDIUFNhjVajfBIEG6qJxb44/6vxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLAvDXtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLAvDXtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9040C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778611833;
	bh=OZwi6AMxDYQD0BVZcfwqk/npjUXiJNSxa0WHUarGvDY=;
	h=To:Subject:From:Date:From;
	b=lLAvDXtAn0IbuPVmJgGXlyBPvkxBHCIyitpSyGZyE4lovH/BQfEbqLNEYPt3Baadz
	 Q7lfe4Et8XW5MH3NRkDyMXea7Pywa1psg0iiF6x5ZB2rOs9kgcS1dMTDv7W+AdAhz5
	 S/XTN6pCixJ74LQx5IhNt7ySyJ2RT9tRvsPeJTIIJ8gcNxJpDcSuB5KwYCN8xGavk7
	 Kwn1Ziqjw5ZGcJKB/Qow5Le55Uvj+InBJUScJ0Q6tfHoYAJQvDZ6Gdi4fB0i2dxRD+
	 6+zmegXbok8qKg8MGJ4U2K65Cw5M6kPFPPqMs2osVMzhXj0tr//VicOHkGJeMhRusE
	 /Y4VoDt5FErmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA861CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861183368.13383.14571306346926265774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c41a4f2b9b5aa601a44a97c4376a521587857565e0deec99600b59f5e2cbe1d9
Date: Tue, 12 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778611833
