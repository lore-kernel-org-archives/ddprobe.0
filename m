Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2709821859D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744129794; cv=none; b=lyY9KFF7+X14njH2d9cEDdgnpsuoE6HD6fdo10hE7+g7sgo0o45dUs2SP+qHTUEY8McljHYifSN7oh+4mI789hYWpWALCMBgHrbGSWJKlES5Wm4AHUHCigSeYMvQSEgBonMyJ+t2ekAQA43MHOKBxNkq+xlLUDgxtZTfDwAFyVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744129794; c=relaxed/simple;
	bh=O6nA0gshbrCR5O5fc+07VM2wRjRA5+v3Tq6CVF0LJeA=;
	h=To:Subject:From:Message-Id:Date; b=D3yf3B58eLo2pg87YWcYDwh0pHfZjnoMO2sP7b7bCFVdq169Jn3Pu0ViIqWrebegmaWbJIwqDRCJRSmA/rFBcALnlDuSMIopauWaGQt0BjjUSJrQlwxxG03NxptLyxnceWy8ieKGPQveV3CkG8g/qF3UPeTcNRUQGxkQOj5/snQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ih1xiev2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ih1xiev2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C01C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744129793;
	bh=O6nA0gshbrCR5O5fc+07VM2wRjRA5+v3Tq6CVF0LJeA=;
	h=To:Subject:From:Date:From;
	b=ih1xiev2/Ge1+4YJbi2ONtUMi7ks5j+J80M8zHBDr5RY/sBenemBmuxZjj0ntmghO
	 8pSc3xSUYlUGE6cY1ye1XvCo5zI6WbqiqQ+EU0J7GGSFMXlq3nIo8TI89mmOsID2aF
	 p8TnCN39k4amsJBGWQcEDVyGKlNTbf7Fw1AUtoWm6nMTtfqRzfAOGMX1JIbVPtJjA0
	 ObRB9/seqAFUoh65lYyWx/30dNn3kzhqZH0NuIsiEVM3bQu35FYBYaDwIPDNVevIOn
	 37jYTZUuHN2Vv2U4JWdkhWSATbBSuXHlhJZicc7u+Zhf/I4MZLS0boEOkqcyBkmt3C
	 iQEDkcY3+vqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997BCC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412979361.17653.12991273423544159742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417283ad33195d6fcc49c45b5866c4ecabe76cba5b5306d8360b0151144060f4
Date: Tue, 08 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744129793
