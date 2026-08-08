Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360812F39C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786210234; cv=none; b=ttJNltf4HrS9z1Hy2OhCDgrG1qTnwWx77XB1lrHJkQ80P8eb58psDsvG5BNlcJFBCdORraTYmWelNr4YkRp6eG9So2m1F/GT6GS/bWbbzrrgoHvbGSIbT0ZBEnqTq/T1BFnqIDtZSrQU2LS6IBC8/bJyyqoixpFnmtIhcAD8n28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786210234; c=relaxed/simple;
	bh=E5R1aG2y69gDWZY1dCtNrVK0LJFfXi2y2uU/y57LI0w=;
	h=To:Subject:From:Message-Id:Date; b=cnlD9ryUA+m+uNSFDbvCv3vzsjeJy7ru5Hb9QbEIgRjB3Ajn67+fIp9PkVOWy7eXWt4ePGLTGQr6XvhxDJJg3pzbjObemlJl1+ZpMxS5qro2+mfRZ2hHY3oi3Yt8gHvl4l8LHD6S300Wj3RCLHdYbxi39CFRid9Ba8ASW+PeShs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nz486kqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nz486kqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD268C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786210233;
	bh=E5R1aG2y69gDWZY1dCtNrVK0LJFfXi2y2uU/y57LI0w=;
	h=To:Subject:From:Date:From;
	b=nz486kqZt1RticdsuzcD+MXFr40/K6kulgaZrP+XRey8iSUtlg4ojJAERCi5kfTWZ
	 /ne4m8aWx0658zSknuPDE3sEC+qjsDgzqdx9P5D5o3dxeXCgF8KZuYZ6SNrD6DVY9b
	 IVgUPXbyzwtoe7RZDP5XAmlxJBCsYWi003pawynlrd0ZEmJ1F9dm8FIYT7OKxYs5ku
	 fmW9nLEHrLkJtHED1WCcOe/4TKAKva+bQPVRI6n8dBJYX4/nB9RdPwux3bzpcSrW0n
	 teVTAMUn83BUmBNySH/KsnCteQjIlJ0BzepZtw6ThmOy6DvLGni1sYgpxcaK4LmlZ0
	 +IaD5n8xj5UBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB6C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621023369.24279.16498723001331474549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ad996f5a613f34f198f3f7631858713d479722a1e5e77b9aeabffac6ec98f0
Date: Sat, 08 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786210233
