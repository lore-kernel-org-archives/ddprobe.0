Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2503F2BE041
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761086994; cv=none; b=TRW5SNU5DCfMpO+LIyef5PzbL/EKvtdzqq7zeY3o3dvTh/roJ17Hr1Mtu+i6uv5+cj9ec820xhotVlMLdiHIz5AuA4G+wdk8Hm9Ql8QFKFe6grkgUbfS4WdrQdwtOq0Xac/j1j7wBHxHCpjlyKTGvKaVRhHZ0dIbTd6mZ+6E13A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761086994; c=relaxed/simple;
	bh=wcMbQcNRXuC0HJ19WQI61myIdlSTflb7jotx66NZ/BE=;
	h=To:Subject:From:Message-Id:Date; b=d4BbzSLE57OEgfT2VXRpaqG964jdffJWBYZbsPgeV4lwN2X1RHruj4XhZTtvx/WGV9YLrN4vskBT4S52NVlk7DclUdh2nNEftmBjiiypHYxdGjnQGkjszUbX+ZhXenRlxWFxqJnmsUuFVbs0+iOWySV3q1ypfMpr3LfSRNN8nW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7wYYRDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7wYYRDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25DCC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761086993;
	bh=wcMbQcNRXuC0HJ19WQI61myIdlSTflb7jotx66NZ/BE=;
	h=To:Subject:From:Date:From;
	b=a7wYYRDxagvqPRpRn2oICvXi82vWkwWacM/FgRsHlZ8o8GryrAsSzOI30hkaoMNjG
	 Vie+bWBN96+WSroXLd3ImCB4DYia9uRUhEiJUhVF0pd3cNxHuE9uS9aBmPbmp9gWWY
	 wwNBJEp7dtBt1X8/7esZf6rMiGbyKQF0ygee9hqKv5w/VerU694fxrMBFIWFtetVVA
	 ZDrBzUCzeWqCQ/7RTUC8MuTw0qcANcmaKWs1K81KSoUyjV8z7OpUUCVjoE14P4npbR
	 K8SP7EXDaQv+nsOupRSc1y5Ufn6HfS3MoR94jXMuWDcTwxlVCWOlkiApVBh1mKql6N
	 iRGefL2BO1VOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A4CCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108699357.15798.16783358763683981292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26312dfbe9e8898c498cf3def2079a7863ec5fb0c7fd44a0e8ed61a4047ccc18
Date: Tue, 21 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761086993
