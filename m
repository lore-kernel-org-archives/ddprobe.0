Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424F31957E4
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728578754; cv=none; b=bFXHaApKE6xMRouE6QKQOVTxEm/HnfpdUqiZKnh8mpBB8wwFVquFr0mDQIhXKq6G+RMYMELVVL+Uq4z2683NGiPsid1Sw+bOQq2s3vBHB5Ly4vBd4H1W3S4j0uhfGm/ubIiWRHvawzDB8ouXQ+fLQ3JCr7J0ye2udCXX/Y+TUFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728578754; c=relaxed/simple;
	bh=3zxlZmiDAqrgT/z4720uPSJH9SGnkuiapxjh2U+TiSg=;
	h=To:Subject:From:Message-Id:Date; b=fdSbX3RozwcrHYmnQv5YzfyUyWxG2CsCvb/aOuYUv5Wbi+oZS81INuKWrGZaUnBWwsC6CaS3VTLwAC9WFZ5Jqp6JZd5koFUDJhbeLoDMIKNubVuuFqECPYKDT5QetpzNwwWq/ecgct+4QmbpvY5JKp6DMs1V694VStR3m6ehJBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiVYBnoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiVYBnoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37D1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728578753;
	bh=3zxlZmiDAqrgT/z4720uPSJH9SGnkuiapxjh2U+TiSg=;
	h=To:Subject:From:Date:From;
	b=PiVYBnoGrpCuwmb1X2Ofm/OLVGixkLDHzt/7VWno3HS35fFN/v0Z6qMKevN33iPYb
	 vJCBFvUMrX8QVq9rWlPdjxZMXD6eKYXxlYZ6y5xyI7WDYIWgNgLZrw8eBeNCJjy7ZB
	 xb5w00E5aT8ueDE14zezEnFF8GR0CT9MYGs8TLx/ck8i+y8DFGa30xC/xv7CDz3OAP
	 YuynHL4QK1gNUjCV9QxnYxnVvaR3BBTotVbDISjoTbMQUgirj+cGuVv8w0CZd9s8mE
	 HH9USFcMNSt+v30CWV7bLNCuZiPvTen4IsbJT2R+YtIWCNQHOq9q5e5opto0TVfeeT
	 JeEl/CU9r5viA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFEACFC5E2
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172857875359.29998.15136784490360906104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9cac138d3e5e3c714f56b7b99f766ef16a189483939b37be8171b33f6818e3
Date: Thu, 10 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728578753
