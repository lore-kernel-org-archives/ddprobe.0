Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031B01DF982
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755499194; cv=none; b=bU9GMolQ1jsAuAfUPlBMUogV2V64wXB2aT+Cv3fnduud9mFZ78PGouOhPZQBVaddiUhdx1Q6SCGb3lJKTEBAyaJyXZQkhyHjYp1jGiiyAs8zheKzoRBxXEpQTqbGDLoORUycEABceVMyhGGHvSuSc4FkesIEYHrymOF5olWq08E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755499194; c=relaxed/simple;
	bh=uexPwadh6hFDI17Yjb0cCL3i89qliV7SZ3nP/nSyK6g=;
	h=To:Subject:From:Message-Id:Date; b=H68WrI+WM9qYYtwNSZTG9DRN6RC/gSPyLswpczCOqQaLlfo4I00pl93++5z/+QJZrTEtxecF8Qvn5VoAmILwkmHoCEgjoeDcKthSPJuojX+9SQNFy1HJIvKV4V7syc0+cSilweWwc1YWtLTwCowsFB+vJYMH3hhXDULYqP5N/4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MspZm3Hd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MspZm3Hd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C480C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755499193;
	bh=uexPwadh6hFDI17Yjb0cCL3i89qliV7SZ3nP/nSyK6g=;
	h=To:Subject:From:Date:From;
	b=MspZm3Hdm0iYrUy5lGp5vRcSdAHBy8Pp5ECwW3vU9AvrFgxhf+zP+ho8NxYCJy3Ak
	 fs/gPUi/L14P/GZNjFPEwq+cNDx97spEBa3FXR8HCT3X9a5MQlr0Serx0SvTcz065h
	 X66xqx2b78oA+utl/LwnIvVOzDlACkoePIVZFABnhqQGPObqt2fb8SXWZODsMB5w6+
	 lnw9sFvbwFii0mZKKM5Jt+6nJJKYrjElgjm3vV+IvpKUrwVsc7kmWZuFtqZRER0vzY
	 dHHIV0UZZO3gjkk+ubh7OI094UsivMzZaCpIf38UtCQ/lCecTNGaJA4exh3r3OZbVo
	 Nufo4Kha6RE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E81ECA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549919357.12617.11208893044509612019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e3cdee6d8ce604730d6cca731924a17e4f76f284321509b3ee4b3c6f08d54b
Date: Mon, 18 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755499193
