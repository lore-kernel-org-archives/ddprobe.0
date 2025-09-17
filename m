Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F08527E041
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758145794; cv=none; b=Jen3S+wzioFkms1Vaj1d6L6lhjxubqqYQGhskty9U8da+kF/I8m3hJky4aRpir2JevvVT5q2Qy4cNbesSiuG3HaHG+aChBn3xpPwn0o/jDgJ/8GPgYyZETKVcDBnCUCaveXnjl9KQLfjLaVgPdTkWwPaByfHZkUD/x+HgBPqdTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758145794; c=relaxed/simple;
	bh=WHF3KUlAVRDaKtTshC7IoFR5GaEF5wJMS3jObSGo56I=;
	h=To:Subject:From:Message-Id:Date; b=BwHW2nv5wi7ETpYlALjvuuoJEQ0ghIbbokgz1Vcz0GnQw8gTJyFDD+gJ/AXsvVDky0bgwI2CMn7ebKjQmfgZSc8ne40kY0qmvExTgq8xISrbJjuv5DRmZKrKZMraAIEUHCXlTGtd3K4Pk/kJ9ivOR9GUUB/7CTT3DLizKVrMu8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2InjSGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2InjSGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA04C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758145793;
	bh=WHF3KUlAVRDaKtTshC7IoFR5GaEF5wJMS3jObSGo56I=;
	h=To:Subject:From:Date:From;
	b=Y2InjSGLCTL16wqfTC/LI+UnQ48/IyqcsJfkJ5FClACtV009j8pNCvvlIJsfR4lja
	 U32D8eyHFo17p7Hl7/W/PsvhssblZeRSPnqd7iFg+tstDJeEyNf1nN5VFIXOjMVlRw
	 vpdxNpbbzTbKB85ogJiCwiZsbddeAtiHZlMdRFgHNIxJhON4hxioMvv8TKkvBx2ejM
	 o7AoUWh9m18DW8VCNHbMqzNHloX/lgj4oRMJaX4piXnKlEu6HPz6aRvf/rlJi5aTw/
	 QGT3TnAgmimrbDR42kKFFXFm+06YMDnyqS699X2HJjgrPVKE6NrwzO80veJPlN3ofS
	 /kvzyetPmuR/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC65CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814579358.9141.9571206146920856555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadd8df77b4243487040a04ed7a4a3479cf987c39282042afd8229f2a573890c
Date: Wed, 17 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758145793
