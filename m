Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A61421CFFA
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766417634; cv=none; b=guo6MBBYolJEyldyzDDD2yXYaK32XeVpc3BakQ6BpOHfJkT6TfNiqpS8cH/efid/YyRLa6H8oUGXaSv+l53wru1mQ8z0bRtFvVludGC66rxKXMUIx+Cn9v8Bg5BlBdRTYw+qM/lwvdoPm1gOwPB/w8kRbm7tO4WhZhmURly2oO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766417634; c=relaxed/simple;
	bh=4KWgr3eaVC5SCfB9G4ub5yOdWL2+4DKRiZWuSZJE+5M=;
	h=To:Subject:From:Message-Id:Date; b=GfMsJx6CaNaToRXTaQAX/aN50CGF6WwiVn4Mmpiyp1hjHQ6h2q6sD4cd2luMMDPRdYnkAG/ds5iLLlXQU4ogLXWanHHVThDqQpFnBUW7zbaKGbLNmXtENSO6QOsoSYkkhmrFkaxiSicHwX/NIuLmyc37F2fXmQjgAOTK7AnvK7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJm/OsNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJm/OsNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D269C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766417633;
	bh=4KWgr3eaVC5SCfB9G4ub5yOdWL2+4DKRiZWuSZJE+5M=;
	h=To:Subject:From:Date:From;
	b=uJm/OsNIpYbq1+VIr027dU0oJOkP+1igKdD3Duignwwda+zw11tTZ1YfbDoTRZNXC
	 3cPOQ6ZZkA8sQlR7xYhXsvEeUUf4WYEiEObmf0SydS+4WY2um8aZdU1/s21MI2rJ+O
	 wgFaLBUsBALTd0NJ0CHHC6UCJTj60H7+0swXRNN7uMu3So65UG4VHCAxr4Eceaevyu
	 Ivq4ZY9otTysRsZBfaWfrm9LF8d4n7cuu1vtIOn/GkwhuK+vvn08/1MP26BSY99Scw
	 FykO3YMgRbAobhmU7qYMwIBF7W44QzaatkbZ0GDz/WO21RaDpln7FxtC/MIjwMCClE
	 x5O5paGLDO36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA7E677EA
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641763358.27117.13474910765397472139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbf9b4fb28e6215360acecf65d7dabe6f5b1e85fc283d627c3d7e6e603f6059
Date: Mon, 22 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766417633
