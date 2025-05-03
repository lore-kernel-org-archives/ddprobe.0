Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABA01D5ADC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746314995; cv=none; b=qlR1/vbm3ur11xnG/dYZukiH6HrRvnmltgnWPv0YI5IIqknUowNXClFTsegbxUolrhGOKxtfH6aj4qeCyCekYzOBFtPJb7D+mQuxs2W4Hmh7b/G3BzX1YSBtS73c4PM9hgec8EuxGXNXMQYTOjJSqeIL3qQaMlqo8H/T4I7XORo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746314995; c=relaxed/simple;
	bh=MasaO6EIWlTknKgmeok5UzsYQE0GgI/ww2FxF/LgMA8=;
	h=To:Subject:From:Message-Id:Date; b=iYgXU3JneM2CJ6EAjdGUZncQWaKABKCBP31GKnz/kzK9qN1/pzMQyu28AvPyYZBsDws/b2o3FzmfN7HDxBIg4FyHZMRJyqJTbh5mumC9mlfVgzRX2W/nz2yEiGXi4YhfB0M8GWH1Y/SIjTJY+EAH+3BiDPwpU4IdpyXKdp9SuPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRp1ovsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRp1ovsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CA7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746314993;
	bh=MasaO6EIWlTknKgmeok5UzsYQE0GgI/ww2FxF/LgMA8=;
	h=To:Subject:From:Date:From;
	b=nRp1ovsXI8ceXksxWuFBciZcBWnCofwMQhAtBVL6/08MmybRbmilaixuqKmn3TpWz
	 2XUp8GCWX3dTh5c4WFFclTP9losRhBdA49L/4RtnVqduF0vBe4Uc6aScyjzARvecBm
	 8j9ZEsz/b3VPExr3IJhDe/e5LckTs6Q64fYQADjm5lAhKxaS6M09MpyIGAgJO/fUXD
	 WhK4TFuFLfbkMK4mbfRUxxI4Fa3AMUHbLmVF7WRJaxu9mrRoJJ0plPCur14zdZnDqF
	 oMP3pad19u1AOmEhcQdInBtPfFst3mJyK8C07WjsotLDkBqdf3jMCWPlVObk+7mT2p
	 WDFKokmCWCe2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABDC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631499357.5483.84757129698814000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe84628094e6a46ea0bd17400cc89121658c760a44daa817162f96c95b7e2ff1
Date: Sat, 03 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746314993
