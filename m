Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05192386444
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776939454; cv=none; b=bZBWfgHEgoqqAaDV6fdrJILPiwcGQnmXAvjACTKwwPB87TkN9DtDCNPEjBoVMC5JU/sMOQbX3uFfgtArNRP6Be+IPMwnwrNFehFvbXpVFDSd9mbcdo+suejeeHPGTun7vgsssj43dsvfOTlSnqbihtfcnSn1zN2LBJMOpQ3pXD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776939454; c=relaxed/simple;
	bh=9hfEF7JivmmFv0ArZgN4M232CZI2/8CjtpYX4mItlEc=;
	h=To:Subject:From:Message-Id:Date; b=PzsYfI5Bbb51B8rVAHPvwS62BQqRz/JVyoaPNoAfycLB0VT+C1i5/mdS7POHzCYQrWKUPKF/nOEpOMSIVEa7weI86Zd6ZG35/zimvIU/1HglUXHR8EEALn2Oi++vYKcXF2DFLCiXOFa89HgpvhNrWgzCm1+KezG26OScsWvIs9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxAWwVGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxAWwVGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E34C2BCB6
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776939453;
	bh=9hfEF7JivmmFv0ArZgN4M232CZI2/8CjtpYX4mItlEc=;
	h=To:Subject:From:Date:From;
	b=CxAWwVGvdzq8QuzWb+1zYYfweL7FDyGei9KKgEcOqk8WIB0+13qBSAFxi3Z5b8kd6
	 9Tk0YyUhFD6tm1r4A8HrekgcZ8q9R8J0EobRcVkHs0dgazaC5SG6oSRYJTZD+c3n3Z
	 1ODvciKIdwrUBq1vNS22j+w0TqC1frNCakMy3gznEX/BokZDP8n1j9MCjiRU0swJam
	 X4gF3ZbQI+0TFio5dnwIf4TGPSOaABeuiT5B62YkpuWPH8fJGCqXr6k6OD+t4xjei/
	 I3artE0LvFMhdZzi7ufpADGEXsOtvtCzIEkNWHMYXZU0EhtoyOEQQAaYhXbSO8ut2P
	 dznKSloiBbJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96ABF99362
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693945368.20917.2792187665597304095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd5818424ec5a8d802508e9e05a0f3360ebdb0927bef8efbac1a88cf562982a
Date: Thu, 23 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776939453
