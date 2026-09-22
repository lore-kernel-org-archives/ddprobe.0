Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674462AD03
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790090434; cv=none; b=IU4kKSaEPCKw0b3Bc7jV3ZC4Ai3AA3A/fOqKozTFr1Q0a+4XMYWJhNpEibaweIaYMAUG2o0FboJY/V5MOrqCmSlHot0t7FIr75O4FgRCG3a2Tk01Nv7/xZEHE73LVj2wJafNNH8F89FJbnwb+WBkJNw6G5108n+POPt5ZNoj1do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790090434; c=relaxed/simple;
	bh=AMB99ADxdZrr24yRIkAhOWV3Pfj/mCasgG5f7wG0cL8=;
	h=To:Subject:From:Message-Id:Date; b=UO6MsZMsUdS9V756ZQcuGzG15ZC7ZFg0fm4dHlGNZfunSoGLyvlnRA+dktUkSK9WY8EmwqPfzsw2fHKTt9ahJyDhkz2sG0+/Eg7k1tzWSGLm5Z3LyBf0m/nJ1Cf57GNa4p+ekAhrr4iBuinwYCpTufmovf9LJClnqtmlmkuM570=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN4kNeYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN4kNeYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F12E5C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790090434;
	bh=AMB99ADxdZrr24yRIkAhOWV3Pfj/mCasgG5f7wG0cL8=;
	h=To:Subject:From:Date:From;
	b=NN4kNeYO7nr12G3pquCgbc6EmjqoUwkgJcuPqOv0TLEp+5sJrrCSWh/MvnTm5tumU
	 +ug2ktfN7eh23EmcHpKFWZk+u51DCtHQ94/66+gcQqJXkON+C53YE1uPJYn+MGT/nt
	 WKUok/E5k33WjJSPpjQxu6BJnkkmRvFKIKE5Rr0ARKQuJlVoVWP1ThMAVH0Dg8S0g5
	 fBWmBV5QnVRPtHPVz3BMoEH9xSUzP+pnbrQrkGUV1q00fMNDky3Sksc7SP3M4pJpgX
	 jpTHUu4j+amHYbRBz84HIjHKEO9253Kn3I6219SpWim7T8kZpyLf7q7B2WU5MNXTZB
	 VfiaIbaGg+lvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB2BC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009043383.14768.18217489655774002968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a21edd8884acb48bdf1224e3315b432455ac59c4174359cf79a729fed1d6aa
Date: Tue, 22 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790090433
