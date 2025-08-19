Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112C230F809
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755628794; cv=none; b=lvcBDe/rJmE5uxUnv0RlhiU8dIZmvlbuJGN1MFL9zJb3fHF8RkF846H03Um9oAIj0mog8d5ixGroFHcgIHs6jaZ67Z73tk1jdKV97dqiGIHkUs87TfZE+/bjhZ1nTk7HVJJq6t07dGE5Pa6ARDUno5xsE8VfzZ85C9pfSvb15ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755628794; c=relaxed/simple;
	bh=tWSUS2SMLudn1hI2RTg/Pd3FW9LckhUAUxPCnVMhrmI=;
	h=To:Subject:From:Message-Id:Date; b=dsZuejNVg6k+NecjYT51JXFwY5qmAZYyFWzswm2ecnlrKD/pJzmhASIYKVJM5KWIN0wB+YuGBcp1cI6epuzrSP9LI9ZorVaxKhyBzjdSdrpE4U5HEFGC9ZFEsJTaBYK3j7+1z37yPm/Z1iDRuocDrXeiI+wtovADF7OK6LfT/C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ss+m1umK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ss+m1umK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F46EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755628793;
	bh=tWSUS2SMLudn1hI2RTg/Pd3FW9LckhUAUxPCnVMhrmI=;
	h=To:Subject:From:Date:From;
	b=Ss+m1umK18/0CgSTbFV1VXZEXoiF5xNuTsEgWuchYWfeIPUUsrU3JxF10bTMN4+t6
	 YNYL/yTWnVb0p9LV6EGpEme1qUDKMnwLuCJj6o0eSUjHeE7bJCnK1QC7OpJLWtqUGU
	 YIXjXPACaIi+oQ/tsXW/rnvY7df0RwwbQxs4FWFv+dIprKgiIMSZ9N3ck1PfLrsNrZ
	 HiaBZYTmCbx3CfOZmmhCff994objPRB3DNMiPyFL6Cc6j7WrCaF+qrFX2aOwaYagXw
	 kt7XUT2svsf+EuE7NSQk1kI3P6Wpei6Lh2c3MyfCzZ451ibqvoPGsZ+QdiTDL60VkX
	 npD30tJwDlc/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6AECA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562879357.19224.5948884670490846307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac16b685e2b16ff0c1f7ea695a5df7a8cccd551176fe48e9a6d661d069e6d47f
Date: Tue, 19 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755628793
