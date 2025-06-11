Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231E3288D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749677394; cv=none; b=reLv32l9zQID2c4C4BqQZHOnz7fgDDQFdw8ySH2VeUh8Nbgwz2oju+Pv8cOXtHIYb/AiVlDSXSWXAqzbKMWbAOCAIce59z+wMPlfe8x7nJN2KvTiIdRKTrJhC1EkTdoogPKrBQqoGSUCZzJJmdoqe8Zk6rhfBW0nM+4JrHk7Zs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749677394; c=relaxed/simple;
	bh=GNO54WiOFIssWzhXy4Cujco7pMgm9LgLVnA4Oy3C/T8=;
	h=To:Subject:From:Message-Id:Date; b=Zqw0zr/8dFeQ2cgWTCHCVg15q43nuH8sxtHyD1zJY646qNLSAS1Qv5vcZFA3/UtFB5N0YIFxu4SO+/SOic1OMF0DwpqK8d1vTcnLxLwSKQ8cwquPSIMvCYp9wNdibxbH623PbGycdDy0jofv1GSuIOwrQpVTN2mapTE+J+77TMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4pNJxk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4pNJxk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EBDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749677393;
	bh=GNO54WiOFIssWzhXy4Cujco7pMgm9LgLVnA4Oy3C/T8=;
	h=To:Subject:From:Date:From;
	b=B4pNJxk+oufy949Vbg5djSL7f0hJAb9RDH8kfmyMoRqXlw1tX0eP5tAOigYh6hPy1
	 FuiPEoyRsECVsbUMqBbRjjMMLzEB9GgjxgaaOJVloggRNgVyAJXvzlHB5vxIPMFkRr
	 gd2ymmzmyDgfND2aS18hqJw7ZE+CbK0XCnYAacl9ZtV5tVaWRJs778cRgTzPHCChwV
	 EiRGetyyQ5xJoI7009f+SjvCTqbydFhH+jSUAiz5/ThmKOt4zKxX4j3f1IxCL14mJG
	 HA825f3tYRncgmpjWT/vXDZMO3sKRUFfn5WkG1MBPNIyWeVCC1kozWBfBSXizpFt0t
	 0DdMzJknDxEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224EC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967739359.32145.6192402471912210494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5c13c486dce72471c77e5fa2af05cf0ca5ca18bf73eef483988e741a11dda7
Date: Wed, 11 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749677393
