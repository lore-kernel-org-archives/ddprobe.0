Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E4435977
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759200594; cv=none; b=Q/TyvX8ewsgAxhIMx1cwf7HjbZhA1BZLSRyqCvMwuqLMDwiO90Wl3ugL20eQGXyryXfxATWIiloSIn4VBUkYd0pk4R0qX8dL7G+6KRqLgSZKNnJx6aj5AmMFSmj/2Ff2ceA/WW6sGsDaxnuOFtqnwA1pLiB8eTz9hk0x03yd31A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759200594; c=relaxed/simple;
	bh=IQzrKJqk7xWza23PbEsDpedC5LbLMXWUqIoVUYtgZr4=;
	h=To:Subject:From:Message-Id:Date; b=J9KiNDd2btmG9X2WFAIOGPfRVNHeer/WgReUc3WW3tIBB6Qc8A3/pDyMGKjHvA3Sudlb/HkMLDwBZM906fPid79rFAPmC/pfYoxEZzk2H9rPMAlET3S/JFdrIWO3EPrm9U3Em65xX4gnVXUWE3dfdUOBW1qJZ0q+Ji9av29f+jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFDZX0Yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFDZX0Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED9FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759200593;
	bh=IQzrKJqk7xWza23PbEsDpedC5LbLMXWUqIoVUYtgZr4=;
	h=To:Subject:From:Date:From;
	b=PFDZX0YpIhs/jiezewlkUrmWc8GWNBCco+8hwRRuNERCTpj28NrUWRsHBKoZPM/9z
	 ECWvJMPtPmm+WPYWGoAEahVe4LIzdLTnrS4MlBKxOZtSKSlmzCm40Mz9FSwVZHSwjC
	 FF62Lsi5bvvavdSFPBdv35ZYSU9OOEi4mBjtA0997dnxutKW9doVNsb3W9dafsw2We
	 rHavwNwEvXa53nVY4zXsLcEwuSuhadOokcgQVQcWNY+5I8/l1Gn2u7GA2Gvpvm1OqC
	 wmDB4uIx4UIp9YLMP6SpSXXUYgDh+8vNbvEK/zeIMiankZCkA8HwmhLheS5Rhrgmx/
	 SC5xgTGcks8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB30CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920059357.23710.13009292992047407823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b75354d71aee47f4fa96662381f9965a63200b6be7bd1e297588f4b6c977e7
Date: Tue, 30 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759200593
