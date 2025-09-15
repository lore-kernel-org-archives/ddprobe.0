Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A381E9B1C
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757963394; cv=none; b=CGbBsenUyK8TWw9ga6X3x+Sw1YIFuxLJpSezbUC25Pl1QePLiVkMZbOCJi/UVttCBis7rDJdSv0k10Cw/L64MJr5aEG5c0CQ0EC8kwIJU+8EQz3MWRdSo29gWk3FsoAL48nwApKIJWJbz4wcrEtk8ug/uALqMmPQih/BXK4IFcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757963394; c=relaxed/simple;
	bh=y7S6KnlMeIy8i32bbA9YZaLcqMStj5vz49iZLGO8LaY=;
	h=To:Subject:From:Message-Id:Date; b=eU2VIkHioBq96jvD91BtOUo4r+hShspu5H/chAYL5h5aJDlSCCFsBMJOsbX87qTcdS3dS7OsA40bdNdL5tz9u16hRJa0x98gOptovPesdXFUUxUofL7I5Pjtx3NGsaqV62YloaB4uec3bDmrpRlxQ97ES6OLfOxZLXF8/K16om4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I51hzlzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I51hzlzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7016C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757963393;
	bh=y7S6KnlMeIy8i32bbA9YZaLcqMStj5vz49iZLGO8LaY=;
	h=To:Subject:From:Date:From;
	b=I51hzlzsajLUoIeIr+x6Uf3qT96lQOgkLz0OduJTAxYD3+vi3tjHN+5GwVpt/8Y6l
	 eWt7YDXOsizJTNr+57p2cplFbSTE05EaCewQdQgjQcRgs3noedhOw8dVcl0jmhCVrq
	 i/nI+j/eZttMeMq2ZdYfpllTfHv8vV7B24uhyriKLdNYmwALS+4/MyKFz56Yq2WTdS
	 6jWTwoxoAX7Ia5t64WIfBMzn/7IwNbniRE/3CtxoBV3WuQuGAUQnLrJtJ/Un3H9/eW
	 2adEL2PaNdiB7hBDlwO5HxlDkQI0hGXi7mBHAnCnkW4O508tDgZ4GctUPzmPsIFc2s
	 WCpNMxRNwXLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95473CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796339357.31710.7980270367336080700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d212a71a2f356f63c3a81c79d40efd12e6809c8e8126408aa5563ae763f744
Date: Mon, 15 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757963393
