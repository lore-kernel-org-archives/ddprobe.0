Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208AE2FF173
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761566994; cv=none; b=IbF+tZ+3pHd8dklb9PCBvMSnyvq71NZ8FJE63PiDctju3yFoyji28XGrWsLDiw1PoAxngD8lN+miD2Z/xQRuD8d0uWN2u1Vym9QGOMbTPmmcnvDHViaLu+gZcHOseZNIVvk34ah4lB9IJ8ISqIDJaxxmL49o9nR/+uZnuZTihe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761566994; c=relaxed/simple;
	bh=cCeToqUm2hG0TjuiXTPtFsjGwkvm9ubSd816iNZKSgk=;
	h=To:Subject:From:Message-Id:Date; b=s6Bg+gatXHdJE7N4MItF8BlBtbCqDg4GA52A6K9P3UOK9TGBsj/i0XJ+q2AstWfnAxXg/5pjxBOXcUJG89xGef10gbDo6HWxLrh0OmKJbgWJItLiQ4/ANgICN52d8/LSTFffklkgPuYZkt7J6t21ngPTV8LzDkvy0qlAya0MJ+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VppNKvA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VppNKvA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC37BC4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761566993;
	bh=cCeToqUm2hG0TjuiXTPtFsjGwkvm9ubSd816iNZKSgk=;
	h=To:Subject:From:Date:From;
	b=VppNKvA/eY2v4u5srn4uKEM4Rck65j4wxaZbhD40CQ/fwr0ARRmMGgwwTKDX2Ibvt
	 a48yuDaqEBozUSn6Km2RRGuSDoIwh/15+R2GsHzIXJ2q0PKt/RjKNMMa+t2p7/SGir
	 NlZawzP4CWiKC73OrIMInp3WqYhGWHWkd5DdOQ0PkjOiOdt3i/rKLVdSmsRjU5duLM
	 Z5abxeE0Yqb/EdHqjk8cx8oFkvWOVfZ9KgDYIaXoT7hSFmUhBF94VX7I+aH/E1r/NO
	 RdJYfbC8PLNv6MogXE7QoGlbudi2y3JufNQp4S4Eu/hHgednS2PNWt1oXrns3CycPq
	 VTwLB1WBx22Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1C1CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156699362.17081.2582430418301594739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82eec47009341812e318b8205d4f8cf4f51cb1cdd8a2da247f1d44364cbcdfb3
Date: Mon, 27 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761566993
