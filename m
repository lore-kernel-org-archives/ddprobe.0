Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310E325B682
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747720794; cv=none; b=oGjz+3YM+EjlTNfMoHLBjgEjP73a1cAVNYugeBG1L0NuriqORyBi7IPDCQMv6r3b0nLFhgIm0DNIV0L602gHRIKsrjivyy17t2s0MM6veD4OvM2XNBhDeJW3ln7frBEuAV5di4zpcy0fB7xMJ0uJwec0Vn/vXJArd5eu2BAinHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747720794; c=relaxed/simple;
	bh=YGQGCEkz2K2wC00JGk0Go26reJMbcnEDnlq58DfPcS4=;
	h=To:Subject:From:Message-Id:Date; b=hJhNvoVitesPzsZZuyyAylxNFtKTMlMa8wdfU/i0gcRE1BZkyFFjnY96J6EP3sJ3XO0Pc/oLsD2pE/gCuAEvo3pehwhS92mevHVm4VHcWQwAwjknhmmRE2rCZpFVBnlakQWkiUCJIFeVYutECdDe+jgNvGx8Sy5n5KV4sLtzL0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCWVix84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCWVix84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747720793;
	bh=YGQGCEkz2K2wC00JGk0Go26reJMbcnEDnlq58DfPcS4=;
	h=To:Subject:From:Date:From;
	b=iCWVix84JJxrlPtrNwXjYVaSSzx11NpWfvIMIaDEMLwqSXaJgVnpKl966mzyMtfuL
	 OiH8xOtkfCo4iq8xIr5BNOmqDDIvmk9jyBnPXvRCHnh9lh/K65gwYiqLOY+WFWAaFR
	 epKVjI8qgt+DCgdAVm9AKlH8Wu7CQpcTikHCrtDmn+DL+36jmG4sdVr8Q5DlvgneIj
	 i6QHmUWswb0xHXRheJGI4KOXNhjyR0Xtv11M8QzeBfWo8Zh10zSx0UVF20EQp3r0et
	 regP3P0jXiZHveMc3R2YLpbPGBuCWC5thVvdhPVxtNWx8epUCf40ClyQU8PEDlY4G/
	 msICy+Vxh5cQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F4C3ABDA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772079357.7782.9722795091887102929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca1f92b89c4755f76a312daf4b0382602160cce0ebc4ba208542e39b04a49b5
Date: Tue, 20 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747720793
