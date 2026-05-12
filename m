Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE463C2796
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778619034; cv=none; b=oaUNw3I4YduJhp5wpH8rGSpV15yXNtD5w9k6V7WlANe3niYrzSnxjX6y3v5kxUoSt8EaOj0AL9Hi2S0fYTpIV1C5SCsND630ktc2HbVbqAV3llLcY3JjFQ5jvw9fd80vugq4ck2e8FrCvooEDJgXwwZ+iXedq9orH9CSC66tNt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778619034; c=relaxed/simple;
	bh=4GOzuDp2WIFJzizi+FDXWxd12SSyBoyV0HsytK76New=;
	h=To:Subject:From:Message-Id:Date; b=ik8csB3YzQvfyL6Epdkge9kFhIy6M/UIoqUgwLP4Nwlym6Sn4YoIw4r0RKav1uhAiCdGmJadCYRvjek2u20rs2glB3YVOYTxE/P3K48MSQ/UsYkapLMcN/Rej6f8ype0fa+xgrqo+jazPSY13TQXKZXzV0mBh+hXwOnhtBrRerw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RznXkxnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RznXkxnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92C9C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778619033;
	bh=4GOzuDp2WIFJzizi+FDXWxd12SSyBoyV0HsytK76New=;
	h=To:Subject:From:Date:From;
	b=RznXkxnvOuNPp/uVIsxyjIBNAtNCMldDByVRqrrkPAfE3/nMvcpmZ+vZ972/9sXUd
	 IsuAPp5cB/VCoeJHy2yKnWcKNCjKmZ0BsINwqazneOcQd4lMzZ0f5kqdGkHdAVG0eG
	 3zMWgdgsPV2pfqaFImfLqc1RQSdvmcEmliQiTdO4+p0GTUqx+beb80NH0gcG+VfvTX
	 OKFH35OXEtbw0EHDm3y7b7inlXNndpfgZg+EgTxXnTUwH7iRrOWTZYG1ZX6ZEZofmf
	 uZmA6qctDOtBztEXW5ELNtf2Fhxe+7oHJmS8Z51G9kq+VvqK8cG1O+ryQZoKvsYuMj
	 ZmJ1dQitII2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB95CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861903369.4743.11612855069528280706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196dacdfc6bff0cdc9d7689fcf24d74b44779e75e74a187491f0000aef6651e3
Date: Tue, 12 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778619033
