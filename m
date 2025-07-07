Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF291C7009
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751911794; cv=none; b=Y4kmYk9Lhaf7IFMUQKh84xNBG9hcAZ+uVACSikIaURvazFcdgsNWk+NlcvWXAKkamCLzFbCYHA6RL1rVdaIc2yHLiY3da/7lMRT731YEhC77jyyBE20eODoTxXlrxi3TTcCBvQ+C9hXbyycT70jbXpoirazTO9AEhGHurjpK2Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751911794; c=relaxed/simple;
	bh=YgwtAprXHcjksjvZiWT/iBnkRjswIyWVADs1graVaRw=;
	h=To:Subject:From:Message-Id:Date; b=Sjw4x4xacI06b/IzxK0eV7RMstGQxHqX3AYyaLujWbaNv6Dkr6NgoEIJ5zf/mjY6vW63H1GHjPXfHZqdaFW8y35oIk9Uet375vBTabINtXRXt/BOTB+6aFIjxL2jv4I3odcqNUlaGcHD7bdqbgMr/9dGnaWIcNXsZoZVZ/jsgZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzDQGC+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzDQGC+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751911793;
	bh=YgwtAprXHcjksjvZiWT/iBnkRjswIyWVADs1graVaRw=;
	h=To:Subject:From:Date:From;
	b=EzDQGC+4FN3By4TmpJcxyZ2JUgn8f74nmmXh+LeYgAPLwC4GxXslQMs9Wzyta1J0N
	 d5NXCLijkLPWUFH5nIj1DfRonWoO0mqRvbgDLwXcijFBycDDaxzMeHNITPcHlLqhlp
	 nUUy2UW7eP4lcv7Fj50UgSITDYxAhGCl+R8a8FDM4rc3rchPeMbmhyTdY3v3onmTpJ
	 O5PRlbfbH2AE+OVpOf/dxg2feLCR9JCrk0UONxYt/4/boqG/zFfvH7OgFSONdnyIqv
	 eitJsAlSi6NgOBwc0UmURV52kZDzoVDu2oEm7Hcbhkllex7rMOBdwNimQTIPHVHea1
	 O1sG4fhmSdp8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90181C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191179358.3879.7592130270447930082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdfb3a3a8053c53d2fef06ed34f0bc91f5f6aafb20a63f92f7bf040becb6515
Date: Mon, 07 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751911793
