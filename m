Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AD61632DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757333394; cv=none; b=MZP90Z3t8RNea2uYPaU4pxzmVRXGjvwGNITuZhSmwW0PWKCtpzsxoT/Zai0EWjLmFIGWceyQn/Nmc3YDpbzdH5BXVAlZin0HwNOePN8B2ixfUGL/nZLyn32uCTIM9pVVcUMWDORDXD1OHBC7ozhj7gvEiFY5PT586fzYQos0D+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757333394; c=relaxed/simple;
	bh=BGS+MnrAxKcu21CugcHQ2E0GKlbxqFPfDSor4F1CwXI=;
	h=To:Subject:From:Message-Id:Date; b=LeZr8rXBqF8jriWd/F5e6jTIuPkx7LfmoOg1P5foaCkm5VLSBAKcaaEQ8KjIcxy1AQ/5plLl+wIWZGmfymBuQolEdadCZTeoUctzcCPhK8p73xfKw4hgep/39gNuV7QbAVkQXp4ss1HG75pUL3aSf91uTiGbIaE2Uzryf0WZeXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAmM9UU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAmM9UU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F84C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757333393;
	bh=BGS+MnrAxKcu21CugcHQ2E0GKlbxqFPfDSor4F1CwXI=;
	h=To:Subject:From:Date:From;
	b=PAmM9UU6X3l3limgSBeVU1eQdzjEICQwV/WHLLPT+rNpvuFVRh2rYmpDLJeEdsnn5
	 T7AXia1KdLz/naY53ImuGpA9uEo/0s/Mi67l9+JKtXAHZmqje09zEf+Yrxq2KV6MCJ
	 m+Y3s1x/qjHCvphwh+fh0ir98zk6iJgAzIKQ2PPrsc0vbH9XtU/SMabeoYbaPAXoB0
	 0xNHepfVy2EpRoe5DMz/TpJaElCqKpfdN1mZKiuz2okuH65UdNwJ32Ry5jGYV7poVR
	 r9GJZv2GhM3jEqUSEqcCLPuxp89Y0g26rUvYhFCFo7TGQIDZjO89fwVM0tUl82WGs1
	 +S+Q3T7PPZadw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF81CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733339358.31708.14773660154152355015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a64a6c4c8f5844c1b3d871b6f8c1f564ca58c670855ada7ef4747b4b958371
Date: Mon, 08 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757333393
