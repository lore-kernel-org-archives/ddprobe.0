Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B55249E5
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732302354; cv=none; b=iP455qX5nCt6ApN1UUODStDtivhvrg+V01BnNTaSfucPg/OItiiRRoxYmT+YEArMn3C3KA9DS6WBkuTw0j4dYFb2heJ2MmtVn1EoadDONI8aikmkha0zXDhJfoth9SM77Mq5nzCk2vri3loKTMz09yTCNSgqKBOURCe9iYMcwXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732302354; c=relaxed/simple;
	bh=+gcga2mJ+GQVQ1SbhCnSpL+BC4r79IsycpmZqyDRcsM=;
	h=To:Subject:From:Message-Id:Date; b=IwLcaYhjErSAI+mS0qzVMC4tXaoclKRIpYoz0u712VyNlJu8VJXGPcUlMd4gUGOcFzVVRgpTHyDC7OhgbLvhiVKIry1einsOqtkO7JsTMIoqoKQbocCar5Zr6ggbxHvtltL/YwodfSaYYDQHCuKsTkBQ7t982gZnwgnsqTFHowc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMYCQUa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMYCQUa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32E5C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732302353;
	bh=+gcga2mJ+GQVQ1SbhCnSpL+BC4r79IsycpmZqyDRcsM=;
	h=To:Subject:From:Date:From;
	b=HMYCQUa/G9jnSPjgfPz076Sj4tLwMA8tVX6fj/6LobJjJohwjTmElDK2PN10tsOQz
	 ZzqrBOvphyzFx97RkL50tYhCpidNLDQt2VDMDVPL8bCWPepbv8SvTwz6HvSEt61z6Y
	 3coL6iXx+h6VumFQ5kR1iI3JZ4UZDKFjQEYxRoDiNoBYMuWDxRxTPBg5aJ3JSVWujW
	 Si0qXgdyd0Vt2x9/FOpwhvomVZw0GoasW1dwf7DLxoFBHienCruhUiKL2LnykFiDof
	 ttxDddmxxJCUAPwfZUCR+C3dxakAZ5qGq2KigAGnixSGz7Zu6UGm7agfTkhk5cguQ7
	 YOmjnby1FrPIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D46E6918F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173230235358.15032.18335007209410520429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90034e17a446289f6e3a44bae37a131cdaec74f46b19901be6e7c947c59f0ba6
Date: Fri, 22 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732302353
