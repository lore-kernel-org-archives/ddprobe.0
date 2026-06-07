Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F90347BAF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780820074; cv=none; b=qm/0o2nq55tA4XJAhWvNHs3KWMUXPhJykKU/1iz9vJ7u1S/+TjIDGBfpQ+5X+xGoPXYb4+Dl74PXnqcR0jJLWsoodiOQA1lYf9gPvGhkNHX+n8nCmdppJGlNgbf4W23QAE7evQzBAhvqQKCFu7sL3Iqa7h8uJUn0izWLRGOrxJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780820074; c=relaxed/simple;
	bh=o1RXf/RueeX3j3NkdoMskcXnb70fC6JtI/cjZNeTelg=;
	h=To:Subject:From:Message-Id:Date; b=BMmkVCnLf6QKOAAzJffSWngpwEVLnS5dpJ8A9XRo7bOKN5GCcx0VLwGsOwEy/yCTa3dDZrtn+OLV0AUqC8PULz8iHrWmVroi9N6+4nI6AD+rHNmIhJFzTwynT/rQJ6xZxRlZodUBVM9l4r7u0Jggf+9Ug++hUTJAoFtDQ/yoNA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG/KUISO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG/KUISO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D601AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780820073;
	bh=o1RXf/RueeX3j3NkdoMskcXnb70fC6JtI/cjZNeTelg=;
	h=To:Subject:From:Date:From;
	b=KG/KUISO1QFvvrEFvFzf6jYIUUD9NmdUIQAXhBlFTpOlyHpcEVP1w/8k8ByTVrSw5
	 l+61KEulsMOtv1XpmPVs8fk6B6wD6WrOOjldHn2xCUhuSlzbtmO4qipiT2U+Uh1cX7
	 0RZjJrHlIkN5XtSsy3AL2l3qABLobl3UyJ7HN0J36XxtEUTTetI0W3DWAr3nlFky5e
	 YrB/qGdEuJWDK5Y6HpS2JKUIbzuOCUaKF6Wnaqax8dI7YyJJ1gcbL3ocbXjzo9crAE
	 IGVSfYfus3vPEyyN/vdq1nZpVzVAxXIe/4FKXf0DFsEgInvdp841/13MJxXCFTezs6
	 5FjJlAf1qcP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF30ECD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082007375.5182.14706565201097212775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a51b5c60065c039cd5aca0cc3cf24015e78ff3d7e5ba5ba99fde8582d29c65a
Date: Sun, 07 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780820073
