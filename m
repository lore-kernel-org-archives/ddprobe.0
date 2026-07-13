Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C03C2147E6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783970914; cv=none; b=BtevlIpYql0GMKhpjtCf533df1oknjPzsXIVNFn7mRyCcYWSIR1V4RyJi8TmK5lay5JzAoch4JXXr3tOFqytZodwIY7qNHek3bgSVyI1OMxKDVOLVudjqnEvU9ghodZ7fFxplmxSUzhEaWxAVgNG+wp5n+03mjWsm/rJpMpn3uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783970914; c=relaxed/simple;
	bh=4WTmq8QFSyIjNbnI5cwe5DBAf3yGUSbxnRflGvk6fhQ=;
	h=To:Subject:From:Message-Id:Date; b=d02F7VNorCkyXFRF0/ycxT5u5l1A2Z+MB5E0OBC2U/S9qvQqjR0B5WCBGmrTh8URVxxtGNFSlavF943Uu7JhaXpq/l5WZRQGIRvIK4/mJqARml+XbElIesBFDDZgQIyGC3r41N9cTGm1hewobzHXWSnbDXtOxTYR0jvrIG5rkTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/aZ0S50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/aZ0S50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55D5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783970913;
	bh=4WTmq8QFSyIjNbnI5cwe5DBAf3yGUSbxnRflGvk6fhQ=;
	h=To:Subject:From:Date:From;
	b=f/aZ0S50+tav+UKOTLBpNCJFI+kGo3yhBT50JPJBfNHo5rqRzh5/CgZ9ylRhCMgGS
	 jI/8pVREyEl1A+KSOG6SUELZePwOlf21HJLKYERifUmfcIpa84tP29owOZ1KWVMZXx
	 dYmKz5OCPBLa8UjlCx+ijQPHFKtSlOcfCMd762068ve7yGt+B3gbi5WqUWFhaQrmPU
	 Xh62YdHaWp4zypgCh4J1Nf3n2WpRvDIaED17vaqfMhPDX+bpHA7AxcWfzh0r1pcUPm
	 hAI7IZkQoqqZN+ZSTy9R8UGyP2gtSdJQ+DckM0DAx5+eSiRNRlMyYsD6q5CfexGOjK
	 8y2u1kESXXP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FD6C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397091371.10040.5515184622633912715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc2509613b4dede8d14b40e17e18563ce02a0e9208831580bc2906d7fd11ed7
Date: Mon, 13 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783970913
